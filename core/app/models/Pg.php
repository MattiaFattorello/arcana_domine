<?php

namespace app\models;
/*
** Classi che modellano la struttura del database e le relazioni tra gli oggetti
* hasOne connessione 1 a 1
* hasMany connessione 1 a molti
*/

class Pg extends \lithium\data\Model {

	protected $_meta = [
		'connection' => 'default',
		'source'     => 'personaggi',
		'key'				 => ['id', 'id_campagna']
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
