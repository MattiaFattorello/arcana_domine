<?php

namespace app\models;

class Pg extends \lithium\data\Model {

	protected $_meta = [
		'connection' => 'default',
		'source'     => 'personaggi'
	];

	public $hasMany = [
		'TalentiPg' => [
			'to'  => 'app\models\TalentiPg',
			'key' => 'id_pg'
		]
	];

	public $hasOne = [
		'Razze' => [
			'to'  => 'app\models\Razze',
			'key' => ['razza' => 'id']
		],
		'Religioni' => [
			'to'  => 'app\models\Religioni',
			'key' => ['religione' => 'id']
		],
		'Organizzazioni' => [
			'to'  => 'app\models\Organizzazioni',
			'key' => ['organizzazione' => 'id']
		],
		'Iscritti' => [
			'to'  => 'app\models\Iscritti',
			'key' => ['id_utente' => 'id']
		]
	];
}
?>
