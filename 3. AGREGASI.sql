-- FUNGSI AGREGASI
-- MENGHITUNG PENJUALAN NILAI QTY SELURUH ROW PADA TABLE PENJUALAN
use dqlabmartbasic;
select sum(qty) from tr_penjualan_dqlab;
select sum(nama_produk) from tr_penjualan_dqlab; -- bisa tapi akan menghasilkan nilai 0

-- menghitung jumlah seluruh row pada tble penjualann
select count(*) from tr_penjualan_dqlab;

-- menghitung penjumlahan nilai qty dan jumlah row di table penjualan
select sum(qty), count(*) from tr_penjualan_dqlab;

-- menghitung rata2 qty, nilai max qty dan nilai min qty
select avg(qty), max(qty), min(qty) from tr_penjualan_dqlab;

-- menghitung jumlah nilai unik dari nama produk di table penjualan
select count(distinct nama_produk) from tr_penjualan_dqlab;
select count(*), count(distinct nama_produk) from tr_penjualan_dqlab;

-- GROUP BY
-- mengambil grouping nilai dari kolom nama produk dari tabel penjualan
select nama_produk from tr_penjualan_dqlab group by nama_produk;

-- mengambil nilai grouping dari kolom nama produk dan qty pada tabel penjualan
select nama_produk, qty from tr_penjualan_dqlab group by nama_produk, qty order by qty desc;

-- mengambil jumlah qty dari grouping nama produk terhadap seluruh row si tabel penjualan
select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk;

-- HAVING
-- mengambil jumlah qty di atas nilai 2 dari grouping nama produk terhadap seluruh row pada tabel penjualan
select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk having sum(qty) > 2;

-- LATIHAN MANDIRI
-- melihat daftar nama produk yang total jumlah produk terjual per kelompok nama produk adalah diatas nilai 4
select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk having sum(qty) > 4;

-- melihat daftar nama produk yang total jumlah produk terjual per kelompok nama produk sama dengan 9
select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk having sum(qty) = 9;

-- melihat daftar kelompok nama produk dan total nilai penjualan(harga dikalikan jumlah dikurangi diskon) dengan dan urutan berdasarkan nilaipenjualan terbesar
select nama_produk, qty, harga, diskon_persen, (harga*qty - diskon_persen/100)
from tr_penjualan_dqlab
group by nama_produk, qty
order by qty desc;

