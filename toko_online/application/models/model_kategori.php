<?php

class Model_kategori extends CI_Model{

	public function data_rempahrempah(){
		return $this->db->get_where("sayuran", array('kategori'=>'Rempah - rempah'));
	}
	public function data_buah(){
		return $this->db->get_where("sayuran", array('kategori'=>'Buah'));
	}
	public function data_sayuran(){
		return $this->db->get_where("sayuran", array('kategori'=>'Sayuran'));
	}
}