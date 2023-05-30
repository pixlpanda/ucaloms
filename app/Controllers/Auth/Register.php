<?php

namespace App\Controllers\Auth;

use App\Controllers\BaseController;
use CodeIgniter\API\ResponseTrait;
use App\Models\UserModel as Users;

class Register extends BaseController
{
    use ResponseTrait;
    public function index()
    {
        if($this->request->is('post')){
            $rules = [
                'fname' => ['rules' => 'required|min_length[4]|max_length[255]'],
                'email' => ['rules' => 'required|min_length[4]|max_length[255]|valid_email|is_unique[users.us_email]'],
                'password' => ['rules' => 'required|min_length[8]|max_length[255]'],
                'confirmpass'  => ['label' => 'confirm password', 'rules' => 'required|matches[password]'],
                'terms' => ['rules' => 'required']
            ];
        }

        if ($this->validate($rules)) {
            $model = new Users();
            $data = [
                'us_name'     => $this->request->getVar('fname'),
                'us_email'    => $this->request->getVar('email'),
                'password' => password_hash($this->request->getVar('password'), PASSWORD_DEFAULT)
            ];
            $model->save($data);

            return $this->respond([
                'status' => 'success',
                'message' => 'Registered Successfully'
            ], 200);
        }else{
            return $this->respond([
                'status' => 'failed',
                'messages' => [
                    "errName" => $this->validator->getError('fname'),
                    "errEmail" => $this->validator->getError('email'),
                    "errPassword" => $this->validator->getError('password'),
                    "errConfirmPass" => $this->validator->getError('confirmpass'),
                    "errTerms" => $this->validator->getError('terms'),
                ],
            ], 200);
        }
    }
}
