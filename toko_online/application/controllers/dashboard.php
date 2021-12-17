<?php 

class Dashboard extends CI_Controller {

    public function index()
    {
        $data['barang'] = $this->model_barang->tampil_data()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('dashboard', $data);
        $this->load->view('templates/footer');
    }

    public function tambah_ke_keranjang($id)
    {
    	$barang = $this->model_barang->find($id);

    	$data = array(
        	'id'      => $barang->id_sayuran,
       		'qty'     => 1,
        	'price'   => $barang->harga,
        	'name'    => $barang->nama_sayuran
        
	);

	$this->cart->insert($data);
	redirect('dashboard');
    
    }

    public function detail_keranjang()
    {
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('keranjang');
        $this->load->view('templates/footer');
     }
}