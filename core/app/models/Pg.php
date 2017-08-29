<?php

namespace app\models;

class Pg extends \lithium\data\Model {

	protected $_meta = [
        'connection' => 'default',
        'source'     => 'personaggi'
    ];

    public $hasMany = [
        'TalentiPg' => [
            'to'  => 'app\models\TalentiPg',
            'key' => 'id_pg'
        ]
    ];

    public $hasOne = [
        'Razze',
        'Religioni',
        'Organizzazioni',
        'Iscritti'
    ];
}
?>