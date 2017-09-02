<?php

namespace app\controllers;

class CryptedController extends \lithium\action\Controller {
    private static $key;
    private static $iv;
    private static $encrypt_method;
    private $id = null;
    private $role = null;

    /**
	 * Populates the `$response` property with a new instance of the `Response` class passing it
	 * configuration, and sets some rendering options, depending on the incoming request.
	 *
	 * @return void
	 */
	protected function _init() {
		parent::_init();
        
        $this->getAuth();
    }



    public static function setKeys($key, $iv, $encrypt_method){
        static::$key = $key;
        static::$iv = $iv;
        static::$encrypt_method = $encrypt_method;
    }

    private function getAuth(){
        if(isset($_SERVER['user_id'])){
            $this->id   = openssl_decrypt(base64_decode($_SERVER['user_id']), self::$encrypt_method, self::$key, 0, self::$iv);
        }
        
        if(isset($_SERVER['user_role'])){
            $this->role = openssl_decrypt(base64_decode($_SERVER['user_role']), self::$encrypt_method, self::$key, 0, self::$iv);
        }
        
    }

    protected function getId(){
        return $this->id;
    }

    protected function isUserInRole(array $strings){
        foreach($trings as $role){
            if($role === $this->role){
                return true;
            }
        }

        return false;
    }
    
}    
?>