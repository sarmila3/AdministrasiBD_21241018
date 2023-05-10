-- menggunakan database dqlabmartbasic
use dqlabmartbasic;

-- cek table yang tersedia
show tables;

-- cek deskripsi tiap table
desc ms_pelanggan_dqlab;
desc ms_produk_dqlab;
desc tr_penjualan_dqlab;

-- select 1 kolom dari table ms_produk_dqlab
select nama_produk from ms_produk_dqlab;

-- select 1 kolom dari table ms_pelanggan dan tr_penjualan
select nama_pelanggan from ms_pelanggan_dqlab; -- mengambil kolom nama_palanggan
select nama tgl_transaksi from tr_penjualan_dqlab; -- mangambil kolom tanggal_transaksi

-- select 2 atau lebih kolom dari table ms_produk dqlab
select nama_produk, harga from ms_produk_dqlab;
-- mengambil kolom kode pelanggan, tanggal transaksi dan total harga dari table tr_penjualan_dqlab
select kode_pelanggan, tgl_transaksi, harga from tr_penjualan_dqlab;

-- mengambil seluruh kolom dalam table
-- ambil seluruh kolom pada table ms_pelanggan_dqlab
select * from ms_pelanggan_dqlab;

-- prefix dan Alias
-- prefix nama table
select ms_produk_dqlab.nama_produk, harga from ms_produk_dqlab;
-- prefix dari nama database dan table
select dqlabmartbasic.ms_produk_dqlab.nama_produk from ms_produk_dqlab;
-- Alias dari nama kolom
select nama_produk as np, harga as price from ms_produk_dqlab;
-- Alias dari nama table
select nama_produk from ms_produk_dqlab as msp;
-- Alias bertemu denga perfix
select msp.nama_produk from ms_produk_dqlab as msp;

-- case 1
select nama_pelanggan, alamat from ms_pelanggan_dqlab;

-- case 2
select nama_produk, harga from ms_produk_dqlab;