<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Users extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'user_id' => [
                'type'           => 'INT',
                'constraint'     => 5,
                'unsigned'       => true,
                'auto_increment' => true,
            ],
            'us_name' => [
                'type' => 'TEXT',
                'null' => true,
            ],
            'us_email' => [
                'type' => 'TEXT',
                'null' => true,
            ],
            'emp_id' => [
                'type'       => 'VARCHAR',
                'constraint' => '6',
                'null' => false,
            ],
            'us_phone' => [
                'type'       => 'VARCHAR',
                'constraint' => '15',
                'null' => false,
            ],
            'password' => [
                'type' => 'TEXT',
                'null' => true,
            ],
            'comp_id' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
            ],
            'user_type' => [
                'type' => 'TEXT',
                'null' => true,
            ],
            'us_status' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
            ],
            'us_soft_delete' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
            ],
            'us_designation' => [
                'type' => 'TEXT',
                'null' => true,
            ],
            'user_role' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
            ],
            'rand_id' => [
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
        $this->forge->addKey('user_id', true);
        $this->forge->createTable('users');
    }

    public function down()
    {
        $this->forge->dropTable('users');
    }
}
