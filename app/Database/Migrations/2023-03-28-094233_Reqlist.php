<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Reqlist extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'rql_id' => [
                'type'           => 'INT',
                'constraint'     => 5,
                'unsigned'       => true,
                'auto_increment' => true,
            ],
            'req_id' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
            ],
            'prod_id' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
            ],
            'rqr_date' => [
                'type'       => 'DATE',
            ],
            'qty' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
            ],
            'mrp_price' => [
                'type'           => 'FLOAT',
            ],
            'sell_price' => [
                'type'           => 'FLOAT',
            ],
            'created_on' => [
                'type' => 'DATETIME',
            ],
            'updated_on' => [
                'type' => 'DATETIME',
            ],
        ]);
        $this->forge->addKey('rql_id', true);
        $this->forge->createTable('reqlist');
    }

    public function down()
    {
        $this->forge->dropTable('reqlist');
    }
}
