<div class="container-fluid">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="btn btn-sm btn-success">
                <?php 
                $grand_total = 0;
                if ($keranjang = $this->cart->contents())
                {
                    foreach ($keranjang as $item)
                    {
                        $grand_total = $grand_total + $item['subtotal'];
                    }
                    echo "<h4>Total Belanja  Anda : Rp. ".number_format($grand_total,0,',','.');
                 ?>
            </div><br><br>

            <h3>Input Alamat Pengiriman dan Pembayaran</h3>
            
        <form method="POST" action="<?php echo base_url('dashboard/proses_pesanan') ?>">

        <div class="form-group">
            <label>Nama Lengkap</label>
            <input type="text" name="nama" placeholder="Nama Lengkap" class="form-control">
        </div>

        <div class="form-group">
            <label>Alamat Lengkap</label>
            <input type="text" name="alamat" placeholder="Alamat Lengkap" class="form-control">
        </div>

        <div class="form-group">
            <label>No. Telepon</label>
            <input type="text" name="no_tlp" placeholder="Nomor Telepon" class="form-control">
        </div>

        <div class="form-group">
            <label>Jasa Pengiriman</label>
            <select class="form-control">
                <option>JNE</option>
                <option>TIKI</option>
                <option>J&T Express</option>
            </select>
        </div>

        <div class="form-group">
            <label>pilih BANK</label>
            <select class="form-control">
                <option>BCA</option>
                <option>BNI</option>
                <option>BRI</option>
                <option>Mandiri</option>
            </select>
        </div>

        <button type="submit" class="btn btn-sm btn-primary mb-3">Pesan</button>
                </div>
                </form>

                <?php
                } else {
                    echo "Keranjang Belanja Anda Masih Kosong";
                }
                ?>

        <div class="col-md-2"></div>
    </div>
</div>