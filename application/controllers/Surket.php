<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Surket extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('M_surket');
		$this->load->library('Pdfa');

		if (!$this->session->userdata('isLoggedIn')){
			$this->load->view('v_redirect_login');
			return;
		}
	}


	

	public function index(){

    $data['jml_member']= $this->db->query('SELECT COUNT(member_id) AS num FROM member')->row()->num;
    $data['jml_surket']=$this->db->query('SELECT COUNT(member_id) AS num FROM bp_history_surket')->row()->num;

	   
		$this->load->view('surket/v_dashboard',$data);

	}
  public function menu_input(){

  
     
    $this->load->view('surket/v_input_surket');

  }

  public function menu_cari(){

    $data['surket']=$this->M_surket->allSurket();

    $this->load->view('surket/v_cari_surket',$data);

  }

  public function cariMember($nama){
          // $nama = $this->input->post('nama');

      $data['member']=$this->M_surket->selectMember($nama);
      $this->load->view('surket/tabel_member',$data);

  }
  public function detail_member($id){
       $detail=$this->M_surket->select_member($id)->row();
       echo json_encode($detail);
  }

	public function cetak($id){

        $detail=$this->M_surket->select_member($id)->row();

        $nama= $detail->member_name;
        $id= $detail->member_id;
        $instansi=$detail->inst_name;
        $tanggal= date("Y-m-d");

        $cek = $this->db->get_where('bp_history_surket', array(
            'member_id' => $id,
        ));

        $count = $cek->num_rows(); 

        if ($count === 0) {
            $this->M_surket->create($id,$nama, $instansi,$tanggal);
        }

         
        


          $pdf = new TCPDF('L', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
          $pdf->setPrintFooter(false);
          $pdf->setPrintHeader(false);
          $pdf->SetAutoPageBreak(true, PDF_MARGIN_BOTTOM);
          $pdf->AddPage('');
         // $pdf->Write(0, 'Simpan ke PDF - Jaranguda.com', '', 0, 'L', true, 0, false, false, 0);
          $pdf->SetFont('');
          // $pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
          // $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
          // $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
          $pdf->SetMargins(18,  0, 18);
          $pdf->SetAutoPageBreak(TRUE, 0);


          $tabel = '
          
          
        <img style="width: 1100px;" src="'.base_url("assets/images/cover.PNG").'" />
          
        
          <div style="font-family: serif;">

          <table style="text-align: center; font-size:16px  ">
            <tr><td> 
              <b>SURAT KETERANGAN BEBAS PUSTAKA</b>
            </td></tr>
            <tr><td> 
              No. XX/PERPUS/IV/2024
            </td></tr></table>
          
          <table border="0" >
                <tr>
                      <th style= "  width: 35%;" > </th>
                      <th style= "width: 65%;"></th>
                </tr>
          
          </table>

          <table style="text-align: Justify ; font-size:14px  ">
            <tr><th><br><br>Yang bertanda tangan di bawah ini menerangkan bahwa: 
              <br><br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;Nama &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; : '.$nama.' <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;ID Member&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : '.$id.' <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;Institusi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : '.$instansi.'

          
              <br><br><br>Siswa tersebut tidak memiliki pinjaman koleksi milik Perpustakaan SMA Negeri 1 Konoha.
              <br> *Surat ini dibawa saat pengambilan Ijazah. 
            </th></tr></table>

               
          

          
          <br><br>
           <table style= "font-size:13;" border="0" >
                <tr>
                      <th style= "width: 70%;"> </th>
                      <th style= "  width: 30%;" >Konoha, 17 Agustus 2024
                      <br> Kepala Perpustakaan
                      <br><img style="height: 50px" src="'.base_url('assets/images/ttd.jpg').'" /><br><b>Kadek Aryana Dwi Putra</b><br>NIP. 1996043020230813001</th>
                      
                </tr>

               
          </table>

       
          

         
           <table border="0" >
                <tr>
                      <th style= "width: 35%;height: 15px;" > </th>
                      <th style= "width: 65%;"></th>
                </tr>

               
          </table>
          </div>

          
          ';
          // $filelocation = base_url("assets/images");
          // $filename='file-pdf-codeigniter.pdf';
          // $fileNL = $filelocation.'/'.$filename;
          $pdf->writeHTML($tabel);
          $pdf->Output('file', 'I');
	
	}
}
	