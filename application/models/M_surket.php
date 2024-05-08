<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_surket extends CI_Model {

	//dashboard
	public function select_curr_tahapan(){

      $this->db->select('*');
      $this->db->where('id','1');
	  return $this->db->get('tb_curr_tahapan');
	}

	public function selectMember($nama){
		$this->db->select('*');
		$this->db->like('member_name',$nama);
		//$this->db->like($cariberdasarkan, $data, 'both'); 
		return $this->db->get('member');
	}

	
}