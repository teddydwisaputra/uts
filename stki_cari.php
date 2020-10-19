<h2>List Mahasiswa</h2>
<table border="1">
    <tr><th>NO</th><th>NIM</th><th>NAMA</th><th>GENDER</th><th>JURUSAN</th></tr>
    <?php
    include 'koneksi.php';
    $mahasiswa = mysqli_query($koneksi, "SELECT * from pidana militer");
    $no=1;
    foreach ($mahasiswa as $row){
        $jenis_kelamin = $row['jenis_kelamin']=='P'?'Perempuan':'Laki laki';
        echo "<tr>
            <td>$no</td>
            <td>".$row['id_militer']."</td>
            <td>".$row['putusan_pm']."</td>
            <td>".$row['pilihan_pm']."</td>
              </tr>";
        $no++;
    }
    ?>
</table>