<?php
/*
 * File per gestione delle chiavi openssl
 *
 */

use app\controllers\CryptedController;

$secret_key     = 'This is my secret key';
$secret_iv      = 'This is my secret iv'; //max length 16 char
$encrypt_method = "AES-256-CBC";


 // hash
$key = hash('sha256', $secret_key);

// iv - encrypt method AES-256-CBC expects 16 bytes - else you will get a warning
$iv = substr(hash('sha256', $secret_iv), 0, 16);

CryptedController::setKeys($key, $iv, $encrypt_method);

?>
