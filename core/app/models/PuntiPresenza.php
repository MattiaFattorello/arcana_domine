<?php

namespace app\models;
/*
** Classi che modellano la struttura del database e le relazioni tra gli oggetti
* hasOne connessione 1 a 1
* hasMany connessione 1 a molti
*/

class PuntiPresenza extends \lithium\data\Model {

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
