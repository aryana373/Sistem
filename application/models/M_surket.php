<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_surket extends CI_Model {

	//dashboard
	public function select_curr_tahapan(){

      $this->db->select('*');
      $this->db->where('id','1');
	  return $this->db->get('tb_curr_tahapan');
	}
	public function allSurket(){

      $this->db->select('*');
	  return $this->db->get('bp_history_surket');
	}

	public function selectMember($nama){
		$this->db->select('*');
		$this->db->like('member_name',$nama);
		//$this->db->like($cariberdasarkan, $data, 'both'); 
		return $this->db->get('member');
	}
	public function select_member($id){

      $this->db->select('*');
	  $this->db->where('member_id',$id);
	  return $this->db->get('member');
	}

	public function create($id,$nama,$instansi,$tanggal){
		$data = array(
			'member_id' => $id,
			'nama' => $nama,
			'tanggal_buat' => $tanggal
		);

		$this->db->insert('bp_history_surket', $data);
	}

	
}