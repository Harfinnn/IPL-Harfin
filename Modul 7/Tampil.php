<html>
    <body>
        <H1>Tampilan Pesan</H1>
        <table border="3">
            <tr>
                <th>ID Pesan</th>
                <th>ID Penerima</th>
                <th>ID Pengirim</th>
                <th>Judul</th>
                <th>Pesan</th>
                <th>Waktu Pesan</th>
                <th>Action</th>
            </tr>
            <?php
            $koneksi=mysqli_connect("localhost","root","","pengelolaan_pesan") or 
            die("Gagal Koneksi Database");
            $query="select*from pesan";
            $data = mysqli_query($koneksi,$query) or die("Gagal query:".$query);
            ?>
            <?php while($v=mysqli_fetch_array($data)):;?>
            <tr>
                <td><?php echo $v["ID_Pesan"];?></td>
                <td><?php echo $v["ID_Penerima"];?></td>
                <td><?php echo $v["ID_Pengirim"];?></td>
                <td><?php echo $v["Judul"];?></td>
                <td><?php echo $v["TextPesan"];?></td>
                <td><?php echo $v["Date"];?></td>
                <td><a href="Hapus.php? ID_Pesan=<?php echo $v["ID_Pesan"];?>">Hapus</a>
            </tr>
            <?php endwhile;?>
        </table>
        <a href="TambahPesan.php">Tambah</a>
    </body>
</html>
