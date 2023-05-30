<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class UserAddress extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'add_id' => [
                'type'           => 'INT',
                'constraint'     => 5,
                'unsigned'       => true,
                'auto_increment' => true,
            ],
            'company_id' => [
                'type' => 'INT',
                'constraint' => 5,
                'constraint' => '15',
                'null' => false,
            ],
            'local_contact' => [
                'type' => 'VARCHAR',
                'constraint' => '55',
                'null' => false,
            ],
            'address' => [
                'type' => 'TEXT',
                'null' => true,
            ],
            'country' => [
                'type' => 'VARCHAR',
                'constraint' => '55',
                'null' => false,
            ],
            'city' => [
                'type' => 'VARCHAR',
                'constraint' => '55',
                'null' => false,
            ],
            'state' => [
                'type' => 'VARCHAR',
                'constraint' => '55',
                'null' => false,
            ],
            'pincode' => [
                'type' => 'INT',
                'constraint' => '6',
                'null' => false,
            ],
            'add_rand' => [
                'type'       => 'VARCHAR',
                'constraint' => '12',
                'null' => false,
            ],
            'created_on' => [
                'type' => 'DATETIME',
            ],
            'updated_on' => [
                'type' => 'DATETIME',
            ],
        ]);
        $this->forge->addKey('add_id', true);
        $this->forge->createTable('user_address');
    }

    public function down()
    {
        $this->forge->dropTable('user_address');
    }
}
