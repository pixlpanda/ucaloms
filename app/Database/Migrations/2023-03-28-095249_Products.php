<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Products extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'prod_id' => [
                'type'           => 'INT',
                'constraint'     => 5,
                'unsigned'       => true,
                'auto_increment' => true,
            ],
            'brand' => [
                'type' => 'VARCHAR',
                'constraint' => '25',
                'null' => true,
            ],
            'oe_part' => [
                'type' => 'VARCHAR',
                'constraint' => '55',
                'null' => true,
            ],
            'ucal_part' => [
                'type'       => 'VARCHAR',
                'constraint' => '55',
                'null' => false,
            ],
            'prod_application' => [
                'type' => 'TEXT',
                'null' => true,
            ],
            'v_application' => [
                'type'       => 'VARCHAR',
                'constraint' => '15',
                'null' => true,
            ],
            'prod_cat' => [
                'type'       => 'VARCHAR',
                'constraint' => '15',
                'null' => true,
            ],
            'prod_mrp' => [
                'type' => 'INT',
                'constraint' => 5,
                'null' => true,
            ],
            'prod_selling' => [
                'type' => 'INT',
                'constraint' => 5,
                'constraint' => '15',
                'null' => false,
            ],
            'created_on' => [
                'type' => 'DATETIME',
            ],
            'updated_on' => [
                'type' => 'DATETIME',
            ],
        ]);
        $this->forge->addKey('prod_id', true);
        $this->forge->createTable('products');
    }

    public function down()
    {
        //
    }
}
