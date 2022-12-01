<?php

namespace App\Http\Controllers;

use JWTAuth;

use App\Pages;

use App\User;

use App\Exam;
use App\Book;
use App\InShort;
use App\Coaching;
use App\ExamDate;
use App\Favorite;
use App\Transaction;
use App\CoachingNote;
use App\Advertisement;
use App\CoachingSubject;
use App\CurrentAffairQuesAns;

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
        $data = $request->only('email', 'password','login_type','id');

        //CHECK LOGIN TYPE
        if ($data['login_type']=="apple") {
            //valid credential
            $validator = Validator::make($data, [
                'id' => 'required',
            ]);
        }elseif ($data['login_type']=="google") {
            //valid credential
            $validator = Validator::make($data, [
                'id' => 'required',
            ]);
        }else{
            //valid credential
            $validator = Validator::make($data, [
                'email' => 'required|email',
                'password' => 'required',
                'login_type' => 'required'
            ]);
        }

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $message = 'User Login Successfully';
        if ($data['login_type']=="app") {
            $password = Hash::check('password', $request->password);
            $response = User::where(['email' => $request->email, 'password' => $password, 'role' => 1])->first();
            if($response){
                $message = 'Login successfully';
            }
            else{
                $message = 'Login credentials are invalid.';
            }
        }
        elseif ($data['login_type']=="google")
        {
            $response = User::where(['google_id'=>$data['id']])->first();
            if ($response!="") {
                $message = 'Login successfully';
            }
            else{
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
                $exUser = User::where('email', $insertData['email'])->count();
                if($exUser > 0)
                {
                    $message = 'This email is already registered';
                }
                else
                {
                    $user = User::create($insertData);
                    $response = User::where(['google_id' => $request->id])->first();
                    $message = 'Registration successfully';
                }
            }
        }
        elseif ($data['login_type']=="apple"){
            $response = User::where(['apple_id'=>$data['id']])->first();
            if ($response!="") {
                $message = 'Login successfully';
            }
            else{
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
                $exUser = User::where('email', $insertData['email'])->count();
                if($exUser > 0)
                {
                    $message = 'This email is already registered';
                }
                else
                {
                    $user = User::create($insertData);
                    $response = User::where(['apple_id' => $request->id])->first();
                    $message = 'Registration successfully';
                }
            }
        }
        
        if($response)
        {
            $resp['id'] = $response->id;
            $resp['name'] = $response->name;
            $resp['email'] = $response->email;
            $resp['phone'] = $response->phone;
            return response()->json([
                'success' => true,
                'message' => $message,
                'data'  => $resp
            ], 200);
        }
        else
        {
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
        $about_us = Pages::where(['title'=>'About Us'])->first()->toarray();
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
        $policy = Pages::where(['title'=>'Privacy Policy'])->first()->toarray();

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

    /** Exam List */
    public function examList(Request $request)
    {   
        $response = Exam::where(['status' => 1])->orderBy('id', 'desc')->get();
        $result = [];
        if($response){
            foreach($response as $res){
                $img = 'uploads/no-image.png';
                if($res->icon != ''){
                    $img = 'uploads/exams/'.$res->icon;
                }
                $data['id'] = $res->id;
                $data['name'] = $res->name;
                $data['exam_type'] = $res->exam_type;
                $data['description'] = strip_tags($res->description);
                $data['overview'] = $res->overview;
                $data['icon'] = $img;

                $result[] = $data;
            }
        }
        if (!empty($result)) {

            return response()->json([

                'data' =>$result,

                'success' => true,

                'message' => 'Get exam list successfully.',

                'status'=>200

            ]);

        }else{

            return response()->json([

                'success' => false,

                'message' => 'Exam not found.',

            ]);

        }              
    }

    /** Coaching List */
    public function coachingList(Request $request)
    {   
        $response = Coaching::where(['status' => 1])->orderBy('id', 'desc')->get();
        $result = [];
        if($response){
            foreach($response as $res){
                $img = 'uploads/no-image.png';
                if($res->logo != ''){
                    $img = 'uploads/coaching/'.$res->logo;
                }
                $data['id'] = $res->id;
                $data['coaching_name'] = $res->coaching_name;
                $data['contact_number'] = $res->contact_number;
                $data['email'] = $res->email;
                $data['description'] = strip_tags($res->description);
                $data['logo'] = $img;

                $result[] = $data;
            }
        }
        if (!empty($result)) {

            return response()->json([

                'data' =>$result,

                'success' => true,

                'message' => 'Coaching list successfully.',

                'status'=>200

            ]);

        }else{

            return response()->json([

                'success' => false,

                'message' => 'Coaching not found.',

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

    /**
     * Coaching subject
     */
    public function subject(Request $request)
    {
        $validator = Validator::make($request->only('coaching_id'), [
            'coaching_id' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $response = CoachingSubject::where(['status' => 1, 'coaching_id' => $request->coaching_id])->orderBy('id', 'desc')->get();
        $result = [];
        if($response){
            foreach($response as $res){
                $img = 'uploads/no-image.png';
                if($res->icon != ''){
                    $img = 'uploads/subject/'.$res->icon;
                }
                $data['id'] = $res->id;
                $data['subject_name'] = $res->subject_name;
                $data['description'] = strip_tags($res->description);
                $data['icon'] = $img;

                $result[] = $data;
            }
        }
        if (!empty($result)) {

            return response()->json([

                'data' =>$result,

                'success' => true,

                'message' => 'Subject list successfully.',

                'status'=>200

            ]);

        }else{

            return response()->json([

                'success' => false,

                'message' => 'Subject not found.',

            ]);
        }
    }

    /** Book List */
    public function bookList(Request $request)
    {   
        $response = Book::where(['status' => 1])->orderBy('id', 'desc')->get();
        $result = [];
        if($response){
            foreach($response as $res){
                $img = 'uploads/no-image.png';
                if($res->image != ''){
                    $img = 'uploads/books/'.$res->image;
                }
                $sample_book_upload = '';
                if($res->sample_book_upload != ''){
                    $sample_book_upload = 'uploads/books/'.$res->sample_book_upload;
                }
                $main_book_upload = '';
                if($res->main_book_upload != ''){
                    $main_book_upload = 'uploads/books/'.$res->main_book_upload;
                }
                $data['id'] = $res->id;
                $data['book_name'] = $res->book_name;
                $data['book_type'] = $res->book_type;
                $data['exam_type_book'] = $res->exam_type_book;
                $data['heading'] = $res->heading;
                $data['description'] = strip_tags($res->description);
                $data['selling_price'] = $res->selling_price;
                $data['sample_book'] = $sample_book_upload;
                $data['main_book'] = $main_book_upload;
                $data['image'] = $img;

                $result[] = $data;
            }
        }
        if (!empty($result)) {

            return response()->json([

                'data' =>$result,

                'success' => true,

                'message' => 'Books list successfully.',

                'status'=>200

            ]);

        }else{

            return response()->json([

                'success' => false,

                'message' => 'Book not found.',

            ]);
        } 
    }
    /** Book Details */
    public function bookDetails(Request $request)
    {   
        $validator = Validator::make($request->only('book_id'), [
            'book_id' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $response = Book::where(['status' => 1, 'id' => $request->book_id])->orderBy('id', 'desc')->get();
        $result = [];
        if($response){
            foreach($response as $res){
                $img = 'uploads/no-image.png';
                if($res->image != ''){
                    $img = 'uploads/books/'.$res->image;
                }
                $sample_book_upload = '';
                if($res->sample_book_upload != ''){
                    $sample_book_upload = 'uploads/books/'.$res->sample_book_upload;
                }
                $main_book_upload = '';
                if($res->main_book_upload != ''){
                    $main_book_upload = 'uploads/books/'.$res->main_book_upload;
                }
                $data['id'] = $res->id;
                $data['book_name'] = $res->book_name;
                if($res->publisher_id > 0){
                    $data['publisher'] = $res->publisher->publisher_name;
                }
                else{
                    $data['publisher'] = '';
                }
                $data['book_type'] = $res->book_type;
                $data['exam_type_book'] = $res->exam_type_book;
                $data['heading'] = $res->heading;
                $data['description'] = strip_tags($res->description);
                $data['selling_price'] = $res->selling_price;
                $data['sample_book'] = $sample_book_upload;
                $data['main_book'] = $main_book_upload;
                $data['image'] = $img;

                $result[] = $data;
            }
        }
        if (!empty($result)) {

            return response()->json([

                'data' =>$result,

                'success' => true,

                'message' => 'Books details successfully.',

                'status'=>200

            ]);

        }else{

            return response()->json([

                'success' => false,

                'message' => 'Book not found.',

            ]);
        } 
    }

    /**
     * @function: Exam Coaching List
     */
    public function examCoachingList(Request $request)
    {
        $validator = Validator::make($request->only('exam_id'), [
            'exam_id' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $response = Coaching::select('coachings.id', 'coachings.coaching_name', 'coachings.contact_number', 'coachings.email', 'coachings.description', 'coachings.logo')
                    ->join('exams_coaching','exams_coaching.coaching_id','=','coachings.id')
                    ->where('exams_coaching.exam_id', $request->exam_id)
                    ->where('coachings.status', 1)
                    ->orderBy('id', 'desc')->get();
        $result = [];
        if($response){
            foreach($response as $res){
                $img = 'uploads/no-image.png';
                if($res->logo != ''){
                    $img = 'uploads/coaching/'.$res->logo;
                }
                $data['id'] = $res->id;
                $data['coaching_name'] = $res->coaching_name;
                $data['contact_number'] = $res->contact_number;
                $data['email'] = $res->email;
                $data['description'] = strip_tags($res->description);
                $data['logo'] = $img;

                $result[] = $data;
            }
        }
        if (!empty($result)) {

            return response()->json([

                'data' =>$result,

                'success' => true,

                'message' => 'Coaching list successfully.',

                'status'=>200

            ]);

        }else{

            return response()->json([

                'success' => false,

                'message' => 'Coaching not found.',

            ]);
        }
    }

    /**
     * Coaching subject
     */
    public function examBookList(Request $request)
    {
        $validator = Validator::make($request->only('exam_id'), [
            'exam_id' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $response = Book::where(['status' => 1, 'exam_id' => $request->exam_id])->orderBy('id', 'desc')->get();
        $result = [];
        if($response){
            foreach($response as $res){
                $img = 'uploads/no-image.png';
                if($res->image != ''){
                    $img = 'uploads/books/'.$res->image;
                }
                $sample_book_upload = '';
                if($res->sample_book_upload != ''){
                    $sample_book_upload = 'uploads/books/'.$res->sample_book_upload;
                }
                $main_book_upload = '';
                if($res->main_book_upload != ''){
                    $main_book_upload = 'uploads/books/'.$res->main_book_upload;
                }
                $data['id'] = $res->id;
                $data['book_name'] = $res->book_name;
                $data['book_type'] = $res->book_type;
                $data['exam_type_book'] = $res->exam_type_book;
                $data['heading'] = $res->heading;
                $data['description'] = strip_tags($res->description);
                $data['selling_price'] = $res->selling_price;
                $data['sample_book'] = $sample_book_upload;
                $data['main_book'] = $main_book_upload;
                $data['image'] = $img;

                $result[] = $data;
            }
        }
        if (!empty($result)) {

            return response()->json([

                'data' =>$result,

                'success' => true,

                'message' => 'Books list successfully.',

                'status'=>200

            ]);

        }else{

            return response()->json([

                'success' => false,

                'message' => 'Book not found.',

            ]);
        }
    }

    /**
     * @function: Exam overview 
     */
    public function examOverview(Request $request)
    {   
        $validator = Validator::make($request->only('exam_id'), [
            'exam_id' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $overview = Exam::select('id', 'overview')->where(['id' => $request->exam_id])->first()->toarray();

        $result = [];
        if (!empty($overview)) {
            $result['id'] = $overview['id'];
            $result['overview'] = strip_tags($overview['overview']);

            return response()->json([

                'data' =>$result,

                'success' => true,

                'message' => 'Exam overview',

                'status'=>200

            ]);

        }else{

            return response()->json([

                'success' => false,

                'message' => 'Record not found.',

             ]);
        }                
    }

    /**
     * @function: Exam syllabus
     */
    public function examSyllabus(Request $request)
    {   
        $validator = Validator::make($request->only('exam_id'), [
            'exam_id' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $syllabus = Exam::select('id', 'syllabus')->where(['id' => $request->exam_id])->first()->toarray();
        $result = [];
        if (!empty($syllabus)) {
            $result['id'] = $syllabus['id'];
            $result['syllabus'] = strip_tags($syllabus['syllabus']);

            return response()->json([

                'data' =>$result,

                'success' => true,

                'message' => 'Exam syllabus',

                'status'=>200

            ]);

        }else{

            return response()->json([

                'success' => false,

                'message' => 'Record not found.',

             ]);
        }                
    }

    /**
     * @function: Exam Dates
     */
    public function examDates(Request $request)
    {   
        $validator = Validator::make($request->only('exam_id'), [
            'exam_id' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $syllabus = ExamDate::select('id', 'exam_date', 'exam_title')->where(['exam_id' => $request->exam_id])->get()->toarray();

        if (!empty($syllabus)) {

            return response()->json([

                'data' =>$syllabus,

                'success' => true,

                'message' => 'Exam dates',

                'status'=>200

            ]);

        }else{

            return response()->json([

                'success' => false,

                'message' => 'Record not found.',

             ]);
        }                
    }

    /**
     * @function: News list InShort
     */
    public function news(Request $request){
        $validator = Validator::make($request->only('news_date', 'language'), [
            'news_date' => 'required',
            'language' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $calender_date = date('Ymd', strtotime($request->news_date));
        $response = InShort::where(['status' => 1, 'calender_date' => $calender_date, 'short_language' => $request->language])->orderBy('id', 'desc')->get();
        $result = [];
        if($response){
            foreach($response as $res){
                $img = 'uploads/no-image.png';
                if($res->image != ''){
                    $img = 'uploads/inShort/'.$res->image;
                }
                $data['id'] = $res->id;
                $data['title'] = $res->inShort_title;
                $data['description'] = strip_tags($res->description);
                $data['image'] = $img;

                $result[] = $data;
            }
        }
        if (!empty($result)) {

            return response()->json([

                'data' =>$result,

                'success' => true,

                'message' => 'News list successfully.',

                'status'=>200

            ]);

        }else{

            return response()->json([

                'success' => false,

                'message' => 'News not found.',

            ]);
        }
    }

    /**
     * @function: Quiz list Current affairs
     */
    public function quiz(Request $request){
        $validator = Validator::make($request->only('quiz_date', 'language'), [
            'quiz_date' => 'required',
            'language' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $calender_date = date('Ymd', strtotime($request->quiz_date));
        $response = CurrentAffairQuesAns::where(['status' => 1, 'calender_date' => $calender_date, 'question_language' => $request->language])->orderBy('id', 'desc')->get();
        $result = [];
        if($response){
            foreach($response as $res){
                $data['id'] = $res->id;
                $data['question'] = strip_tags($res->question);
                $data['option_1'] = strip_tags($res->option_1);
                $data['option_2'] = strip_tags($res->option_2);
                $data['option_3'] = strip_tags($res->option_3);
                $data['option_4'] = strip_tags($res->option_4);
                $data['answer']     = 'option_'.$res->answer;

                $result[] = $data;
            }
        }
        if (!empty($result)) {

            return response()->json([

                'data' =>$result,

                'success' => true,

                'message' => 'Quiz list successfully.',

                'status'=>200

            ]);

        }else{

            return response()->json([

                'success' => false,

                'message' => 'Quiz not found.',

            ]);
        }
    }

    /**
     * Slider
     */
    public function advertisement(Request $request)
    {
        $result = [];
        $response = Advertisement::where(['position'=>'Main Slider', 'status' => 1, 'coaching_id' => 0])->get();
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

    /**
     * Coaching Slider
     */
    public function coachingSlider(Request $request)
    {
        $validator = Validator::make($request->only('coaching_id'), [
            'coaching_id' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $result = [];
        $response = Advertisement::where(['position'=>'Main Slider', 'status' => 1, 'coaching_id' => $request->coaching_id])->get();
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

    /**
     * Coaching Notes
     */
    public function coachingNotes(Request $request)
    {
        $validator = Validator::make($request->only('coaching_id', 'subject_id'), [
            'coaching_id' => 'required',
            'subject_id' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $result = [];
        $response = CoachingNote::select('id','title_of_notes', 'note_type', 'image', 'exam_type')->where(['coaching_id' => $request->coaching_id, 'subject_id' => $request->subject_id])->get();
        if($response){
            foreach ($response as $res) {
                $img = 'uploads/no-image.png';
                if($res->image != ''){
                    $img = 'uploads/notes/'.$res->image;
                }
                $data['id'] = $res->id;
                $data['title'] = $res->title_of_notes;
                $data['note_type'] = $res->note_type;
                $data['exam_type'] = $res->exam_type;
                $data['image'] = $img;

                $result[] = $data;
            }
        }
        if (!empty($result)) {

            return response()->json([
                'data' =>$result,
                'success' => true,
                'message' => 'Coaching notes list.',
                'status'=>200
            ]);
        }else{
            return response()->json([
                'success' => false,
                'message' => 'Record Not Found.',
            ]);
        }
    }

    /**
     * Coaching Notes Details
     */
    public function noteDetails(Request $request)
    {
        $validator = Validator::make($request->only('note_id'), [
            'note_id' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $result = [];
        $response = CoachingNote::select('id','title_of_notes', 'note_type', 'image', 'exam_type', 'heading', 'description', 'selling_price', 'sample_note', 'main_note', 'updated_at')->where(['id' => $request->note_id])->get();
        if($response){
            foreach ($response as $res) {
                $img = 'uploads/no-image.png';
                if($res->image != ''){
                    $img = 'uploads/notes/'.$res->image;
                }
                $sample_note = "";
                if($res->sample_note != ''){
                    $sample_note = 'uploads/notes/'.$res->sample_note;
                }
                $main_note = '';
                if($res->main_note != ''){
                    $main_note = 'uploads/notes/'.$res->main_note;
                }
                $data['id'] = $res->id;
                $data['title'] = $res->title_of_notes;
                $data['note_type'] = $res->note_type;
                $data['exam_type'] = $res->exam_type;
                $data['heading'] = $res->heading;
                $data['description'] = $res->description;
                $data['selling_price'] = $res->selling_price;
                $data['sample_note'] = $sample_note;
                $data['main_note'] = $main_note;
                $data['image'] = $img;

                $result[] = $data;
            }
        }
        if (!empty($result)) {

            return response()->json([
                'data' =>$result,
                'success' => true,
                'message' => 'Note details.',
                'status'=>200
            ]);
        }else{
            return response()->json([
                'success' => false,
                'message' => 'Record Not Found.',
            ]);
        }
    }

    /**
     * Buy Now
     */
    public function buyNow(Request $request)
    {
        $validator = Validator::make($request->only('user_id', 'transaction_id', 'item_id', 'item_type', 'item_price', 'payment_status'), [
            'user_id' => 'required',
            'transaction_id' => 'required',
            'item_id' => 'required',
            'item_type' => 'required',
            'item_price' => 'required',
            'payment_status' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $response = [];
        $transaction = new Transaction;
        $transaction->user_id           = $request->user_id;
        $transaction->transaction_id    = $request->transaction_id;
        $transaction->item_id           = $request->item_id;
        $transaction->item_type         = $request->item_type;
        $transaction->item_price        = $request->item_price;
        $transaction->status        = 1;
        $transaction->payment_status    = $request->payment_status;
        $transaction->save();
        if (!empty($transaction->id)) {
            $response['order_id'] = $transaction->id;
            return response()->json([
                'data' =>$response,
                'success' => true,
                'message' => 'Order created successfully.',
                'status'=>200
            ]);
        }else{
            return response()->json([
                'success' => false,
                'message' => 'Record Not Found.',
            ]);
        }
    }

    /**
     * Add favorite
     */
    public function addFavorite(Request $request)
    {
        $validator = Validator::make($request->only('user_id', 'item_id', 'item_type'), [
            'user_id' => 'required',
            'item_id' => 'required',
            'item_type' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $response = [];
        $favorite = new Favorite;
        $favorite->user_id           = $request->user_id;
        $favorite->item_id           = $request->item_id;
        $favorite->item_type         = $request->item_type;
        $favorite->status            = 1;
        $favorite->save();
        if (!empty($favorite->id)) {
            $response['order_id'] = $favorite->id;
            return response()->json([
                'data' =>$response,
                'success' => true,
                'message' => 'Add favorite successfully',
                'status'=>200
            ]);
        }else{
            return response()->json([
                'success' => false,
                'message' => 'Record Not Found.',
            ]);
        }
    }

    /**
     * Remove favorite
     */
    public function removeFavorite(Request $request)
    {
        $validator = Validator::make($request->only('user_id', 'item_id', 'item_type'), [
            'user_id' => 'required',
            'item_id' => 'required',
            'item_type' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success'=>false,'message' => $validator->messages()->first()], 200);
        }
        $affected = Favorite::where(['user_id' => $request->user_id, 'item_id' => $request->item_id, 'item_type' => $request->item_type])->delete();
        if ($affected) {
            return response()->json([
                'success' => true,
                'message' => 'Remove from favorite successfully',
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