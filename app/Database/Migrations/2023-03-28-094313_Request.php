<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Request extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'req_id' => [
                'type'           => 'INT',
                'constraint'     => 5,
                'unsigned'       => true,
                'auto_increment' => true,
            ],
            'comp_id' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
            ],
            'org_id' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
            ],
            'user_id' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
            ],
            'status' => [
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
        $this->forge->addKey('req_id', true);
        $this->forge->createTable('request');
    }

    public function down()
    {
        $this->forge->dropTable('request');
    }
}
