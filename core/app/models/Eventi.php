<?php

namespace app\models;

class Eventi extends \lithium\data\Model {

	protected $_meta = [
		'connection' => 'default',
		'source'     => 'eventi'
	];

	public $hasMany = [
		'Partecipanti' => [
			'to'  => 'app\models\Partecipanti',
			'key' => ['id' => 'id_evento']
		],
		'DomandeFeedback' => [
			'to'  => 'app\models\DomandeFeedback',
			'key' => ['id' => 'id_evento']
		],
		'Feedback' => [
			'to'  => 'app\models\Feedback',
			'key' => ['id' => 'id_evento']
		]
	];
}
?>
