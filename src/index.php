<?php
ini_set('display_errors','on');
error_reporting(E_ALL);


date_default_timezone_set('Europe/Paris');

// on importe tous les controllers
$controllers = scandir('controller');
unset($controllers[0]);
unset($controllers[1]);
foreach($controllers as $controller){
  require_once( 'controller/'.$controller);
}

if (isset($_GET['action'])) {
    switch ($_GET['action']) {
        case 'login':
            if (!empty($_POST)) {
                login($_POST);
            } else {
                loginPage();
            }
            break;

        case 'logout':
            logout();
            break;

        case 'signup':
               
                if ( !empty( $_POST ) ) signup( $_POST );
                  else signupPage();
          
              break;

        case 'contact':
				contact();
				break;

        case 'contactHome':
                    contactHome();
                    break;

        case 'conversation':
            conversationPage();
            break;

        case 'friend':
            friendPage();
            break;
    }
} else {
    $user_id = $_SESSION['user_id'] ?? false;

    if ($user_id) {
        friendPage();
    } else {
        loginPage();
    }
}