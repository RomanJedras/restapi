<?php 

$request = $_SERVER['REQUEST_URI'];
	var_dump($request);
	
	
	if($request == '/rest/read/' || ($request == '/')) {
		require __DIR__ . '/index.php';
	} else if( $request == '/rest/read'){
		 require __DIR__ . '/product/read.php';	
	} else if( $request == '/read_one'){
		 require __DIR__ . '/product/read_one.php';
	} else {
		 require __DIR__ . '/views/404.php';
	}
	
	
		



?>