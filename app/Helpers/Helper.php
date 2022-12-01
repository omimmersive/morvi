<?php 
namespace App\Helpers;

use App\User;

class Helper
{

    /* Send Email */
    public static function send_email($email,$subject,$message)
    {   

        $params = array(

            'to'        => $email,   

            'subject'   => $subject,

            'html'      => $message,

            'from'      => 'info@immersiveinfotech.com',
            
            'fromname'=>'NDN'

        );

        $request =  'https://api.sendgrid.com/api/mail.send.json';

        $headr = array();

        // $pass = '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';

        // $pass = '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';

        // $pass = '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';
        $pass = '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';

        // set authorization header

        $headr[] = 'Authorization: Bearer '.$pass;
    
        $session = curl_init($request);

        curl_setopt ($session, CURLOPT_POST, true);

        curl_setopt ($session, CURLOPT_POSTFIELDS, $params);

        curl_setopt($session, CURLOPT_HEADER, false);

        curl_setopt($session, CURLOPT_RETURNTRANSFER, true);

        // add authorization header

        curl_setopt($session, CURLOPT_HTTPHEADER,$headr);

        $response = curl_exec($session);

        curl_close($session);

        return true;

    }

}

