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

	
	   
		$this->load->view('surket/v_dashboard');

	}
  public function menu_input(){

  
     
    $this->load->view('surket/v_input_surket');

  }

  public function cariMember($nama){
          // $nama = $this->input->post('nama');

           $data['member']=$this->M_surket->selectMember($nama);
            $this->load->view('surket/tabel_member',$data);

        }

	public function cetak(){
		
        


          $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
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
          
          
        <img style="width: 538px" src="'.base_url("assets/images/user.jpg").'" />
          
          <table border="0" >
                <tr>
                      <th style= "  width: 35%;" > </th>
                      <th style= "width: 65%;"></th>
                </tr>

               
          </table>
          <div style="font-family: serif;">
          <table style="text-align: right; font-size:12  ">
            <tr><td> 
              
            </td></tr></table> <br><br>
          
          <table style="text-align: center; font-size:12  ">
            <tr><td> 
              <u>LETTER OF ACCEPTANCE</u>
            </td></tr></table>
          
          <table border="0" >
                <tr>
                      <th style= "  width: 35%;" > </th>
                      <th style= "width: 65%;"></th>
                </tr>
          
          </table>

          <table style="text-align: Justify ; font-size:13  ">
            <tr><th><br><br>Kepada Yth. 
              <br>Di tempat
              <br><br><br>Dengan hormat,
              <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dengan ini, kami mengucapkan selamat kepada Saudara karena artikel Saudara yang berjudul: 
              <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kami ucapkan terima kasih karena telah mengirimkan artikel ilmiah Anda pada <b></b> dan kami menunggu naskah jurnal Anda pada terbitan kami di masa mendatang. 
            </th></tr></table>

               
          

          
          <br><br><br><br><br><br><br><br><br><br>

       
          

         
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
	