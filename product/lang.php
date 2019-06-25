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
// set lang property of record to read
$product->lang = isset($_GET['lg']) ? $_GET['lg'] : die();

// read the details of product to be edited
$stmt = $product->getProductLang();
$num = $stmt->rowCount();


    // create array
	
	if($num>0){
	  // products array
    $products_arr= [];
    $products_arr["records"]= [];
	
	    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        // extract row
        // this will make $row['name'] to
        // just $name only
        extract($row);
	
        $product_item=array(
            "id" => $id,
            "name" => $name,
            "description" => html_entity_decode($description),
            "price" => $price,
			"stock" => $stock,
            "category_id" => $category_id,
            "category_name" => $category_name,
			"language_name"=>$language_name,
			"language_id"=>$language_id
        );
		
        array_push($products_arr["records"], $product_item);
		
		
    }

   
	  // set response code - 200 OK
    http_response_code(200);
 
    // show products data in json format
    echo json_encode($products_arr);
 
   
}
 
else{
    // set response code - 404 Not found
    http_response_code(404);
 
    // tell the user product does not exist
    echo json_encode(array("message" => "Product does not exist."));
}
?>