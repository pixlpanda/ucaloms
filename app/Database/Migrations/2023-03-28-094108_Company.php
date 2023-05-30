<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Company extends Migration
{
    public function up()
    {$this->forge->addField([
        'comp_id' => [
            'type'           => 'INT',
            'constraint'     => 5,
            'unsigned'       => true,
            'auto_increment' => true,
        ],
        'password' => [
            'type' => 'TEXT',
            'null' => true,
        ],
        'gst' => [
            'type'       => 'VARCHAR',
            'constraint' => '15',
            'null' => false,
        ],
        'company_type' => [
            'type' => 'TEXT',
            'null' => true,
        ],
        'comp_address' => [
            'type' => 'TEXT',
            'null' => true,
        ],
        'comp_contact' => [
            'type'       => 'VARCHAR',
            'constraint' => '15',
            'null' => false,
        ],
        'comp_email' => [
            'type' => 'TEXT',
            'null' => true,
        ],
        'pincode' => [
            'type'           => 'INT',
            'constraint'     => 6,
            'unsigned'       => true,
        ],
        'state' => [
            'type'       => 'VARCHAR',
            'constraint' => '15',
            'null' => false,
        ],
        'branch_id' => [
            'type'           => 'INT',
            'constraint'     => 11,
            'unsigned'       => true,
        ],
        'comp_name' => [
            'type' => 'TEXT',
            'null' => true,
        ],
        'created_on' => [
            'type' => 'DATETIME',
        ],
        'updated_on' => [
            'type' => 'DATETIME',
        ],
    ]);
    $this->forge->addKey('comp_id', true);
    $this->forge->createTable('company');
    }

    public function down()
    {
        $this->forge->dropTable('company');
    }
}
