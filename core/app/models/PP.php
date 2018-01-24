<?php

namespace app\models;

class PP extends \lithium\data\Model {

	protected $_meta = [
		'connection' => 'default',
		'source'     => 'punti_presenza'
	];

	public $hasOne = [
		'Iscritti' => [
			'to'  => 'app\models\Iscritti',
			'key' => ['id_utente' => 'id']
		]
	];
}
?>
