<?php 

// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Credentials: true");
header('Content-Type: application/json');
 
// include database and object files
include_once("core/main/autoload.php");
 
// get database connection
$database = new \myApp\databases\Databases();
$db = $database->getConnection();
 
// initialize object
$product = new \myApp\product\Product($db);
 // query products
$stmt = $product->read();
$num = $stmt->rowCount();
 
// set ID property of record to read
$product->id = isset($_GET['id']) ? $_GET['id'] : die();
 
// read the details of product to be edited
$product->readOne();
 
if($product->name!=null){
    // create array
    $product_arr = array(
        "id" =>  $product->id,
        "name" => $product->name,
        "description" => $product->description,
        "price" => $product->price,
		"stock" => $product->stock,
		"language_id" => $product->language_id,
		"language_name" => $product->language_name,
        "category_id" => $product->category_id,
		"category_name" => $product->category_name
		);
 
    // set response code - 200 OK
    http_response_code(200);
 
    // make it json format
    echo json_encode($product_arr);
}
 
else{
    // set response code - 404 Not found
    http_response_code(404);
 
    // tell the user product does not exist
    echo json_encode(array("message" => "Product does not exist."));
}
?>