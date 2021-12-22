<div class="container-fluid">

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active" ></li>
             <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
         </ol> 
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="<?php echo base_url('assets/img/slider1.jpg')?>" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="<?php echo base_url('assets/img/slider2.jpg')?>" class="d-block w-100" alt="...">
            </div>
          </div>
        </div>

<div class="container-fluid">
	<div class="row text-center mt-3">

		<?php foreach ($barang as $brg) : ?>

			<div class="card ml-3 mt-3" style="width: 16rem;">
        <img src="<?php echo base_url().'/assets/img/'.$brg->gambar ?>" class="card-img-top" alt="...">
        <div class="card-body">
        <h5 class="card-title"><?php echo $brg->nama_sayuran ?></h5>
        <small><?php echo $brg->keterangan ?></small><br>
        <span class="badge bg-success">Rp.<?php echo $brg->harga ?></span><br>
        <a href="#" class="btn btn-sm btn-primary">Tambah ke Keranjang</a>
        <a href="#" class="btn btn-sm btn-success">Detail</a>
      </div>
    </div>

		<?php endforeach; ?>
	
	</div>
</div>