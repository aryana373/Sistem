<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pusdig extends CI_Model {

	
	public function select_all(){

      	$this->db->select('*');
		$this->db->from('biblio_attachment');
		$this->db->join('biblio', 'biblio.biblio_id = biblio_attachment.biblio_id', 'left');
		$this->db->join('files', 'files.file_id = biblio_attachment.file_id', 'left');
		return $this->db->get();

	}
	public function select_buku($cari){

      	$this->db->select('*');
		$this->db->from('biblio_attachment');
		$this->db->join('biblio', 'biblio.biblio_id = biblio_attachment.biblio_id', 'left');
		$this->db->join('files', 'files.file_id = biblio_attachment.file_id', 'left');
		$this->db->like('title', $cari);
		return $this->db->get();

	}


	
}