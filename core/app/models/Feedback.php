<?php

namespace app\models;
/*
** Classi che modellano la struttura del database e le relazioni tra gli oggetti
* hasOne connessione 1 a 1
* hasMany connessione 1 a molti
*/

class feedback extends \lithium\data\Model {

	protected $_meta = [
		'connection' => 'default',
		'source'     => 'feedback'
	];

	public $hasOne = [
		'DomandeFeedback' => [
			'to'  => 'app\models\DomandeFeedback',
			'key' => ['id_domanda' => 'id']
		],
		'Iscritti' => [
			'to'  => 'app\models\Iscritti',
			'key' => ['id_utente' => 'id']
		]
	];
}
?>
