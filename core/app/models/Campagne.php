<?php

namespace app\models;
/*
** Classi che modellano la struttura del database e le relazioni tra gli oggetti
* hasOne connessione 1 a 1
* hasMany connessione 1 a molti
*/

class Campagne extends \lithium\data\Model {

	protected $_meta = [
		'connection' => 'default',
		'source'     => 'eventi'
	];

	public $hasMany = [
		'Eventi' => [
			'to'  => 'app\models\Eventi',
			'key' => ['id' => 'id_campagna']
		],
		'Pg' => [
			'to'  => 'app\models\Pg',
			'key' => ['id' => 'id_campagna']
		],
		'Cartellini' => [
			'to'  => 'app\models\Cartellini',
			'key' => ['id' => 'id_campagna']
		],
		'PuntiPresenza' => [
			'to'  => 'app\models\PuntiPresenza',
			'key' => ['id' => 'id_campagna']
		],
		'Talenti' => [
			'to'  => 'app\models\Talenti',
			'key' => ['id' => 'id_campagna']
		],
		'Razze' => [
			'to'  => 'app\models\Razze',
			'key' => ['id' => 'id_campagna']
		]
	];
}
?>
