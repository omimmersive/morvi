<?php

namespace App\Http\Controllers;

use App\Restorant;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Str;
use App\Settings;
use Image;
use Carbon\Carbon;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    /**
     * @param {String} folder
     * @param {Object} laravel_image_resource, the resource
     * @param {Array} versinos
     */
    public function saveImageVersions($folder, $laravel_image_resource, $versions)
    {
        //Make UUID
        $uuid = Str::uuid()->toString();

        //Make the versions
        foreach ($versions as $key => $version) {
            if (isset($version['w']) && isset($version['h'])) {
                $img = Image::make($laravel_image_resource->getRealPath())->fit($version['w'], $version['h']);
                $img->save(public_path($folder).$uuid.'_'.$version['name'].'.'.'jpg');
            } else {
                //Original image
                $laravel_image_resource->move(public_path($folder), $uuid.'_'.$version['name'].'.'.'jpg');
            }
        }

        return $uuid;
    }

    private function withinArea($point, $polygon, $n)
    {
        if ($polygon[0] != $polygon[$n - 1]) {
            $polygon[$n] = $polygon[0];
        }
        $j = 0;
        $oddNodes = false;
        $x = $point->lng;
        $y = $point->lat;
        for ($i = 0; $i < $n; $i++) {
            $j++;
            if ($j == $n) {
                $j = 0;
            }
            if ((($polygon[$i]->lat < $y) && ($polygon[$j]->lat >= $y)) || (($polygon[$j]->lat < $y) && ($polygon[$i]->lat >= $y))) {
                if ($polygon[$i]->lng + ($y - $polygon[$i]->lat) / ($polygon[$j]->lat - $polygon[$i]->lat) * ($polygon[$j]->lng - $polygon[$i]->lng) < $x) {
                    $oddNodes = ! $oddNodes;
                }
            }
        }

        return $oddNodes;
    }

    public function calculateDistance($latitude1, $longitude1, $latitude2, $longitude2, $unit)
    {
        $theta = $longitude1 - $longitude2;
        $distance = (sin(deg2rad($latitude1)) * sin(deg2rad($latitude2))) + (cos(deg2rad($latitude1)) * cos(deg2rad($latitude2)) * cos(deg2rad($theta)));
        $distance = acos($distance);
        $distance = rad2deg($distance);
        $distance = $distance * 60 * 1.1515;
        switch ($unit) {
          case 'Mi':
            break;
          case 'K':
            $distance = $distance * 1.609344;
        }

        return round($distance, 2);
    }

    public function getAccessibleAddresses($restaurant, $addressesRaw)
    {
        $addresses = [];
        $polygon = json_decode(json_encode($restaurant->radius));
        $numItems = $restaurant->radius ? count($restaurant->radius) : 0;

        if ($addressesRaw) {
            foreach ($addressesRaw as $address) {
                $point = json_decode('{"lat": '.$address->lat.', "lng":'.$address->lng.'}');

                if (! array_key_exists($address->id, $addresses)) {
                    $new_obj = (object) [];
                    $new_obj->id = $address->id;
                    $new_obj->address = $address->address;

                    if (! empty($polygon)) {
                        if (isset($polygon[0]) && $this->withinArea($point, $polygon, $numItems)) {
                            $new_obj->inRadius = true;
                        } else {
                            $new_obj->inRadius = false;
                        }
                    } else {
                        $new_obj->inRadius = true;
                    }

                    $distance = floatval(round($this->calculateDistance($address->lat, $address->lng, $restaurant->lat, $restaurant->lng, 'K')));

                    $rangeFound = false;
                    if (config('settings.enable_cost_per_distance')&&config('settings.enable_cost_per_range')) {
                        //Range based pricing

                        //Find the range
                        $ranges = [];

                        //Put the ranges
                        $ranges[0] = explode('-', config('settings.range_one'));
                        $ranges[1] = explode('-', config('settings.range_two'));
                        $ranges[2] = explode('-', config('settings.range_three'));
                        $ranges[3] = explode('-', config('settings.range_four'));
                        $ranges[4] = explode('-', config('settings.range_five'));

                        //Put the prices
                        $ranges[0][2] = floatval(config('settings.range_one_price'));
                        $ranges[1][2] = floatval(config('settings.range_two_price'));
                        $ranges[2][2] = floatval(config('settings.range_three_price'));
                        $ranges[3][2] = floatval(config('settings.range_four_price'));
                        $ranges[4][2] = floatval(config('settings.range_five_price'));

                        
                        //Find the range
                        foreach ($ranges as $key => $range) {
                            if (floatval($range[0]) <= $distance && floatval($range[1]) >= $distance) {
                                $rangeFound = true;
                                $new_obj->range=$range;
                                $new_obj->cost_per_km = floatval($range[2]);
                                $new_obj->cost_total = floatval($range[2]);
                            }
                        }
                        
                    }

                    if (! $rangeFound) {
                        if (config('settings.enable_cost_per_distance') && config('settings.cost_per_kilometer')) {
                            $new_obj->distance = floor($distance);
                            $new_obj->real_cost_m = floatval(config('settings.cost_per_kilometer'));
                            $new_obj->cost_per_km = floor($distance) * floatval(config('settings.cost_per_kilometer'));
                            $new_obj->cost_total = floor($distance)  * floatval(config('settings.cost_per_kilometer'));

                        } else {
                            //Use the static price for delivery
                            $new_obj->cost_per_km = config('global.delivery');
                            $new_obj->cost_total = config('global.delivery');
                        }
                    }

                    $new_obj->rangeFound=$rangeFound;

                    $addresses[$address->id] = (object) $new_obj;
                }
            }
        }

        //dd($addresses);
        return $addresses;
    }

    public function getRestaurant()
    {
        if (! auth()->user()->hasRole('owner')) {
            return null;
        }

        //Get restaurant for currerntly logged in user
        return Restorant::where('user_id', auth()->user()->id)->first();
    }

    public function ownerOnly()
    {
        if (! auth()->user()->hasRole('owner')) {
            abort(403, 'Unauthorized action.');
        }
    }

    public function replace_spec_char($subject) {
        $char_map = array(
            "??" => "-", "??" => "-", "??" => "-", "??" => "-",
            "??" => "A", "??" => "A", "??" => "A", "??" => "A", "??" => "A", "??" => "A", "??" => "A", "??" => "A", "??" => "A", "??" => "A", "??" => "A", "??" => "A", "??" => "A",
            "??" => "B", "??" => "B", "??" => "B",
            "??" => "C", "??" => "C", "??" => "C", "??" => "C", "??" => "C", "??" => "C", "??" => "C", "??" => "C", "??" => "C",
            "??" => "D", "??" => "D", "??" => "D", "??" => "D", "??" => "D",
            "??" => "E", "??" => "E", "??" => "E", "??" => "E", "??" => "E", "??" => "E", "??" => "E", "??" => "E", "??" => "E", "??" => "E", "??" => "E", "??" => "E", "??" => "E",
            "??" => "F", "??" => "F",
            "??" => "G", "??" => "G", "??" => "G", "??" => "G", "??" => "G", "??" => "G", "??" => "G",
            "??" => "H", "??" => "H", "??" => "H", "??" => "H", "??" => "H",
            "I" => "I", "??" => "I", "??" => "I", "??" => "I", "??" => "I", "??" => "I", "??" => "I", "I" => "I", "??" => "I", "??" => "I", "??" => "I", "??" => "I", "??" => "I", "??" => "I", "??" => "I",
            "??" => "J", "??" => "J",
            "??" => "K", "??" => "K", "??" => "K", "??" => "K", "??" => "K",
            "??" => "L", "??" => "L", "??" => "L", "??" => "L", "??" => "L", "??" => "L", "??" => "L",
            "??" => "M", "??" => "M", "??" => "M",
            "??" => "N", "??" => "N", "??" => "N", "??" => "N", "??" => "N", "??" => "N", "??" => "N", "??" => "N", "??" => "N",
            "??" => "O", "??" => "O", "??" => "O", "??" => "O", "??" => "O", "??" => "O", "??" => "O", "??" => "O", "??" => "O", "??" => "O", "??" => "O", "??" => "O",
            "??" => "P", "??" => "P", "??" => "P",
            "??" => "Q",
            "??" => "R", "??" => "R", "??" => "R", "??" => "R", "??" => "R", "??" => "R",
            "??" => "S", "??" => "S", "??" => "S", "??" => "S", "??" => "S", "??" => "S", "??" => "S",
            "??" => "T", "??" => "T", "??" => "T", "??" => "T", "??" => "T", "??" => "T", "??" => "T",
            "??" => "U", "??" => "U", "??" => "U", "??" => "U", "??" => "U", "??" => "U", "??" => "U", "??" => "U", "??" => "U", "??" => "U", "??" => "U", "??" => "U", "??" => "U", "??" => "U", "??" => "U", "??" => "U",
            "??" => "V", "??" => "V",
            "??" => "Y", "??" => "Y", "??" => "Y", "??" => "Y",
            "??" => "Z", "??" => "Z", "??" => "Z", "??" => "Z", "??" => "Z",
            "??" => "a", "??" => "a", "??" => "a", "??" => "a", "??" => "a", "??" => "a", "??" => "a", "??" => "a", "??" => "a", "??" => "a", "??" => "a", "??" => "a", "??" => "a",
            "??" => "b", "??" => "b", "??" => "b",
            "??" => "c", "??" => "c", "??" => "c", "??" => "c", "??" => "c", "??" => "c", "??" => "c", "??" => "c", "??" => "c",
            "??" => "ch", "??" => "ch",
            "??" => "d", "??" => "d", "??" => "d", "??" => "d", "??" => "d",
            "??" => "e", "??" => "e", "??" => "e", "??" => "e", "??" => "e", "??" => "e", "??" => "e", "??" => "e", "??" => "e", "??" => "e", "??" => "e", "??" => "e", "??" => "e",
            "??" => "f", "??" => "f",
            "??" => "g", "??" => "g", "??" => "g", "??" => "g", "??" => "g", "??" => "g", "??" => "g",
            "??" => "h", "??" => "h", "??" => "h", "??" => "h", "??" => "h",
            "i" => "i", "??" => "i", "??" => "i", "??" => "i", "??" => "i", "??" => "i", "??" => "i", "??" => "i", "??" => "i", "??" => "i", "??" => "i", "??" => "i", "??" => "i", "??" => "i", "??" => "i",
            "??" => "j", "??" => "j", "??" => "j", "??" => "j",
            "??" => "k", "??" => "k", "??" => "k", "??" => "k", "??" => "k",
            "??" => "l", "??" => "l", "??" => "l", "??" => "l", "??" => "l", "??" => "l", "??" => "l",
            "??" => "m", "??" => "m", "??" => "m",
            "??" => "n", "??" => "n", "??" => "n", "??" => "n", "??" => "n", "??" => "n", "??" => "n", "??" => "n", "??" => "n",
            "??" => "o", "??" => "o", "??" => "o", "??" => "o", "??" => "o", "??" => "o", "??" => "o", "??" => "o", "??" => "o", "??" => "o", "??" => "o", "??" => "o",
            "??" => "p", "??" => "p", "??" => "p",
            "??" => "q",
            "??" => "r", "??" => "r", "??" => "r", "??" => "r", "??" => "r", "??" => "r",
            "??" => "s", "??" => "s", "??" => "s", "??" => "s", "??" => "s", "??" => "s", "??" => "s",
            "??" => "t", "??" => "t", "??" => "t", "??" => "t", "??" => "t", "??" => "t", "??" => "t",
            "??" => "u", "??" => "u", "??" => "u", "??" => "u", "??" => "u", "??" => "u", "??" => "u", "??" => "u", "??" => "u", "??" => "u", "??" => "u", "??" => "u", "??" => "u", "??" => "u", "??" => "u", "??" => "u",
            "??" => "v", "??" => "v",
            "??" => "y", "??" => "y", "??" => "y", "??" => "y",
            "??" => "z", "??" => "z", "??" => "z", "??" => "z", "??" => "z", "??" => "z",
            "???" => "tm",
            "@" => "at",
            "??" => "ae", "??" => "ae", "??" => "ae", "??" => "ae", "??" => "ae",
            "??" => "ij", "??" => "ij",
            "??" => "ja", "??" => "ja",
            "??" => "je", "??" => "je",
            "??" => "jo", "??" => "jo",
            "??" => "ju", "??" => "ju",
            "??" => "oe", "??" => "oe", "??" => "oe", "??" => "oe",
            "??" => "sch", "??" => "sch",
            "??" => "sh", "??" => "sh",
            "??" => "ss",
            "??" => "ue",
            "??" => "zh", "??" => "zh",
        );
        return strtr($subject, $char_map);
    }

    public function makeAlias($name)
    {
        $name=$this->replace_spec_char($name);
        $name = str_replace(" ", "-", $name);
        return strtolower(preg_replace('/[^A-Za-z0-9-]/', '', $name));
    }

    public function scopeIsWithinMaxDistance($query, $latitude, $longitude, $radius = 25, $table = 'restorants')
    {
        $haversine = "(6371 * acos(cos(radians($latitude))
                        * cos(radians(".$table.'.lat))
                        * cos(radians('.$table.".lng)
                        - radians($longitude))
                        + sin(radians($latitude))
                        * sin(radians(".$table.'.lat))))';

        return $query
           ->select(['name', 'id']) //pick the columns you want here.
           ->selectRaw("{$haversine} AS distance")
           ->whereRaw("{$haversine} < ?", [$radius])
           ->orderBy('distance');
    }

    public function getTimieSlots($vendor)
    {


        $tz=$vendor->getConfig('time_zone',config('app.timezone'));

        //Set config based on restaurant
        config(['app.timezone' => $tz]);

        $businessHours=$vendor->getBusinessHours();
        $now = new \DateTime('now', new \DateTimeZone($tz));
        //dd($now);
        if($businessHours->isClosed()){
            return [];
        }


         //Interval
         $intervalInMinutes = $vendor->getConfig('delivery_interval_in_minutes',config('settings.delivery_interval_in_minutes'));
         //$intervalInMinutes=5;

        $from = Carbon::now()->setTimezone($tz)->diffInMinutes(Carbon::today()->setTimezone($tz)->startOfDay());

        $to = $this->getMinutes($businessHours->nextClose($now)->format('G:i'));

        //dd( $from."   ".$to);

    
        //print_r('now: '.$from);
        //To have clear interval
        $missingInterval = $intervalInMinutes - ($from % $intervalInMinutes); //21

        //dd($missingInterval);
        //print_r('<br />missing: '.$missingInterval);

        //Time to prepare the order in minutes
        $timeToPrepare = $vendor->getConfig('time_to_prepare_order_in_minutes',config('settings.time_to_prepare_order_in_minutes')); //30
        //$timeToPrepare=10;

        //First interval
        $from += $timeToPrepare <= $missingInterval ? $missingInterval : ($intervalInMinutes - (($from + $timeToPrepare) % $intervalInMinutes)) + $timeToPrepare;

        //Enlarge to, since that is not the delivery time
        $to+= $missingInterval+$intervalInMinutes+$timeToPrepare;
        //$to+=2*30;

        $timeElements = [];
        for ($i = $from; $i <= $to; $i += $intervalInMinutes) {
            array_push($timeElements, $i);
        }
        //dd($timeElements);
        //print_r("<br />");
        //print_r($timeElements);

        $slots = [];
        for ($i = 0; $i < count($timeElements) - 1; $i++) {
            array_push($slots, [$timeElements[$i], $timeElements[$i + 1]]);
        }

        //dd($slots);

        //print_r("<br />SLOTS");
        //print_r($slots);

        //INTERVALS TO TIME
        $formatedSlots = [];
        for ($i = 0; $i < count($slots); $i++) {
            $key = $slots[$i][0].'_'.$slots[$i][1];
            $value = $this->minutesToHours($slots[$i][0]).' - '.$this->minutesToHours($slots[$i][1]);
            $formatedSlots[$key] = $value;
            //array_push($formatedSlots,[$key=>$value]);
        }

        return $formatedSlots;
    }

     /*"0_from" => "09:00"
  "0_to" => "20:00"
  "1_from" => "09:00"
  "1_to" => "20:00"
  "2_from" => "09:00"
  "2_to" => "20:00"
  "3_from" => "09:00"
  "3_to" => "20:00"
  "4_from" => "09:00"
  "4_to" => "20:00"
  "5_from" => "09:00"
  "5_to" => "17:00"
  "6_from" => "09:00"
  "6_to" => "17:00"*/

    /*
      "0_from" => "9:00 AM"
    "0_to" => "8:10 PM"
    "1_from" => "9:00 AM"
    "1_to" => "8:00 PM"
    "2_from" => "9:00 AM"
    "2_to" => "8:00 PM"
    "3_from" => "9:00 AM"
    "3_to" => "8:00 PM"
    "4_from" => "9:00 AM"
    "4_to" => "8:00 PM"
    "5_from" => "9:00 AM"
    "5_to" => "5:00 PM"
    "6_from" => "9:00 AM"
    "6_to" => "5:00 PM"
     */

    public function getMinutes($time)
    {
        $parts = explode(':', $time);

        return ((int) $parts[0]) * 60 + (int) $parts[1];
    }

    public function minutesToHours($numMun)
    {
        $h = (int) ($numMun / 60);
        $min = $numMun % 60;
        if ($min < 10) {
            $min = '0'.$min;
        }

        $time = $h.':'.$min;
        if (config('settings.time_format') == 'AM/PM') {
            $time = date('g:i A', strtotime($time));
        }

        return $time;
    }

    public function adminCommission()
    {
        $admincommission = 0;
        $settingData = Settings::where('id', 1)->first('admin_commission');
        if(!empty($settingData))
        {
            $admincommission = $settingData->admin_commission;
        }
        return $admincommission;
    }
}
