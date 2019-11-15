<?php 
header('Access-Control-Allow-Origin: *');

$testGD = get_extension_funcs("gd"); // Grab function list 
if (!$testGD){ echo "GD not even installed."; exit; }


// The file
$filetype = urldecode($_GET['extension']);
$filename = urldecode($_GET['url']);

$isPng = $filetype === 'png';
$isJpeg = $filetype === 'jpg' || $filetype === 'jpeg';

// Set a maximum height and width
$width = $_GET['max-width'];
$height = $_GET['max-height'];


// Content type
if($isJpeg)
	header('Content-Type: image/jpeg');
elseif($isPng)
	header('Content-Type: image/png');
else
	die('file extension not supported');


// Get new dimensions
list($width_orig, $height_orig) = getimagesize($filename);

if($width > $width_orig){
	$width = $width_orig;
	$height = $height_orig;
}

$ratio_orig = $width_orig/$height_orig;

if ($width/$height > $ratio_orig) {
   $width = $height*$ratio_orig;
} else {
   $height = $width/$ratio_orig;
}

// Resample
$image_p = imagecreatetruecolor($width, $height);


if($isPng){
	imagealphablending($image_p,false);
	imagesavealpha($image_p,true);
	$image = imagecreatefrompng($filename);
}

if($isJpeg){
	$image = imagecreatefromjpeg($filename);
}

imagecopyresampled($image_p, $image, 0, 0, 0, 0, $width, $height, $width_orig, $height_orig);


// Output
if($isJpeg){
	imagejpeg($image_p, null, 100);
}

if($isPng){
	imagepng($image_p, null, 0);
}
