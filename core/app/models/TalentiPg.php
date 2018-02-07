<?php

namespace app\models;
/*
** Classi che modellano la struttura del database e le relazioni tra gli oggetti
* hasOne connessione 1 a 1
* hasMany connessione 1 a molti
*/

class TalentiPg extends \lithium\data\Model {

	protected $_meta = [
		'connection' => 'default',
		'source'     => 'talenti_pg',
		'key'        => ['id_pg', 'id_talento']
	];

	public $hasOne = [
		'Talenti' => [
			'to'  => 'app\models\Talenti',
			'key' => ['id_talento' => 'id']
		],
		'Pg' => [
			'to'  => 'app\models\Pg',
			'key' => ['id_pg' => 'id']
		]
	];
}
?>
