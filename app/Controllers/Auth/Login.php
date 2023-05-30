<?php

namespace App\Controllers\Auth;

use App\Controllers\BaseController;
use CodeIgniter\API\ResponseTrait;
use App\Models\UserModel as Users;
use App\Models\CompanyModel;
use Firebase\JWT\JWT;

class Login extends BaseController
{
    private $companyModel;

    public function __construct(){
        $this->companyModel = new companyModel;
    }

    use ResponseTrait;
    public function index()
    {
        $data['us_name'] = $this->session->get('us_name');
        $data['companyName'] = $this->session->get('comp_name');
        $data['view_file'] = 'auth/login';
        return view('user/layouts/main', $data);
    }

    public function login(){
        if ($this->request->is('post')) {

            $rules = [
                'email' => ['rules' => 'required|valid_email'],
                'password' => ['rules' => 'required|min_length[8]|max_length[255]']
            ];

            if ($this->validate($rules)) {
                $userModel = new Users();
                $email = $this->request->getVar('email');
                $password = $this->request->getVar('password');
                $user = $userModel->where('us_email', $email)->first();
                if (is_null($user)) {
                    return $this->respond([
                        'status' => 'failed',
                        'error' => 'Invalid username or password.'
                    ], 200);
                }
                $pwd_verify = password_verify($password, $user['password']);
                if (!$pwd_verify) {
                    return $this->respond([
                        'status' => 'failed',
                        'error' => 'Invalid username or password.'
                    ], 200);
                }
                // $key = getenv('JWT_SECRET');
                // $iat = time(); // current timestamp value
                // $exp = $iat + 3600;
                // $payload = array(
                //     "iss" => base_url(),
                //     "aud" => "Web App",
                //     "sub" => "Auth Tokens",
                //     "iat" => $iat, //Time the JWT issued at
                //     "exp" => $exp, // Expiration time of token
                //     "email" => $user['us_email'],
                // );
                
                // $token = JWT::encode($payload, $key, 'HS256');
                $companyDetails = $this->companyModel->where('comp_id', $user['comp_id'])->first();
                $data = [
                    'us_name' => $user['us_name'],
                    'us_email' => $user['us_email'],
                    'comp_name' => (!empty($companyDetails['comp_name']) ? $companyDetails['comp_name'] : '' ),
                    // 'auth_token' => $token,
                    'is_loggedin' => true
                ];
 
                $session = session();
                $this->session->set($data);

                $response = [
                    'status' => "success",
                    'message' => 'Login Succesful',
                    'comp_name' => $data['comp_name'],
                    'us_email'  => $data['us_email'],
                    'userId'    => $user['user_id']
                ];

                return $this->respond($response, 200);
            } else {
                return $this->respond([
                    'status' => 'failed',
                    'errors' => [
                        "errEmail" => $this->validator->getError('email'),
                        "errPassword" => $this->validator->getError('password'),
                    ],
                ], 200);
            }
        }
    }
    public function logout(){
        $session = session();
        $session->destroy();
        return $this->respond([
            'status' => 'success',
            'message' => 'Successfully Logged out'
        ], 200);
    }
}
