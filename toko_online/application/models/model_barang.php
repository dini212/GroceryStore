<?php

class model_barang extends CI_model{
	public function tampil_data(){
		return $this->db->get('sayuran');
	}

	public function tambah_barang($table, $data) {
		$this->db->insert($table, $data);
	}

	public function edit_barang($where, $table) {
		return $this->db->get_where($table, $where);
	}

	public function update_data($where, $data, $table) {
		$this->db->where($where);
		$this->db->update($table,$data);
	}

	public function hapus_data($where, $table) {
		$this->db->where($where);
		$this->db->delete($table);
	}
}