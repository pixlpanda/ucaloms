<?php

namespace App\Controllers\Accounts;

use App\Controllers\BaseController;
use CodeIgniter\API\ResponseTrait;
use App\Models\UserModel;
use App\Models\CompanyModel;

class Accounts extends BaseController
{
    use ResponseTrait;
    private $userModel, $companyModel;

    public function __construct(){
        
        $this->userModel = new UserModel;
        $this->companyModel = new CompanyModel;
    }

    public function index()
    {
    }
    public function addProfileDetails(){
        $data['us_name'] = $this->session->get('us_name');
        $data['companyName'] = $this->session->get('comp_name');
        $data['userdetail'] = $this->userModel->where('us_email', $this->session->get('us_email'))->first();
        if ($data['userdetail']['comp_id']!=0) {
            $data['companyDetail'] = $this->companyModel->where('comp_id', $data['userdetail']['comp_id'])->first();
        }
        $data['view_file'] = 'user/accounts/addProfileDetails';
        return view('user/layouts/main', $data);
    }
    public function updateUserDetails(){
        if ($this->request->is('post')){
            $compData = [
                'comp_name' => $this->request->getVar('comp_name'),
                'gst' => $this->request->getVar('gst'),
                'comp_address' => $this->request->getVar('comp_address'),
                'comp_contact' => $this->request->getVar('comp_contact'),
                'comp_email' => $this->request->getVar('comp_email'),
                'state' => $this->request->getVar('state'),
                'pincode' => $this->request->getVar('pincode'),
            ];
            $companyUpdate = $this->companyModel->save($compData);
            $companydetail = $this->companyModel->where('gst', $compData['gst'])->first();
            $this->session->set('comp_name', $companydetail['comp_name']);
            $userData = [
                'us_phone' => $this->request->getVar('us_phone'),
                'us_designation' => $this->request->getVar('us_designation'),
                'comp_id' => $companydetail['comp_id']
            ];
            $userdetail = $this->userModel->where('us_email', $this->session->get('us_email'))->first();
            $userUpdate = $this->userModel->update($userdetail['user_id'], $userData);
            
            if ($companyUpdate && $userUpdate) {
                return $this->respond([
                    'status' => 'success',
                    'message' => 'Updated Successfully',
                    
                ], 200);
            }else{
                return $this->respond([
                    'status' => 'failed',
                    'message' => 'Update Unsuccessful',
                ], 200);
            }
        }
    }
}
