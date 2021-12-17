<?php 

class data_barang extends CI_Controller{
	public function index()
{
		$data['barang'] = $this->model_barang->tampil_data()->result();
		$this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('admin/data_barang', $data);
        $this->load->view('templates/footer');
}
	
	public function tambah_aksi()
	{
		$nama_brg		= $this->input->post('nama_sayuran');
		$keterangan		= $this->input->post('keterangan');
		$kategori		= $this->input->post('kategori');
		$harga			= $this->input->post('harga');
		$stok			= $this->input->post('stok');
		$gambar_brg		= $_FILES['gambar']['name'];
		if ($gambar_brg =''){}else{
			$config ['upload_path'] = './assets/img';
			$config ['allowed_types'] = 'jpg|jpeg|png|gif';

			$this->load->library('upload', $config);
			if (!$this->upload->do_upload('gambar')) {
				echo "Gambar Gagal diUpload";
			}else{
				$gambar_brg=$this->upload->data('file_name');
			}
		}

		$data = array(
		'nama_sayuran'		=> $nama_brg,
		'keterangan'		=> $keterangan,
		'kategori'			=> $kategori,
		'harga'				=> $harga,
		'stok'				=> $stok,
		'gambar'			=> $gambar_brg
		);

		$this->model_barang->tambah_barang('sayuran', $data);
		redirect('admin/data_barang/index');
	}

	public function edit($id) {
		$where = array('id_sayuran =>$id');
		$data['barang'] = $this->model_barang->edit_barang($where, 'sayuran')->result();
	$this->load->view('templates_admin/header');
    $this->load->view('templates_admin/sidebar');
    $this->load->view('admin/edit_barang', $data);
    $this->load->view('templates_admin/footer');
	}

	public function update() {
		$id          = $this->input->POST('id_sayuran');
		$nama_brg    = $this->input->POST('nama_sayuran');
		$keterangan  = $this->input->POST('keterangan');
		$kategori    = $this->input->POST('kategori');
		$harga  	 = $this->input->POST('harga');
		$stok 		 = $this->input->POST('stok');

		$data = array(
			'nama_sayuran'	=> $nama_brg,
			'keterangan'	=> $keterangan,
			'kategori'		=> $kategori,
			'harga'			=> $harga,
			'stok'			=> $stok
		);

		$where = array(
			'id_sayuran' => $id
		);

		$this->model_barang->update_data($where,$data,'sayuran');
		redirect('admin/data_barang/index');
	}

	public function hapus($id){
		$where = array('id_sayuran' => $id);
		$this->model_barang->hapus_data($where, 'sayuran');
		redirect('admin/data_barang/index');
	}
}