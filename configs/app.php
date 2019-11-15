<?php
require_once '../vendor/php/Medoo.php';
use Medoo\Medoo;
	
class App {
	
	private static $APP_URL = 'http://localhost/imghandler';

	public static function getResizeEndpoint(){
		return self::$APP_URL . '/endpoints/resize.php';
	}
	
	public static function getDownloadsFolder(){
		return '../downloads';
	}
	
	public static function getBackupFolder(){
		return '../downloads/original';
	}
	
	public static function getResizedFolder(){
		return '../downloads/resized';
	}
	
	public static function getDatabase(){
		return new Medoo([
			// required
			'database_type' => 'mysql',
			'database_name' => 'test',
			'server' => 'localhost',// dev mode : 'pc_mysql',
			'username' => 'root',
			'password' => '',

			// [optional]
			'charset' => 'utf8mb4',
			'collation' => 'utf8mb4_general_ci',
			'port' => 3306
		  ]);
	}
	
	public static function feedback($status,$message){
		return json_encode([
			'status' => $status,
			'message' => $message
		]);
	}
	
}