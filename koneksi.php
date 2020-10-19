<?php
//silahkan rubah detail koneksi di bawah ini sesuai dengan server sobat
$koneksi = new mysqli("localhost", "id15087082_pengadilan", "Semarang@-12", "id15087082_putusan_mahkamah_agung");
if ($koneksi->connect_errno) {
    echo "Gagal melakukan koneksi ke database: " . $koneksi->connect_error;
}
?>