<?php

namespace app\models;

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