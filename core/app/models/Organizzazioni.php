<?php

namespace app\models;

class Organizzazioni extends \lithium\data\Model {

	protected $_meta = [
        'connection' => 'default',
        'source'     => 'organizzazioni',
        'key'        => 'id_org'
    ];
}
?>