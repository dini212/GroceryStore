<?php

 class Kategori extends CI_Controller{
	public function rempahrempah(){
		$data['rempahrempah'] = $this->model_kategori->data_rempahrempah()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('rempahrempah',$data);
		$this->load->view('templates/footer');
	}
	public function buah(){
		$data['buah'] = $this->model_kategori->data_buah()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('buah',$data);
		$this->load->view('templates/footer');
	}
	public function Sayuran(){
		$data['Sayuran'] = $this->model_kategori->data_sayuran()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('Sayuran',$data);
		$this->load->view('templates/footer');
	}
}