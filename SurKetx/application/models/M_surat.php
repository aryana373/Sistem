<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_surat extends CI_Model {

	public function create($nama,$jurnal, $vol, $terbit,$judul, $tanggal,$qr_name,$admin_id)
	{
		
		$data = array(
			'nama' => $nama,
			'jurnal' => $jurnal,
			'vol' => $vol,
			'terbit' => $terbit,
			'judul' => $judul,
			'tanggal' => $tanggal,
			'qr_name'=> $qr_name,
			'admin_id'=>$admin_id
		);

		$this->db->insert('surat', $data);
	} 

	public function update($id,$nama,$jurnal, $vol, $terbit,$judul)
	{
		$data = array(
			'nama' => $nama,
			'jurnal' => $jurnal,
			'vol' => $vol,
			'terbit' => $terbit,
			'judul' => $judul,
		);

		$this->db->where('id',$id);
		$this->db->update('surat', $data);
	} 

	public function select_all(){

      $this->db->select('*');
	  return $this->db->get('pasien');
	}

	public function select($id){

      $this->db->select('*');
	  $this->db->where('id',$id);
	  return $this->db->get('surat');
	}

	public function select_last(){
	  $this->db->select('*');
      $this->db->order_by('id',"desc");
      $this->db->limit(1);
      return $this->db->get('surat');
	}

	public function select_berdasarkan($cariberdasarkan,$data,$id){
		$this->db->select('*');
		$this->db->order_by('id', 'DESC');
		$this->db->like($cariberdasarkan, $data);
		$this->db->where('admin_id', $id);
		//$this->db->like($cariberdasarkan, $data, 'both'); 
		return $this->db->get('surat');
	}

	public function current_nosurat(){
		 $this->db->select('*');
		 $this->db->where('id','1');
	  	 return $this->db->get('nosurat');
	}

	public function update_nosurat($nosurat){

		$data = array(
			'cur_nosurat' => $nosurat,
		);

		$this->db->where('id','1');
		$this->db->update('nosurat', $data);

	}
	public function update_bulan($bulan){

		$data = array(
			'cur_nosurat' => '0',
			'cur_bulan' => $bulan,
		);

		$this->db->where('id','1');
		$this->db->update('nosurat', $data);

	}

}