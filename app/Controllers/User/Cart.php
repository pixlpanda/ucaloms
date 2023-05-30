<?php

namespace App\Controllers\User;

use App\Controllers\BaseController;

class Cart extends BaseController
{
    public function index()
    {
        $data['us_name'] = $this->session->get('us_name');
        $data['companyName'] = $this->session->get('comp_name');
        $data['view_file'] = 'user/cart';
        return view('user/layouts/main', $data);
    }
}
