<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

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

$action_log = [];


try {
	// Tries getting the images from the Database
	$database = App::getDatabase();
	$resize = isset($_POST['resized']) && $_POST['resized'] == 1;
	
	$conditions = [];
	
	if($resize){
		$conditions["resized_image_path"] = null;
		$action_log['fetch_what'] = 'images_to_resize';
	} else {
		$conditions["original_image_backup_path"] = null;
		$action_log['fetch_what'] = 'images_to_backup';
	}
	
	$action_log['fetch_start'] = date('Y-m-d H:i:s');
	$images_not_yet_downloaded = $database->select("imghandler_logs", [
		"image_id",
		"extension",
		"max_width",
		"max_height",
		"destination_screen_width",
		"fetch_url",
		"relative_fetch_url_path"
	], $conditions);
	
	$action_log['fetch_end'] = date('Y-m-d H:i:s');
	$action_log['images_found'] = count($images_not_yet_downloaded);
	
	if(count($images_not_yet_downloaded) === 0){
		$result_msg = $resize ? 'No images to resize.' : 'No images to backup.';
		$action_log['result'] = App::feedback(0,$result_msg);
		echo json_encode($action_log);
		exit;
	}
	
	$action_log['folders_created'] = [];
	$action_log['files_created'] = [];
	$action_log['database_updates'] = [];
	
	if(!file_exists(App::getDownloadsFolder())){
		 mkdir(App::getDownloadsFolder(), 0777);
		 
		 $action_log['folders_created'][] = App::getDownloadsFolder();
	}
	
	for($i = 0; $i < count($images_not_yet_downloaded); $i++){
		$img = $images_not_yet_downloaded[$i];
		$filePath = $img['relative_fetch_url_path'];
		$imageDownloadFolder = dirname($filePath);
		
		$screenSizeFolder = App::getBackupFolder() . '/' . $img["destination_screen_width"] . '/';
		
		if($resize){
			$screenSizeFolder = App::getResizedFolder() . '/' . $img["destination_screen_width"] . '/';
		} 
		
		
		if(!file_exists($screenSizeFolder)){
			 mkdir($screenSizeFolder, 0777,true);
			 $action_log['folders_created'][] = $screenSizeFolder;
		}
		
		
		if(strpos($filePath,"/",0) === 0){
			$filePath = ltrim($filePath,'/');
		}
		
		if(strpos($imageDownloadFolder,"/",0) === 0){
			$imageDownloadFolder = ltrim($imageDownloadFolder,'/');
		}
			 
		if(!file_exists($screenSizeFolder . $imageDownloadFolder)){
			 mkdir($screenSizeFolder . $imageDownloadFolder, 0777,true);
			 $action_log['folders_created'][] = $screenSizeFolder . $imageDownloadFolder;
		}
		
		$destFile = $screenSizeFolder . $filePath;
		// Get original dimensions
		list($width_orig, $height_orig) = getimagesize($img["fetch_url"]);
		
		if($resize){
			
			// Save resized
			
			$resizeUrl = App::getResizeEndpoint();
			$resizeUrl .= '?extension='.$img['extension'].'&max-width=' . $img['max_width'] . '&max-height=' . $img['max_height'] . '&url=' . urlencode($img["fetch_url"]);
			file_put_contents($destFile, fopen($resizeUrl, 'r'));
			
			$action_log['files_created'][$img['destination_screen_width']][] = [
				'resize_url' => $resizeUrl,
				'saved_at' => $destFile
			];
			
			// Get new dimensions
			list($width_resized, $height_resized) = getimagesize($destFile);
			
			$save_resized_path = $database->update("imghandler_logs", [
				"resized_image_path" => $destFile,
				"original_width" => $width_orig,
				"original_height" => $height_orig,
				"resized_width" => $width_resized,
				"resized_height" => $height_resized,
				"resized_at" => date('Y-m-d H:i:s'),
			], [
				"image_id" => $img["image_id"],
			]);
			
			$action_log['database_updates'][] = [
				'update_date' => date('Y-m-d H:i:s'),
				'affected_rows' => $save_resized_path->rowCount()
			];
		} else {
			
			// Save original 
			
			file_put_contents($destFile, fopen($img["fetch_url"], 'r'));
			
			$action_log['files_created'][] = $destFile;
			
			$save_backup_path = $database->update("imghandler_logs", [
				"original_image_backup_path" => $destFile,
				"original_width" => $width_orig,
				"original_height" => $height_orig,
				"backup_saved_at" => date('Y-m-d H:i:s'),
			], [
				"image_id" => $img["image_id"],
			]);
			
			$action_log['database_updates'][] = [
				'update_date' => date('Y-m-d H:i:s'),
				'affected_rows' => $save_backup_path->rowCount()
			];
			
		}
		
	}
  
} catch (Exception $e) { }

echo json_encode($action_log);
exit;
?>
