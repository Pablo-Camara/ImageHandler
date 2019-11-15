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
	// Tries inserting into the Database
	$database = App::getDatabase();

	$database->insert("imghandler_logs", [
		"extension" => $_POST['extension'],
		"fetch_url" => $_POST['fetch_url'],
		"relative_fetch_url_path" => $_POST['relative_fetch_url_path'],
		"max_width" => $_POST['max_width'],
		"max_height" => $_POST['max_height'],
		"destination_screen_width" => $_POST['screen_width'],
	]);
  
	$res = json_encode([
	  'status' => 1,
	  'message' => 'queued'
	]);

	echo $res;
	die();
  
} catch (Exception $e) { }

$res = json_encode([
  'status' => 0,
  'message' => 'failed'
]);

echo $res;
die();

?>
