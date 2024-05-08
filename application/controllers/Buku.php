<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Buku extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('M_buku');
		// $this->load->model('M_dashboard');
		 //$this->load->library('pdf');

		if (!$this->session->userdata('isLoggedIn')||$this->session->userdata('jenis_user')!='admin'){
			$this->load->view('v_redirect_login');
			return;
		}
	}

	public function rupiah($angka){
	
	$hasil_rupiah = "Rp " . number_format($angka,2,',','.');
	return $hasil_rupiah;
 
	}

	public function index(){

		$data['buku']=$this->M_buku->select_buku_database();

		$this->load->view('v_koleksi_buku',$data);

	}

	public function katalog(){

		$data['buku']=$this->M_buku->katalog();

		$this->load->view('v_katalog',$data);

	}

	// public function tambah_katalog(){
	// 	$judul = $this->input->post('judul');
	// 	$pengarang = $this->input->post('pengarang');
	// 	$penerbit = $this->input->post('penerbit');
	// 	$tahun = $this->input->post('tahun');
	// 	$harga = $this->input->post('harga');
 
	// 	$data = array(
	// 		'judul' => $judul,
	// 		'pengarang' => $pengarang,
	// 		'penerbit' => $penerbit,
	// 		'tahun' => $tahun,
	// 		'status' => '2',
	// 		'harga' => $harga
	// 		);
	// 	$this->M_buku->tambah_katalog($data);
	// 	redirect('Buku/katalog','refresh');
	// }

	public function tambah_katalog()
        {
          $judul = $this->input->post('judul');
          $pengarang = $this->input->post('pengarang');
          $penerbit = $this->input->post('penerbit');
          $tahun = $this->input->post('tahun');
          $harga = $this->input->post('harga');
          $bahasa = $this->input->post('bahasa');
          $isbn = $this->input->post('isbn');
          $tgl_input = date('Y-m-d');
           
          
          $data = array(
			'judul' => $judul,
			'pengarang' => $pengarang,
			'penerbit' => $penerbit,
			'tahun' => $tahun,
			'status' => '2',
			'harga' => $harga,
			'bahasa' => $bahasa,
			'isbn' => $isbn,
			'tgl_input' => $tgl_input
			);


          $this->M_buku->tambah_katalog($data);
          
          $this->detail();
          }


    public function detail()
        {
          $data['buku']=$this->M_buku->katalog();
		  $this->load->view('v_tabel_buku',$data);

        }



	public function hapus_katalog($id)
    {
      
        $this->db->where('id_buku', $id);
        $this->db->delete('tb_buku');
        $this->detail();
    }

    public function detail_buku($id)
        {
            $detail=$this->M_buku->select($id)->row();
            echo json_encode($detail);

        } 

    public function update_buku(){

          $id = $this->input->post('id');
          $judul = $this->input->post('judul');
          $pengarang = $this->input->post('pengarang');
          $penerbit = $this->input->post('penerbit');
          $tahun = $this->input->post('tahun');
          $harga = $this->input->post('harga');
          $bahasa = $this->input->post('bahasa');
          $isbn = $this->input->post('isbn');



          $this->M_buku->update_buku($id,$judul,$pengarang, $penerbit, $tahun, $harga, $bahasa,$isbn);
           $this->detail();
    }


    public function pilihan_user(){

    	$curr=$this->M_buku->select_data_curr()->row();
		$data['tahapan']= $curr->tahapan;
    	

    	$cek= $this->M_buku->all_total_harga_terpilih();

		$total=0;
		foreach ($cek->result() as $harga){
		$total+=$harga->total_harga_terpilih;
		}
		$curr=$this->M_buku->select_data_curr()->row();
		$data['anggaran']= $this->rupiah($curr->anggaran);

		
		$data['total_terpilih']= $this->rupiah($total);


    	$data['buku']=$this->M_buku->select_all_buku_terpilih();
		$this->load->view('v_buku_pilihan_user',$data);

	}

    //Menu User

  //   public function pilih_buku(){

		// $data['buku']=$this->M_buku->select_katalog();

		// $this->load->view('v_pilih_buku',$data);

	// }

	// Proses Seleksi

	 public function proses_cek_dupliat(){


	 	$cek= $this->M_buku->proses_cek_dupliat();

		foreach ($cek->result() as $row){
		
			$this->db->where('buku_id', $row->id_buku);
            $this->db->delete('tb_bantu_pilih');
		}

	 	   $this->M_buku->proses_hapus_dupliat();
	 	   $this->M_buku->proses_update_status();
	 	   $this->M_buku->update_curr_tahapan('1');

	 }

	 public function proses_seleksi_tahun($tahun){

	 	
	 	$cek= $this->M_buku->proses_cek_tahun($tahun);

		foreach ($cek->result() as $row){
		
			$this->db->where('buku_id', $row->id_buku);
            $this->db->delete('tb_bantu_pilih');

            $this->M_buku->proses_update_status_seleksi_tahun($row->id_buku);
		}
		$this->M_buku->update_curr_tahapan('2');

	
	 	   

	 }

	 public function hasil_rekomendasi()
        {
          $curr=$this->M_buku->select_data_curr()->row();
		  $data['tahapan']= $curr->tahapan;

          $curr=$this->M_buku->select_data_curr()->row();
          $data['anggaran']= $this->rupiah($curr->anggaran);

          $cek= $this->M_buku->all_total_harga_terpilih();

			$total=0;
			foreach ($cek->result() as $harga){
			$total+=$harga->total_harga_terpilih;
			}
			$curr=$this->M_buku->select_data_curr()->row();
			$data['anggaran']= $this->rupiah($curr->anggaran);

			
			$data['total_terpilih']= $this->rupiah($total);
			$data['sisa']= $this->rupiah($curr->anggaran-$total);

          $data['buku']=$this->M_buku->hasil_rekomendasi();
		  $this->load->view('v_hasil_rekomendasi',$data);

        }

	 public function seleksi_tahun(){

		$data['buku']=$this->M_buku->select_buku_database();

		$this->load->view('v_seleksi_tahun',$data);

		}




}