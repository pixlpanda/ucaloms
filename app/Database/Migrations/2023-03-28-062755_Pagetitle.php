<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Pagetitle extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'page_id' => [
                'type'           => 'INT',
                'constraint'     => 5,
                'unsigned'       => true,
                'auto_increment' => true,
            ],
            'page_title' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
            ],
            'page_slug' => [
                'type'       => 'VARCHAR',
                'constraint' => '512',
            ],
            'page_description' => [
                'type' => 'TEXT',
                'null' => true,
            ],
            'page_keywords' => [
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
        $this->forge->addKey('page_id', true);
        $this->forge->createTable('page_title');
    }

    public function down()
    {
        $this->forge->dropTable('page_title');
    }
}
