<?php

namespace app\models;

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