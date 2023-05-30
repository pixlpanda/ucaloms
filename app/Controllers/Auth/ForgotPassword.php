<?php

namespace App\Controllers\Auth;

use App\Controllers\BaseController;

class ForgotPassword extends BaseController
{
    public function index()
    {
        $data['us_name'] = $this->session->get('us_name');
        $data['companyName'] = $this->session->get('comp_name');
        $data['view_file'] = 'auth/forgot_password';
        return view('user/layouts/main', $data);
    }
}
