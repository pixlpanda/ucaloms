<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class ContactPerson extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'cp_id' => [
                'type'           => 'INT',
                'constraint'     => 5,
                'unsigned'       => true,
                'auto_increment' => true,
            ],
            'cp_name' => [
                'type' => 'TEXT',
                'null' => true,
            ],
            'cp_designation' => [
                'type'       => 'VARCHAR',
                'constraint' => '15',
                'null' => false,
            ],
            'cp_email' => [
                'type' => 'TEXT',
                'null' => true,
            ],
            'comp_id' => [
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
        $this->forge->addKey('cp_id', true);
        $this->forge->createTable('contact_person');

    }

    public function down()
    {
        $this->forge->dropTable('contact_person');
    }
}
