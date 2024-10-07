<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('M_buku');

		if (!$this->session->userdata('isLoggedIn')){
			$this->load->view('v_redirect_login');
			return;
		}
	}


	public function rupiah($angka){
	
	$hasil_rupiah = "Rp " . number_format($angka,2,',','.');
	return $hasil_rupiah;
 
	}

	public function index(){

	
	   
		$this->load->view('v_sso');

	}
	public function dashboard(){

	
		$data['database']= $this->M_buku->total_database_buku();
		$data['katalog']= $this->M_buku->total_katalog_buku();
		$data['pengguna']= $this->M_buku->total_pengguna();
		$data['buku_terpilih']= $this->M_buku->total_buku_terpilih();

		$cek=$this->M_buku->select_curr_tahapan();
		$data['curr']=$cek;

		foreach ($cek->result() as $row){
		
		$data['anggaran']= $this->rupiah($row->anggaran);
		}
	   
		$this->load->view('v_dashboard',$data);

	}

	public function dashboard_slims(){

	
		$data['database']= $this->M_buku->total_database_buku();
		$data['katalog']= $this->M_buku->total_katalog_buku();
		$data['pengguna']= $this->M_buku->total_pengguna();
		$data['buku_terpilih']= $this->M_buku->total_buku_terpilih();

		$cek=$this->M_buku->select_curr_tahapan();
		$data['curr']=$cek;

		foreach ($cek->result() as $row){
		
		$data['anggaran']= $this->rupiah($row->anggaran);
		}
	   
		$this->load->view('v_dashboard_slims',$data);

	}

	public function detail_curr(){
		$detail= $this->M_buku->select_curr_tahapan()->row();;
		echo json_encode($detail);

	}

	


	public function dasboard_data(){

		$cek=$this->M_buku->select_curr_tahapan();
		$data['curr']=$cek;

		foreach ($cek->result() as $row){
		
		$data['anggaran']= $this->rupiah($row->anggaran);
		}
	   
	   
		$this->load->view('v_dashboard_data',$data);

	}
	

	public function update(){
		$data['curr']=$this->M_buku->select_curr_tahapan();

		 $anggaran = $this->input->post('anggaran');
		 $tanggal = $this->input->post('tanggal');
		 $tahap = $this->input->post('tahap');

		 $datax = array(
			'anggaran' => $anggaran,
			'tgl_selesai_input' => $tanggal,
			'tahapan' => $tahap,
			'status_sync' => '0',
			);

		$this->db->where('id','1');
		$this->db->update('tb_curr_tahapan', $datax);
		$this->dasboard_data();

	}



}