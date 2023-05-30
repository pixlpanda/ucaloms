<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class ProductSorting extends Migration
{
    public function up()
    {
        $fields = [
            '2w' => [
                'type'           => 'INT',
                'constraint'     => 5,
                'unsigned'       => true,
                'after'          => 'v_application',
                'default'        => 0
            ],
            '3w' => [
                'type'           => 'INT',
                'constraint'     => 5,
                'unsigned'       => true,
                'after'          => '2w',
                'default'        => 0
            ],
            '4w' => [
                'type'           => 'INT',
                'constraint'     => 5,
                'unsigned'       => true,
                'after'          => '3w',
                'default'        => 0
            ],
            'cat_id' => [
                'type'           => 'INT',
                'constraint'     => 5,
                'unsigned'       => true,
                'after'          => '4w',
                'default'        => 0
            ],
        ];
        $this->forge->addColumn('products', $fields);

    }

    public function down()
    {
        $forge->dropColumn('products', ['2w', '3w', '4w', 'cat_id']);
    }
}
