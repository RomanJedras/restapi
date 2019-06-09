<?php
class Database{
 
   
    public $conn;
 
    // get the database connection
    public function getConnection(){
		include_once 'configs.php';
        $this->conn = null;
 
        try{
            $this->conn = new PDO("mysql:host=" . $mysql['address'] . ";dbname=" . $mysql['database'], $mysql['user'], $mysql['password']);
            $this->conn->exec("set names utf8");
        }catch(PDOException $exception){
            echo "Connection error: " . $exception->getMessage();
        }
 
        return $this->conn;
    }
}
?>