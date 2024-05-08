<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_buku extends CI_Model {

	//dashboard
	public function select_curr_tahapan(){

      $this->db->select('*');
      $this->db->where('id','1');
	  return $this->db->get('tb_curr_tahapan');
	}

	function total_database_buku(){
	  $this->db->where('status','1');
      return $this->db->count_all_results('tb_buku');
	 
	}
	function total_katalog_buku(){
	  $this->db->where('status','2');
      return $this->db->count_all_results('tb_buku');
	 
	}
	function total_pengguna(){
	  $this->db->where('jenis_user','user');
      return $this->db->count_all_results('tb_operator');
	 
	}
	function total_buku_terpilih(){
      return $this->db->count_all_results('tb_bantu_pilih');
	 
	}




	//buku

	public function select_all(){

      $this->db->select('*');
	  return $this->db->get('tb_buku');
	}

	public function select_data_curr(){
	  $this->db->select('*');
	  $this->db->where('id','1');
	  return $this->db->get('tb_curr_tahapan');
	}

	public function select_buku_database(){

      $this->db->select('*');
      $this->db->where('status','1');
	  return $this->db->get('tb_buku');
	}
	public function katalog(){

      $this->db->select('*');
      $this->db->where('status','2');
      $this->db->order_by('id_buku','desc');
	  return $this->db->get('tb_buku');
	}

	public function select_katalog($status){

	  $id= $this->session->userdata('id_user');
      $this->db->select('*');
      $this->db->where('status',$status);
      $this->db->where('id_buku NOT IN (SELECT buku_id FROM tb_bantu_pilih WHERE user_id='.$id.' )');
      $this->db->order_by('id_buku',"desc");
	  return $this->db->get('tb_buku');
	}

	public function tambah_katalog($data){
		$this->db->insert('tb_buku', $data);
	}

	public function select($id){

      $this->db->select('*');
	  $this->db->where('id_buku',$id);
	  return $this->db->get('tb_buku');
	}

	public function update_buku($id,$judul,$pengarang, $penerbit, $tahun, $harga, $bahasa, $isbn)
	{
		 $data = array(
			'judul' => $judul,
			'pengarang' => $pengarang,
			'penerbit' => $penerbit,
			'tahun' => $tahun,
			'status' => '2',
			'harga' => $harga,
			'isbn' => $isbn,
			'bahasa' => $bahasa,
			);

		$this->db->where('id_buku',$id);
		$this->db->update('tb_buku', $data);
	} 

	//user

	public function select_buku_terpilih(){

		// SELECT * FROM `tb_bantu_pilih` LEFT JOIN tb_buku ON tb_buku.id_buku = tb_bantu_pilih.buku_id WHERE user_id=2 AND tb_buku.status=3;

		$id= $this->session->userdata('id_user');
		$this->db->select('*');
		$this->db->from('tb_bantu_pilih');
		$this->db->join('tb_buku','tb_buku.id_buku = tb_bantu_pilih.buku_id','left');
		$this->db->where('user_id',$id);
		//$this->db->where('tb_buku.status',$status);
		return $this->db->get();
	}
	public function select_buku_terpilihx(){

		// SELECT * FROM `tb_bantu_pilih` LEFT JOIN tb_buku ON tb_buku.id_buku = tb_bantu_pilih.buku_id WHERE user_id=2 AND tb_buku.status=3;

		$id= $this->session->userdata('id_user');
		$this->db->select('*');
		$this->db->from('tb_bantu_pilih');
		$this->db->join('tb_buku','tb_buku.id_buku = tb_bantu_pilih.buku_id','left');
		$this->db->where('user_id',$id);
		$this->db->where('tb_buku.status','0');
		return $this->db->get();
	}

	public function select_all_buku_terpilih(){

		$this->db->select('*');
		$this->db->from('tb_bantu_pilih');
		$this->db->join('tb_buku','tb_buku.id_buku = tb_bantu_pilih.buku_id','left');
		$this->db->join('tb_operator','tb_operator.id_user = tb_bantu_pilih.user_id','left');
		return $this->db->get();

	}

	public function jumlah_sementara($id_buku){
	  $this->db->select('*');
	  $this->db->where('id_buku',$id_buku);
	  return $this->db->get('tb_buku');

	}
	public function jumlah_dan_id_sementara($id_pilih){
	  $this->db->select('*');
	  $this->db->where('id_pilih',$id_pilih);
	  return $this->db->get('tb_bantu_pilih');

	}

	public function pilih_buku($id_buku,$jumlah,$jumlah_total,$total_harga_terpilih,$total_harga){
		$id_user = $this->session->userdata('id_user');

		$data = array(
			'buku_id' => $id_buku,
			'user_id' => $id_user,
			'jumlah_terpilih' => $jumlah,
			'total_harga_terpilih' => $total_harga_terpilih,
			'periode' => '1',
			'status_terpilih' => '0',
			);
		$this->db->insert('tb_bantu_pilih', $data);

		$data2 = array(
			// 'status' => '3',
			'total_harga' => $total_harga,
			'jumlah' => $jumlah_total,
			);

		$this->db->where('id_buku',$id_buku);
		$this->db->update('tb_buku', $data2);
	}

	public function hapus_pilihan($id_pilih,$id_buku,$total_harga,$jumlah_total){

		$data = array(
			// 'status' => '2',
			'total_harga' => $total_harga,
			'jumlah' => $jumlah_total,
			);

		$this->db->where('id_buku',$id_buku);
		$this->db->update('tb_buku', $data);

		$this->db->where('id_pilih', $id_pilih);
        $this->db->delete('tb_bantu_pilih');

	}

	public function total_harga_terpilih(){
		$id= $this->session->userdata('id_user');

		$this->db->select('total_harga_terpilih');
		$this->db->where('user_id',$id);
		$result = $this->db->get('tb_bantu_pilih');
		return $result;
		
	}

	public function all_total_harga_terpilih(){
		
		$this->db->select('total_harga_terpilih');
		$result = $this->db->get('tb_bantu_pilih');
		return $result;
		
	}


	public function proses_cek_dupliat(){
	
	 	//SELECT * FROM `tb_buku` WHERE `status`=2 AND`jumlah`!=0 AND `ISBN` IN (SELECT `ISBN` FROM `tb_buku` WHERE `status`=1);

	 	$this->db->select('id_buku');
		$this->db->where('status','2');
		$this->db->where('jumlah!=0');
		$this->db->where('ISBN IN (SELECT ISBN FROM tb_buku WHERE status=1)');
		return $this->db->get('tb_buku');
	}

	public function proses_hapus_dupliat(){
	
	 	$data = array(
			'status' => '6',
			'jumlah' => '0',
			'total_harga' => '0',
			);
		$this->db->where('status','2');
		$this->db->where('jumlah!=0');
		$this->db->where('ISBN IN (SELECT ISBN FROM tb_buku WHERE status=1)');
		$this->db->update('tb_buku', $data);



		

	}

	public function proses_update_status(){
	
	 	$data = array(
			'status' => '3',
			);
		$this->db->where('status','2');
		$this->db->where('jumlah!=0');
		$this->db->where('total_harga!=0');
		$this->db->update('tb_buku', $data);
		
		

	}

	public function proses_update_status_seleksi_tahun($id){
	
	 	$data = array(
			'status' => '2',
			'jumlah' => '0',
			'total_harga' => '0',
			);
		$this->db->where('id_buku',$id);
		$this->db->where('status','3');
		$this->db->update('tb_buku', $data);

		
		

	}

	public function update_curr_tahapan($tahapan){
		$data = array(
			'tahapan' => $tahapan,
			);
		$this->db->where('id','1');
		$this->db->update('tb_curr_tahapan', $data);

	}

	public function proses_cek_tahun($tahun){
	  $this->db->select('*');
      $this->db->where('tahun< '.$tahun.'');
	  return $this->db->get('tb_buku');

	}

	public function hasil_rekomendasi(){

      $this->db->select('*');
      $this->db->where('status','3');
	  return $this->db->get('tb_buku');
	}
}