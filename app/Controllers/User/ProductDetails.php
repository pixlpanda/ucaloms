<?php

namespace App\Controllers\User;

use App\Controllers\BaseController;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;

class ProductDetails extends BaseController
{
    private $brandModel, $categoryModel, $productModel;
    
    public function __construct()
    {
        $this->brandModel = new Brand;
        $this->categoryModel = new Category;
        $this->productModel = new Product;
    }
    public function index($id = NULL, $pageView = NULL, $ucal_part= NULL)
    {
        $data['product'] = $this->productModel->select('*')->select('category.category')->join('category', 'products.cat_id = category.cat_id')->where('ucal_part', $ucal_part)->first();

        if ($pageView == 'quickView') {
            return view('user/products/quick_view_details', $data);
        }

    }
}
