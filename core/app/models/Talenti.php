<?php

namespace app\models;
/*
** Classi che modellano la struttura del database e le relazioni tra gli oggetti
* hasOne connessione 1 a 1
* hasMany connessione 1 a molti
*/

class Talenti extends \lithium\data\Model {

	protected $_meta = [
		'connection' => 'default',
		'source'     => 'talenti',
	];
}
?>
