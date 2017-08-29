<?php

namespace app\models;

class Partecipanti extends \lithium\data\Model {

	protected $_meta = [
        'connection' => 'default',
        'source'     => 'partecipanti'
    ];

    protected $_belongsTo = [
        'Eventi' => [
            'to'  => 'app\model\Eventi',
            'key' => 'id_evento'
        ]
    ];
}
?>