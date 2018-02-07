<?php

namespace app\models;
/*
** Classi che modellano la struttura del database e le relazioni tra gli oggetti
* hasOne connessione 1 a 1
* hasMany connessione 1 a molti
*/

class RichiestaTalenti extends \lithium\data\Model {

	protected $_meta = [
		'connection' => 'default',
		'source'     => 'richiesta_talenti'
	];

	public $hasOne = [
		'Pg' => [
			'to'  => 'app\models\Pg',
			'key' => ['id_pg' => 'id']
		],
		'Iscritti' => [
			'to'  => 'app\models\Iscritti',
			'key' => ['id_utente' => 'id']
		],
		'Talenti' => [
			'to'  => 'app\models\Talenti',
			'key' => ['id_talento' => 'id']
		]
	];
}
?>
