<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Cart extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'cart_id' => [
                'type'           => 'INT',
                'constraint'     => 5,
                'unsigned'       => true,
                'auto_increment' => true,
            ],
            'user_id' => [
                'type' => 'INT',
                'constraint' => '5',
                'null' => false,
            ],
            'prod_id' => [
                'type' => 'INT',
                'constraint' => 5,
                'constraint' => '15',
                'null' => false,
            ],
            'cart_rand' => [
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
        $this->forge->addKey('cart_id', true);
        $this->forge->createTable('cart');
    }

    public function down()
    {
        $this->forge->dropTable('cart');
    }
}
