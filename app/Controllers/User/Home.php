<?php

namespace App\Controllers\User;

use App\Controllers\BaseController;
use App\Models\Brand;
use App\Models\Category;

class Home extends BaseController
{
    private $brandModel, $categoryModel;
    
    public function __construct()
    {
        $this->brandModel = new Brand;
        $this->categoryModel = new Category;
    }

    public function index()
    {
        
        $data['us_name'] = $this->session->get('us_name');
        $data['companyName'] = $this->session->get('comp_name');
        $data['brands'] = $this->brandModel->findAll();
        $data['categories'] = $this->categoryModel->findAll();
        return view('user/home', $data);
    }
}
