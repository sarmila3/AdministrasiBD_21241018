-- menggunakan SELECT statement untuk 1 nilai literal
select 77 as literalInteger; -- literal untuk bilangan bulat
select 'mataram' as kota; -- literal untuk char
select '2023/20/05' as date; -- literal untuk date
select 77 < 3 as booleanliteral; -- literal untuk boolean

-- menggunakan SELECT statement untuk 2 atau lebih literal
select 77 as angka, true as nilai_logika, 'UNDIKMA' as teks;

-- menggunakan SELECT  untuk NULL 
select NULL as kosong;
 
 -- menggunakan SELECT statement untuk operator matematika
 select 5%2 as sisa_bagi, 5/2 as hasil_bagi, 5 DIV 2 as hasil_bagi_int;
 -- LATIHAN 1
 select 4*2 as jawab_1, (4*8)%7 as jawab_2, (4*8) MOD 7 as jawab_3;
 
 -- Operator matematika untuk menghasilkan total beli (qty*harga) pada table tr_penjualan _dqlab
 use dqlabmartbasic;
 select qty*harga as total_beli from tr_penjualan_dqlab;
select nama_produk, qty*harga as total_beli from tr_penjualan_dqlab;
select nama_produk, qty, harga, qty*harga as total_beli from tr_penjualan_dqlab;

-- operator perbandingan
select 5=5, 5<>5, 5<>4, 5!=5, 5!=4, 5>4;

-- LATIHAN 2
select 1=true, 1=false, 5>=5, 5.2=5.20000, NULL=1, NULL=NULL;
select nama_produk, qty, qty >= 3 from tr_penjualan_dqlab;

-- fungsi POW(),ROUND(),FLOOR(),CEILING()
select POW (3,2), round(3.14), round(3.54),round(3.155, 1), round(2.155, 2), floor(4.28), floor(4.78), ceiling(4.39), ceiling(4.55);

-- fungsi now(), year(), datediff(), dan day()
select now(), year('2022-05-20'), datediff('2022-05-20', '2022-05-01'), day(now());
SELECT datediff('2003-03-03', '2023-05-20');

-- fungsi pada table tr_penjualan
-- mendapatkan lastest buy dari produk
select nama_produk, datediff(now(), tgl_transaksi) as latest_buy, year(tgl_transaksi) from tr_penjualan_dqlab;

-- klausal WHERE untuk filtering atau penyaringan
-- ambil nama_produk dan qty dari table tr_penjualan_dqlab yang qty lebih dari 2
select nama_produk, qty from tr_penjualan_dqlab WHERE qty>2;

-- LATIHAN 3
select tgl_transaksi, nama_produk, qty, harga, qty*harga as total_beli 
from tr_penjualan_dqlab where kode_pelanggan = 'dqlabcust07' and qty > 1;

-- penggunaan LIKE  pada statement SELECT
-- cari semua nama produk yang namanya diawali huruf 'F'
select nama_produk from tr_penjualan_dqlab where nama_produk like 'f%';

-- LATIHAN MANDIRI
select nama_produk from tr_penjualan_dqlab
where nama_produk LIKE '_a%';

select kategori_produk from ms_produk_dqlab
where kategori_produk LIKE '%t%';

select kategori_produk from ms_produk_dqlab
where kategori_produk LIKE '&un%';




