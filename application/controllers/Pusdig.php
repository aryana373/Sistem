<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pusdig extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_pusdig');  
	} 

	public function index()
	{
		$data['buku']=$this->M_pusdig->select_all();
		
		$this->load->view('v_pusdig',$data);
	}
	 public function cari()
        {
          $cari = $this->input->post('cari');
          

           $data['buku']=$this->M_pusdig->select_buku($cari);
            $this->load->view('v_cari_buku',$data);

        }

}
	