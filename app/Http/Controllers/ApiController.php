<?php

namespace App\Http\Controllers;

use JWTAuth;

use App\Pages;
use App\User;
use App\Advertisement;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Hash;

use Tymon\JWTAuth\Exceptions\JWTException;

use Symfony\Component\HttpFoundation\Response;

use Illuminate\Support\Facades\Validator;

use Illuminate\Support\Facades\DB;

use App\Helpers\Helper;

class ApiController extends Controller
{
    protected $user;
    public function __construct()
    {   
        date_default_timezone_set('Asia/Kolkata');
    }

    /**Registration api */
    public function register(Request $request)
    {
        $data = $request->only('name', 'email', 'phone', 'password', 're_password','place', 'role');
        $validator = Validator::make($data, [
            'name' => 'required|regex:/^[\pL\s\-]+$/u|min:3|max:30',
            'email' => 'required|email|unique:users|max:60',
            'password' => 'required|string|min:6',
            'role' => 'required',
            'place' => 'required',
            're_password' => 'required',
            'phone' => 'required|unique:users'
        ],[
            'email.unique' => "This email is already registered",
            'phone.unique' => "This phone is already registered"
        ]);
        if($request->password != $request->re_password)
        {
            return response()->json(['success'=>false,'message' => 'Password and re password should be same'], 200);
        }
        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        
        $insertData['name']=$request->name;
        $insertData['email']=$request->email;
        $insertData['password']=Hash::make($request->password);
        $insertData['role']= $request->role;
        $insertData['phone']=$request->phone;
        $user = User::create($insertData);
        if($user)
        {
            $resp['id'] = $user->id;
            $resp['name'] = $user->name;
            $resp['email'] = $user->email;
            $resp['phone'] = $user->phone;
            return response()->json([
                    'success' => true,
                    'message' => 'Registration successfully',
                    'data' => $resp
                ], Response::HTTP_OK);
        }
        else
        {
            return response()->json([
                    'success' => false,
                    'message' => 'Data are not stored',
                ], 400);
        }
    }

    public function register_old(Request $request)
    {
        if($request->login_type == 'apple' || $request->login_type == 'google')
        {
            $data = $request->only('login_type','id');
            $validator = Validator::make($data, [
                'id' => 'required',
                'login_type' => 'required|string'
            ]);
        }
        else
        {
            $data = $request->only('name', 'email', 'phone', 'password', 're_password','login_type');
            $validator = Validator::make($data, [
                'name' => 'required|string|min:3|max:30',
                'email' => 'required|email|unique:users',
                'password' => 'required|string|min:6',
                'login_type' => 'required',
                're_password' => 'required',
                'phone' => 'required|unique:users'
            ],[
                'email.unique' => "This email is already registered",
                'phone.unique' => "This phone is already registered"
            ]);
            if($request->password != $request->re_password)
            {
                return response()->json(['success'=>false,'message' => 'Password and re password should be same'], 200);
            }
        }
        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $message = 'User Created Successfully';
        if ($data['login_type']=="app") {            
            $insertData['name']=$request->name;
            $insertData['email']=$request->email;
            $insertData['password']=Hash::make($request->password);
            $insertData['role']=1;
            $insertData['phone']=$request->phone;
            $user = User::create($insertData);
            if($user)
            {
                $resp['id'] = $user->id;
                $resp['name'] = $user->name;
                $resp['email'] = $user->email;
                $resp['phone'] = $user->phone;
                return response()->json([
                        'success' => true,
                        'message' => 'Registration successfully',
                        'data' => $resp
                    ], Response::HTTP_OK);
            }
            else
            {
                return response()->json([
                        'success' => false,
                        'message' => 'Data are not stored',
                    ], 500);
            }
        }elseif ($data['login_type']=="google") {
            $validator = Validator::make($data, [
                'id' => 'required',
            ]);
            if ($validator->fails()) {
                return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
            }

            $previousData = DB::table('users_deleted')->orderBy('id','desc')->where('google_id', $request->id)->first();
            if(!empty($previousData))
            {
                if($previousData->name != '' && $previousData->email != '')
                {
                    $insertData['name'] = $previousData->name;
                    $insertData['email'] = $previousData->email;
                }
            }
            else
            {
                $insertData['name']=$request->name;
                $insertData['email']=$request->email;
            }

            $insertData['google_id'] = $request->id;
            $insertData['password'] = Hash::make('immersive1');
            $insertData['role']=1;
            $error_msg = 'Registration are not created successfully';
            $exUser = User::where(['google_id' => $request->id])->first();
            //$exUser = User::where(['email'=> $insertData['email'], 'google_id' => $request->id])->first();
            if(!empty($exUser))
            {
                $user = $exUser;
                $message = 'User Login Successfully';
                $error_msg = 'User Login Successfully';
            }
            else
            {
                $exUser_ = User::where('email', $insertData['email'])->count();
                if($exUser_ > 0)
                {
                     return response()->json([
        
                            'success' => false,
        
                            'message' => "This email is already registered",
        
                        ], 500);
                }
                else
                {
                    $user = User::create($insertData);
                    $error_msg = 'Registration successfully';
                }
            }
            if($user)
            {
                $resp['id'] = $user->id;
                $resp['name'] = $user->name;
                $resp['email'] = $user->email;
                $resp['phone'] = $user->phone;
                return response()->json([
                        'success' => true,
                        'message' => $error_msg,
                        'data' => $resp
                    ], Response::HTTP_OK);
            }
            else
            {
                return response()->json([
                        'success' => false,
                        'message' => $error_msg,
                    ], 500);
            }
        }elseif ($data['login_type']=="apple") {
            $validator = Validator::make($data, [
                'id' => 'required',
            ]);
            if ($validator->fails()) {
                return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
            }

            $previousData = DB::table('users_deleted')->orderBy('id','desc')->where('apple_id', $request->id)->first();
            if(!empty($previousData))
            {
                if($previousData->name != '' && $previousData->email != '')
                {
                    $insertData['name'] = $previousData->name;
                    $insertData['email'] = $previousData->email;
                }
            }
            else
            {
                $nameArray = explode('@', $request->email);
                if($request->name == '')
                {
                    $insertData['name'] = $nameArray[0];
                }
                else
                {
                    $insertData['name']=$request->name;
                }
                $insertData['email']=$request->email;
            }

            $insertData['apple_id'] = $request->id;
            $insertData['password'] = Hash::make('immersive2');
            $insertData['role']=1;

            $exUser = User::where(['apple_id' => $request->id])->first();
            //$exUser = User::where(['email' => $insertData['email'], 'apple_id' => $request->id])->first();
            if(!empty($exUser))
            {
                $user = $exUser;
                $message = 'User Login Successfully';
            }
            else
            {
                $exUser = User::where('email', $insertData['email'])->count();
                if($exUser > 0)
                {
                     return response()->json([
        
                            'success' => false,
        
                            'message' => "This email is already registered",
        
                        ], 500);
                }
                else
                {
                    $user = User::create($insertData);
                }
            }
            if($user)
            {
                $resp['id'] = $user->id;
                $resp['name'] = $user->name;
                $resp['email'] = $user->email;
                $resp['phone'] = $user->phone;
                return response()->json([
                        'success' => true,
                        'message' => 'Registration successfully',
                        'data' => $resp
                    ], Response::HTTP_OK);
            }
            else
            {
                return response()->json([
                        'success' => false,
                        'message' => 'Data are not stored',
                    ], 500);
            }
        }
    }

    /** Login Api */    
    public function login(Request $request)
    {
        $data = $request->only('email', 'password');

        $validator = Validator::make($data, [
            'email' => 'required|email',
            'password' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $password = Hash::check('password', $request->password);
        $response = User::where(['email' => $request->email, 'password' => $password])->first();
        if(!empty($response)){
            $message = 'Login successfully';
            $resp['id'] = $response->id;
            $resp['name'] = $response->name;
            $resp['email'] = $response->email;
            $resp['phone'] = $response->phone;
            $resp['place'] = $response->place;
            return response()->json([
                'success' => true,
                'message' => $message,
                'data'  => $resp
            ], 200);
        }
        else{
            $message = 'Login credentials are invalid.';
            return response()->json([
                'success' => false,
                'message' => $message,
                'data'  => array()
            ], 400);
        }
    }

    /**User remove Api */
    public function removeUser(Request $request)
    {
        $validator = Validator::make($request->only('token'), [
            'token' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        try {
                $user = JWTAuth::authenticate($request->token);
                $userData = User::select('id','name','google_id','apple_id','email','email_verified_at','password as pas','token','phone','login_type','remember_token as rt','role','active','dob','package_id','package_limit','updated_at','created_at','otp','otp_generation_time','otp_verification','business_info','image','device_id','bc_id','is_deleted')->where('id', $user->id)->first()->toarray();
                $postData = array(
                        'id' => $userData['id'],
                        'name' => $userData['name'],
                        'google_id' => $userData['google_id'],
                        'apple_id' => $userData['apple_id'],
                        'email' => $userData['email'],
                        'email_verified_at' => $userData['email_verified_at'],
                        'password' => $userData['pas'],
                        'token' => $userData['token'],
                        'phone' => $userData['phone'],
                        'login_type' => $userData['login_type'],
                        'remember_token' => $userData['rt'],
                        'role' => $userData['role'],
                        'active' => $userData['active'],
                        'dob' => $userData['dob'],
                        'package_id' => $userData['package_id'],
                        'package_limit' => $userData['package_limit'],
                        'updated_at' => $userData['updated_at'],
                        'created_at' => $userData['created_at'],
                        'otp' => $userData['otp'],
                        'otp_generation_time' => $userData['otp_generation_time'],
                        'otp_verification' => $userData['otp_verification'],
                        'business_info' => $userData['business_info'],
                        'image' => $userData['image'],
                        'device_id' => $userData['device_id'],
                        'bc_id' => $userData['bc_id'],
                        'is_deleted' => $userData['is_deleted']
                    );
                DB::table('users_deleted')->insert($postData);
                User::where('id', $user->id)->delete();
                JWTAuth::invalidate($request->token); 
                return response()->json([
                    'success' => true,
                    'message' => 'User remove successfully!'
                ], 200);
        } catch (JWTException $exception) {
            return response()->json([
                'success' => false,
                'message' => 'Sorry, user cannot be deleted'
            ], Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    /**forgot password Api */
    public function forgotpassword(Request $request)
    {
        $data = $request->only('email');

        //valid credential
        $validator = Validator::make($data, [
            'email' => 'required|email',
        ]);

        //Send failed response if request is not valid
        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }

        //Crean token

        $user = User::where(['email'=>$request->email])->first();

        if ($user) {

            $password['password']= rand(100000,999999);

            $user->password= bcrypt($password['password']);

            $user->bc_id= base64_encode($password['password']);

            $user->save();

            
            $email=$user->email;
            $password['email']=$email;
            $password['user_name']=ucfirst($user->name);
            $html= view('mail.forgot_password',$password);

         
            Helper::send_email($email,'Forgot Password',$html);

            return response()->json([

                'success' => true,

                'message' => "Password Send To Register Email Id",

            ]);

        }else {

            return response()->json([

                'success' => false,

                'message' =>"Please Enter a Valid Mail I'd",

            ], 500);

        }

    }

    /**Logout Api */
    public function logout(Request $request)
    {
        //valid credential
        $validator = Validator::make($request->only('token'), [
            'token' => 'required'
        ]);

        //Send failed response if request is not valid
        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }

        //Request is validated, do logout        
        try {
            JWTAuth::invalidate($request->token);
            return response()->json([
                'success' => true,
                'message' => 'User has been logged out',
                'status'=>200
            ]);
        } catch (JWTException $exception) {
            return response()->json([
                'success' => false,
                'message' => 'Sorry, user cannot be logged out'
            ], Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    /**About us Page */
    public function about_us(Request $request)
    {   
        $about_us = Pages::where(['title'=>'About Morvi'])->first()->toarray();
        $result = [];
        if (!empty($about_us)) {

            $result['id'] =  $about_us['id'];
            $result['title'] =  $about_us['title'];
            $result['content'] =  strip_tags($about_us['content']);

            return response()->json([

                'data' =>$result,

                'success' => true,

                'message' => 'Get about us page successfully.',

                'status'=>200

            ]);

        }else{

            return response()->json([

                'success' => false,

                'message' => 'About Us Page Not Found'

            ]);
        }
    }

    /**Term Condition Page */
    public function term_condition(Request $request)
    {   
        $term_condition = Pages::where(['title'=>'Terms and conditions'])->first()->toarray();

        $result = [];
        if (!empty($term_condition)) {
            $result['id'] =  $term_condition['id'];
            $result['title'] =  $term_condition['title'];
            $result['content'] =  strip_tags($term_condition['content']);

            return response()->json([

                'data' =>$result,

                'success' => true,

                'message' => 'Get term & condition page successfully.',

                'status'=>200

            ]);

        }else{

            return response()->json([

                'success' => false,

                'message' => 'Term & condition page Not Found.',

             ]);
        }                
    }

    /**Privacy Policy Page */
    public function policy(Request $request)
    {   
        $policy = Pages::where(['title'=>'Data Policy'])->first()->toarray();

        $result = [];
        if (!empty($policy)) {

            $result['id'] =  $policy['id'];
            $result['title'] =  $policy['title'];
            $result['content'] =  strip_tags($policy['content']);

            return response()->json([

                'data' =>$result,

                'success' => true,

                'message' => 'Get Privacy policy page successfully.',

                'status'=>200

            ]);

        }else{

            return response()->json([

                'success' => false,

                'message' => 'Get Privacy policy page Not Found.',

            ]);

        }              
    }

    /**
     * Slider
     */
    public function slider(Request $request)
    {
        $validator = Validator::make($request->only('slider_type'), [
            'slider_type' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $result = [];
        $response = Advertisement::where(['position'=>'Main Slider', 'status' => 1])->get();
        if($response){
            foreach ($response as $res) {
                $imageArr = explode(',', $res->image);
                if($imageArr){
                    foreach($imageArr as $r){
                        $data['img'] = 'uploads/advertisement/'.$r;
                        $result[] = $data;
                    }
                }
            }
        }
        if (!empty($result)) {

            return response()->json([
                'data' =>$result,
                'success' => true,
                'message' => 'Main slider list.',
                'status'=>200
            ]);
        }else{
            return response()->json([
                'success' => false,
                'message' => 'Record Not Found.',
            ]);
        }
    }
}