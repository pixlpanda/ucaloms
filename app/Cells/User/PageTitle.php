<?php

namespace App\Cells\User;

use CodeIgniter\View\Cells\Cell;

class PageTitle extends Cell
{
    public function set_page_title($slug = null)
    {
        echo $slug;
    }
}
