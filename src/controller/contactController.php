<?php 

//function not sending mail because no mail server aren't configurated
function contact(){

    if(!empty($_POST)){
    $email = $_POST['email'];
    $name = $_POST['name'];
    $message = $_POST['message'];
    
    $error_msg = null;
      
    //form validation, returning $error_msg or $success_msg to the user

    if(empty($email)){
        $error_msg =  "Email can't be empty";
     }
    elseif(empty($name)) {
        $error_msg =  "Please enter your name";
     }
     elseif(empty($message)){
        $error_msg = "The text area can't be empty";
    }
    elseif(!preg_match("/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix", $email)){
        $error_msg = "Email is not valid ";
    }
    else{
        $success_msg = "The email has been sent";
        $_POST['success_msg'] = $success_msg;

    }
    

    $mail = htmlentities(strtolower($email));

    $formcontent="From: $name \n Message: $message";
    $recipient = "contact@discoding.com";
    $subject = "Contact Form";
    $mailheader = "From: $email \r\n";
    $headers  = 'From:'.$name.' <'.$email.'>' . "\r\n";

    //mail()function 
    mail($recipient, $subject, $formcontent, $headers) or die("Error!");

    $_POST['error_msg'] = $error_msg;}
    require('view/contactView.php');
}  
    
?>