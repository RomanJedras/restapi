<?php 


namespace MyApp\databases;


class Databases {
 
 public $conn;
 
 public static $mysql = array(
			"address" => 'localhost',
			"user" => 'root',
			"password" => 'jwEgw0l5ZmBsTRDW',
			"database" => 'product'
		);
 
    // get the database connection
    public function getConnection(){
	
        $this->conn = null;
 
        try{
            $this->conn = new \PDO("mysql:host=" . self::$mysql['address'] . ";dbname=" . self::$mysql['database'], self::$mysql['user'], self::$mysql['password']);
            $this->conn->exec("set names utf8");
			
        }catch(PDOException $exception){
            echo "Connection error: " . $exception->getMessage();
        }
 
        return $this->conn;
    }
 
  
 
}