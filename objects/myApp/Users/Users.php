<?php
 
// /classes/Users.php
 
 
 
namespace MyApp\Users;
 
 
 
class Users {
 
 
 
  public function MyMethodName()
 
  {
 
    return __METHOD__;
 
  }
 
 
 
  public function MyClassName()
 
  {
 
    return __CLASS__;
 
  }
 
 
 
  public static function SayHello()
 
  {
 
    return 'Hi, I\'m users class: ' . __CLASS__;
 
  }
 
}
 
?>