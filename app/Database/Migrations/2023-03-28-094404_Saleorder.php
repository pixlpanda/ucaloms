<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Saleorder extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'so_id' => [
                'type'           => 'INT',
                'constraint'     => 5,
                'unsigned'       => true,
                'auto_increment' => true,
            ],
            'cus_id' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
            ],
            'contact_id' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
            ],
            'saleOrderNumber' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
            ],
            'created_on' => [
                'type' => 'DATETIME',
            ],
            'updated_on' => [
                'type' => 'DATETIME',
            ],
        ]);
        $this->forge->addKey('so_id', true);
        $this->forge->createTable('saleorder');

    }

    public function down()
    {
        $this->forge->dropTable('saleorder');
    }
}
