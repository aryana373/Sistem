<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Buku extends CI_Controller {

	// public $progress=0;


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

    public function detail_buku_database($id)
        {
            $detail=$this->M_buku->select_biblio($id)->row();
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

	public function menu_sync(){
		$this->session->set_userdata('progress', 0);
		$curr=$this->M_buku->select_data_curr()->row();
		$data['tahapan']= $curr->tahapan;
		$data['status_sync']= $curr->status_sync;
		$data['jumlah_buku']= $this->M_buku->hasil_rekomendasi()->num_rows();

          
		$this->load->view('v_syncron',$data);
	}

	public function sync(){

        $this->session->set_userdata('progress', 0);

		$buku_terpilih= $this->M_buku->hasil_rekomendasi();
		$jumlah_buku = $buku_terpilih->num_rows();
		$no=1;

		foreach ($buku_terpilih->result() as $row){

			//cek dan insert penerbit

			$id_penerbit= $this->M_buku->cek_penerbit($row->penerbit);


		
			$data_biblio = array(
			'gmd_id' => '1',
			'title' => $row->judul,
			'isbn_issn' => $row->isbn,
			'publisher_id'=>$id_penerbit,
			'publish_year' => $row->tahun,
			'classification'=> 'NONE',
			'language_id' => $row->bahasa,
			'input_date'	=> date("Y-m-d h:i:s"),
			'last_update' => date("Y-m-d h:i:s"),
			'uid'=> 1,
			);

			

			$this->db->insert('biblio', $data_biblio);
			$id = $this->db->insert_id();

			//cek dan insert pengarang

			$this->M_buku->cek_pengarang($row->pengarang,$id);



			//insert search biblio

			if ($row->bahasa=='eng') {
				$bahasa='English';
			} else{
				$bahasa='Indonesia';
			}


			$data_search_biblio = array(
			'biblio_id'=> $id,
			'title' => $row->judul,
			'isbn_issn' => $row->isbn,
			'author' => $row->pengarang,
			'gmd'=> 'text',
			'publisher'=> $row->penerbit,
			'publish_year' => $row->tahun,
			'language'=>$bahasa,
			'classification'=> 'NONE',
			'opac_hide'=>0,
			'promoted'=>0,
			'input_date'	=> date("Y-m-d h:i:s"),
			'last_update' => date("Y-m-d h:i:s"),

			);
			$this->db->insert('search_biblio', $data_search_biblio);
			$this->progress = $no/$jumlah_buku*100;
			$this->session->set_userdata('progress', $this->progress);
			
			// echo round($this->progress,2).' ';
			// sleep(1);  //Simulate a time-consuming process
            $no++;

		}

		// $this->session->set_userdata('progress', 100);
  		// echo json_encode(array('progress' => 100));

  		$this->M_buku->update_sync(1);



	}

	public function get_progress() {
        $progress = $this->session->userdata('progress');
        echo json_encode(array('progress' => $progress));
    }

	// public function progress(){
	// 	  $data['progress']=$round($this->progress,2);
	// 	  $this->load->view('v_progress',$data);
	// }




}