<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require(APPPATH.'/libraries/REST_Controller.php');
use Restserver\Libraries\REST_Controller;
class Api extends REST_Controller
{

	public function __construct()
	{
		header("Access-Control-Allow-Origin: *");
		parent::__construct();	
		$this->load->model('Registration_model');
		$this->load->helper('url');
		
		
		$this->load->library('Authorization_Token');	  
	}

	public function index_get()
	{
		
		
		
	}
	public function getpage_get()
	{
		$this->load->view('loginview');
	}
	public function submit_post()
	{
		/*$data = array(
							
							'email' => $this->input->post('email'),
							'usertype'=>$this->input->post('usertype'),
							
						
							
							);
	$this->Registration_model->insertdata($data);*/

	$tokenData = $this->authorization_token->generateToken($token_data);
	$final = array();
	$final['token'] = $tokenData;
	$final['status'] = 'ok';

	$data=array(
		
		'email'=> $this->input->post('email'),
		'usertype' => $this->input->post('usertype'),

	);
	$this->Registration_model->insertdata($data);
	
	
	 $this->response($final);
	 					
							
		
		/*
							$token = array(
       "iat" => $issued_at,
       "exp" => $expiration_time,
       "iss" => $issuer,
       "data" => array(
           "id" => $user->id,
           "firstname" => $user->firstname,
           "lastname" => $user->lastname,
           "email" => $user->email
       )
    );
		*/
		/*
			$token_data['user_id'] = 121;
		$token_data['fullname'] = 'code'; 
		$token_data['email'] = 'code@gmail.com';

		$tokenData = $this->authorization_token->generateToken($token_data);

		$final = array();
		$final['token'] = $tokenData;
		$final['status'] = 'ok';
 
		$this->response($final);
		*/
				
	}

	public function user_get()
	{  
		
		$data['result']=$this->Registration_model->getallusers();
		$array  = array('status'=>'ok','data'=>1,'data'=>$data);
		$this->response($array); 
	}
	/*
	public function user_post()
	{  
		$array  = array('status'=>'ok','data'=>1);
		$this->response($array); 
	}
	public function record_post()
	{  
		$array  = array('status'=>'ok','data'=>'post api');
		$this->response($array); 
	}
	
	public function register_post()
	{   
		$token_data['user_id'] = 121;
		$token_data['fullname'] = 'code'; 
		$token_data['email'] = 'code@gmail.com';

		$tokenData = $this->authorization_token->generateToken($token_data);

		$final = array();
		$final['token'] = $tokenData;
		$final['status'] = 'ok';
 
		$this->response($final); 

	}
	public function verify_post()
	{  
		$headers = $this->input->request_headers(); 
		$decodedToken = $this->authorization_token->validateToken($headers['Authorization']);

		$this->response($decodedToken);  
	}
*/
		public function register_post()
		{   
			$token_data['user_id'] = 121;
			$token_data['fullname'] = 'code'; 
			$token_data['email'] = 'code@gmail.com';
			$tokenData = $this->authorization_token->generateToken($token_data);

			$final = array();
			$final['token'] = $tokenData;
			$final['status'] = 'ok';
			$final['message'] = 'token generated';

			$this->response($final); 

		}

		public function verify_post()
		{  
			$headers = $this->input->request_headers(); 
			$decodedToken = $this->authorization_token->validateToken($headers['Authorization']);
			
			$this->response($decodedToken);  
		}

 
}

