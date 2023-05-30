<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class ProductBrandId extends Migration
{
    public function up()
    {
        $fields = [
            'brand_id' => [
                'type'           => 'INT',
                'constraint'     => 5,
                'unsigned'       => true,
                'after'          => 'brand',
                'default'        => 0
            ]
        ];
        $this->forge->addColumn('products', $fields);
    }

    public function down()
    {
        $forge->dropColumn('products', ['brand_id']);
    }
}
