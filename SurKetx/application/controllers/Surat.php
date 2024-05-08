<?php
class Surat extends CI_Controller {
 
    public function __construct()
        {
            parent::__construct();
            $this->load->library('pdf');
            $this->load->model('M_surat');
          
            

            
            if (!$this->session->userdata('isLoggedIn')){
          $this->load->view('v_redirect_login');
          return;
        }
        }
    public function index()
        {
         $data['currUser']=$this->session->userdata('fullname');
         $data['jurnal']=$this->session->userdata('jurnal');
                

        $this->load->view('v_inputSurat',$data);
        }

    public function cari()
        {
        
            $this->load->view('v_carisurat');

        }

    public function carisurat()
        {
          $cariberdasarkan = $this->input->post('cariberdasarkan');
          $datainput = $this->input->post('data');
          $id=$this->session->userdata('id_admin');

           $data['surat']=$this->M_surat->select_berdasarkan($cariberdasarkan,$datainput,$id);
            $this->load->view('v_cari_surat',$data);

        }

    public function hapus($id)
        {
            $this->db->where('id', $id);
            $this->db->delete('surat');
            $this->cari();
        }

    public function detail_surat($id)
        {
            $detail=$this->M_surat->select($id)->row();
            echo json_encode($detail);

        } 
  

    public function update(){
          $id = $this->input->post('id');
          $nama = $this->input->post('nama');
          $jurnal = $this->input->post('jurnal');
          $vol = $this->input->post('vol');
          $terbit = $this->input->post('terbit');
          $judul = $this->input->post('judul');
          $this->M_surat->update($id,$nama,$jurnal, $vol, $terbit,$judul);
           $this->cari();
    }

    public function create()
        {
          $nama = $this->input->post('nama');
          $jurnal = $this->input->post('jurnal');
          $vol = $this->input->post('vol');
          $terbit = $this->input->post('terbit');
          $judul = $this->input->post('judul');
          $admin_id=$this->session->userdata('id_admin');

          $date = new DateTime("now", new DateTimeZone('Asia/Kuala_Lumpur') );

          $tanggal= date('Y-m-d');
          

          $this->load->library('ciqrcode'); //pemanggilan library QR CODE
     
            $config['cacheable']    = true; //boolean, the default is true
            $config['cachedir']     = './assets/'; //string, the default is application/cache/
            $config['errorlog']     = './assets/'; //string, the default is application/logs/
            $config['imagedir']     = './assets/qr/'; //direktori penyimpanan qr code
            $config['quality']      = true; //boolean, the default is true
            $config['size']         = '1024'; //interger, the default is 1024
            $config['black']        = array(224,255,255); // array, default is array(255,255,255)
            $config['white']        = array(70,130,180); // array, default is array(0,0,0)
            $this->ciqrcode->initialize($config);
            

            $file= str_replace(' ', '', $nama).rand(1,1000);
            $qr_name=$file.'.jpg'; //buat name dari qr code sesuai dengan nim
            

            $params['data'] = 'https://slims.invite-me.my.id/cek/?qr='.$qr_name; //data yang akan di jadikan QR CODE
            $params['level'] = 'M'; //H=High
            $params['size'] = 4;
            $params['savename'] = FCPATH.$config['imagedir'].$qr_name; //simpan image QR CODE ke folder assets/images/
            $this->ciqrcode->generate($params); // fungsi untuk generate QR CODE
     
            // $this->mahasiswa_model->simpan_mahasiswa($nim,$nama,$prodi,$image_name); //simpan ke database
            // redirect('mahasiswa'); //redirect ke mahasiswa usai simpan data
          
          $this->M_surat->create($nama,$jurnal, $vol, $terbit,$judul, $tanggal,$qr_name, $admin_id);

          
          $this->detail();
          }

    public function detail()
        {
          $data['surat_last']=$this->M_surat->select_last();
          $this->load->view('v_detail_surat',$data);
          

        }

    public function tgl_indo($tgl)
      {
        $tanggal = substr($tgl,8,2);
        $bulan = $this->getBulan(substr($tgl,5,2));
        $tahun = substr($tgl,0,4);
        return $tanggal.' '.$bulan.' '.$tahun;     
      } 

    public function getBulan($bln){
        switch ($bln){
          case 1: 
            return "Januari";
            break;
          case 2:
            return "Februari";
            break;
          case 3:
            return "Maret";
            break;
          case 4:
            return "April";
            break;
          case 5:
            return "Mei";
            break;
          case 6:
            return "Juni";
            break;
          case 7:
            return "Juli";
            break;
          case 8:
            return "Agustus";
            break;
          case 9:
            return "September";
            break;
          case 10:
            return "Oktober";
            break;
          case 11:
            return "November";
            break;
          case 12:
            return "Desember";
            break;
        }
      }

      public function tgl_eng($tgl)
      {
        $tanggal = substr($tgl,8,2);
        $bulan = $this->getBulan_eng(substr($tgl,5,2));
        $tahun = substr($tgl,0,4);
        return $tanggal.' '.$bulan.' '.$tahun;     
      } 

    public function getBulan_eng($bln){
        switch ($bln){
          case 1: 
            return "January";
            break;
          case 2:
            return "February";
            break;
          case 3:
            return "March";
            break;
          case 4:
            return "April";
            break;
          case 5:
            return "May";
            break;
          case 6:
            return "June";
            break;
          case 7:
            return "July";
            break;
          case 8:
            return "August";
            break;
          case 9:
            return "September";
            break;
          case 10:
            return "October";
            break;
          case 11:
            return "November";
            break;
          case 12:
            return "December";
            break;
        }
      }


    public function LihatSurat($id)
      {

        $detail =  $this->M_surat->select($id)->row();


        $nama=$detail->nama;
        $jurnal=$detail->jurnal;
        $vol=$detail->vol;
        $terbit=$detail->terbit;
        $judul=$detail->judul;
        $qr_name=$detail->qr_name;
        // $date=$this->tgl_eng($detailpasien->tanggal);
        $tanggal=$this->tgl_indo($detail->tanggal);
        $chief = $this->session->userdata('fullname');
        $id_chief = $this->session->userdata('id_admin');

    


       

        // $ttd =  $this->M_dokter->ttd($dokter)->row();
        // $ttd_dokter=$ttd->ttd;


       

        


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
          
          
          
          <img style="width: 538px" src="'.base_url("assets/images/cov/".$id_chief).'.png" />
         
          
          <table border="0" >
                <tr>
                      <th style= "  width: 35%;" > </th>
                      <th style= "width: 65%;"></th>
                </tr>

               
          </table>
          <div style="font-family: serif;">
          <table style="text-align: right; font-size:12  ">
            <tr><td> 
              Denpasar, '.$tanggal.'
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
            <tr><th><br><br>Kepada Yth. '.$nama.'
              <br>Di tempat
              <br><br><br>Dengan hormat,
              <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dengan ini, kami mengucapkan selamat kepada Saudara karena artikel Saudara yang berjudul: <i>'.$judul.'</i> <b>diterima</b> untuk diterbitkan pada '.$jurnal.' '.$vol.' Bulan '.$terbit.'.
              <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kami ucapkan terima kasih karena telah mengirimkan artikel ilmiah Anda pada <b>'.$jurnal.'</b> dan kami menunggu naskah jurnal Anda pada terbitan kami di masa mendatang. 
            </th></tr></table>

               
          

          
          <br><br><br><br><br><br><br><br><br><br>

       
          

          <table style= "font-size:13;" border="0" >
                <tr>
                      <th style= "  width: 78%;" >Hormat saya,
                      <br><img style="height: 50px" src="'.base_url('assets/ttd/'.$id_chief.'.jpg').'" /><br><b>'.$chief.'</b><br>Editor in Chief </th>
                      <th style= "width: 22%;"> <img style="width: 120px" src="'.base_url('assets/qr/'.$qr_name).'"/></th>
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

  //    public function export(){
  //     $data = $this->M_pasien->select_all();

  //     include_once APPPATH.'/third_party/PHPExcel/xlsxwriter.class.php';
  //     ini_set('display_errors', 0);
  //     ini_set('log_errors', 1);
  //     error_reporting(E_ALL & ~E_NOTICE);

  //     $filename = "report-".date('d-m-Y-H-i-s').".xlsx";
  //     header('Content-disposition: attachment; filename="'.XLSXWriter::sanitize_filename($filename).'"');
  //     header("Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
  //     header('Content-Transfer-Encoding: binary');
  //     header('Cache-Control: must-revalidate');
  //     header('Pragma: public');

  //     $styles = array('widths'=>[3,15,20,25,30,15,15,50,25,15,15,30,30,30], 'font'=>'Arial','font-size'=>10,'font-style'=>'bold', 'fill'=>'#eee', 'halign'=>'center', 'border'=>'left,right,top,bottom');
  //     $styles2 = array( ['font'=>'Arial','font-size'=>10,'font-style'=>'bold', 'halign'=>'left', 'border'=>'left,right,top,bottom']);

  //     $header = array(
  //       'No'=>'integer',
  //       'tanggal'=> 'string',
  //       'Nama'=>'string',
  //       'NIK'=>'string',
  //       'No Hasil'=>'string',
  //       'JK' => 'string',
  //       'tgllahir' => 'string',
  //       'alamat' => 'string',
  //       'namapemeriksaan'=> 'string',
  //       'hasil'=> 'string',
  //       'rujukan'=> 'string',
  //       'admin'=> 'string',
  //       'dokter'=> 'string',
  //       'perawat'=> 'string',
  //     );

  //     $writer = new XLSXWriter();
  //     $writer->setAuthor('Be Healt Medika');

  //     $writer->writeSheetHeader('Sheet1', $header, $styles);
  //     $no = 1;
  //     foreach($data->result() as $row){
  //       $writer->writeSheetRow('Sheet1', [$no, $row->tanggal, $row->nama, $row->NIK, $row->nohasil, $row->JK, $row->tgllahir, $row->alamat, $row->namapemeriksaan, $row->hasil, $row->rujukan, $row->admin, $row->dokter, $row->perawat,], $styles2);
  //       $no++;
  //     }
  //     $writer->writeToStdOut();
  // }
 
}