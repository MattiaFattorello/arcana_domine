<?php

namespace app\models;

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