<?php
include "koneksi.php";
$query = mysqli_query($koneksi,"SELECT * FROM pidana_militer");
?>
<form action="" method="post">
    <table border="1" cellpadding="0" cellspacing="0">
        <tr>
            <th>No</th>
            <th>Putusan</th>
            <th>Pilihan</th>
        </tr>
        <?php if(mysqli_num_rows($query)>0){ ?>
        <?php
            $no = 1;
            while($data = mysqli_fetch_array($query)){
        ?>
        <tr>
            <td><?php echo $no ?></td>
            <td><?php echo $data["putusan_pm"];?></td>
            <td><?php echo $data["pilihan_pm"];?></td>
            <td>
                <a href="https://putusan3.mahkamahagung.go.id/direktori/putusan/a7f5abe03118bf42280c49000331302c.html">Delete</a> |
                <a href="#">Update</a>
            </td>
        </tr>
        <?php $no++; } ?>
        <?php } ?>
    </table>
</form>
