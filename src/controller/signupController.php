<?php

require_once( 'model/user.php' );

/****************************
* ----- LOAD SIGNUP PAGE -----
****************************/

function signupPage() {

  $user     = new stdClass();
  $user->id = isset( $_SESSION['user_id'] ) ? $_SESSION['user_id'] : false;

  if( !$user->id ):
    require('view/signupView.php');
  else:
    require('view/loginView.php');
  endif;

}

/***************************
* ----- SIGNUP FUNCTION -----
***************************/
function signup( $post ) {
    $email = $_POST['email'];
    $username =  $_POST['username'];
    $password =  $_POST['password'];
    $password_confirm = $_POST['password_confirm'];

    // verify if password and password_confirm are matching
      if ($password == $password_confirm)
      {

        // verify if email, username and password are no empty
        if (!empty($_POST['email']) && !empty($_POST['username']) && !empty($_POST['password'])) 
        {
          // create a new user
          $newUser = new User();
          $newUser->setEmail( $email );
          $newUser->setUsername( $username);
          $newUser->setPassword(hash('sha256',$password));
          $newUser->createUser();
          
          $success_msg = "Your account was created";
        
        }else{
            $error_msg = 'You must complete all the fields';
        }
      }
      else 
      {
        $error_msg = 'Passwords are not matching ';
      }
  
  
      require('view/signupView.php');

}

