<?php

namespace app\models;
/*
** Classi che modellano la struttura del database e le relazioni tra gli oggetti
* hasOne connessione 1 a 1
* hasMany connessione 1 a molti
*/

class Iscritti extends \lithium\data\Model {

	protected $_meta = [
		'connection' => 'default',
		'source'     => 'iscritti'
	];

	public $hasMany = [
		'Pg' => [
			'to'  => 'app\models\Pg',
			'key' => ['id' => 'id_utente']
		],
		'Partecipanti' => [
			'to'  => 'app\models\Partecipanti',
			'key' => ['id' => 'id_utente']
		],
		'PP' => [
			'to'  => 'app\models\PuntiPresenza',
			'key' => ['id' => 'id_utente']
		]
	];
}
?>
