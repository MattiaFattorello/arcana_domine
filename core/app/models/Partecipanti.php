<?php

namespace app\models;

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
