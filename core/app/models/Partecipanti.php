<?php

namespace app\models;
/*
** Classi che modellano la struttura del database e le relazioni tra gli oggetti
* hasOne connessione 1 a 1
* hasMany connessione 1 a molti
*/

class Partecipanti extends \lithium\data\Model {

	protected $_meta = [
		'connection' => 'default',
		'source'     => 'partecipanti'
	];

	protected $hasOne = [
		'Eventi' => [
			'to'  => 'app\model\Eventi',
			'key' => 'id_evento'
		],
		'AzioniEconomiche' => [
			'to'  => 'app\models\AzioniEconomiche',
			'key' => ['id_azione' => 'id']
			]
		];
	}
	?>
