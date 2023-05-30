<?php

namespace App\Controllers\User;

use App\Controllers\BaseController;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;

class Products extends BaseController
{
    private $brandModel, $categoryModel, $productModel;
    
    public function __construct()
    {
        $this->brandModel = new Brand;
        $this->categoryModel = new Category;
        $this->productModel = new Product;
    }
    public function index($by = NULL , $id = NULL, $page = 0)
    {   
        $data['us_name'] = $this->session->get('us_name');
        $data['companyName'] = $this->session->get('comp_name');
        $data['page'] = $page;
        $page = $page * 12;
        if (!is_null($id)) {
            if ($by == 'byCategory') {
                $data['catDetail'] = $this->categoryModel->where('category', $id)->first();
                $data['products'] = $this->productModel->select('*')->select('category.category')->join('category', 'products.cat_id = category.cat_id')->where('products.cat_id', $data['catDetail']['cat_id'])->findAll(12, $page);
            }else{
                $data['brandDetail'] = $this->brandModel->where('brand', $id)->first();
                $data['products'] = $this->productModel->select('*')->select('category.category')->join('category', 'products.cat_id = category.cat_id')->where('brand_id', $data['brandDetail']['brand_id'])->findAll(12, $page);
            }
            
        }else{
            $data['products'] = $this->productModel->select('*')->select('category.category')->join('category', 'products.cat_id = category.cat_id')->findAll(12, $page);
        }
        $data['by'] = $by;
        $data['selected'] = $id;
        $data['categories'] = $this->categoryModel->findALl();
        $data['brands'] = $this->brandModel->findAll();
        $data['view_file'] = 'user/products';
        return view('user/layouts/main', $data);
    }
    public function quickView($id= NULL)
    {
        return view('user/products/quick_view_details');
    }
}
