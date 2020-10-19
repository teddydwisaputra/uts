<?php
//memasukkan file koneksi
include 'koneksi.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>Search Engine</title>
</head>
<body><style>form {
    width:500px;
    margin:50px auto;
}
.search {
    padding:8px 15px;
    background:rgba(50, 50, 50, 0.2);
    border:0px solid #dbdbdb;
}
.button {
    position:relative;
    padding:6px 15px;
    left:-8px;
    border:2px solid #53bd84;
    background-color:#53bd84;
    color:#fafafa;
}
.button:hover  {
    background-color:#fafafa;
    color:#207cca;
}
</style>

	<center><img src="mk.jpg" alt="Image" height="189" width="133">
	<h1>DIREKTORI PUTUSAN KASASI</h1>
	<h2>Masukkan Nama Kasus Yang Ingin Dicari</h2>
	<form action="" method="post">
		<form>
  <input class="search" type="text" placeholder="Cari..." required>	
  <input class="button" type="button" value="Cari">		
</form>
	</form><h3>Kasus Perkara</h3>
	<p>Pidana Militer</p>
	<p>Perdata Khusus</p>
	<p>Perdata Agama</p>
	<p>Pidana Umum</p>
	<p>Pajak</p></center>
	
<?php
if(isset($_GET['cari']))
{
    // set $connect
    $search = mysqli_real_escape_string($koneksi, $_GET['cari']);
    $query = "SELECT * FROM pidana_militer '$cari'";
    $result = mysqli_query($koneksi, $query);
    // cek $result dan tampilkan jika ada hasil
}
?>


</body>
</html>