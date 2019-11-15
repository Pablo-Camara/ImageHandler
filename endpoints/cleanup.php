<?php
header('Access-Control-Allow-Origin: *');  
// POST Request or Redirect
if($_SERVER['REQUEST_METHOD'] !== 'POST'){
	header('Location: /');
	die();
}

require_once '../configs/app.php';


session_start();
$debug = true;

if($debug){
  ini_set('display_errors', 1);
  ini_set('display_startup_errors', 1);
  error_reporting(E_ALL);
}

try {
	
	App::getDatabase()->query("TRUNCATE imghandler_logs");
	
	echo 'database cleaned up';
} catch (Exception $e) { }



?>
