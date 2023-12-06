<?php
    $ID_Pesan=$_POST['ID_Pesan'];
    $ID_Pengirim=$_POST['ID_Pengirim'];
    $ID_Penerima=$_POST['ID_Penerima'];
    $Judul=$_POST['Judul'];
    $TextPesan=$_POST['TextPesan'];
    $Date = date('Y-m-d H:i:s');

    $conn = mysqli_connect("localhost","root","","pengelolaan_pesan");
    $sql = "insert into pesan values
    ('$ID_Pesan','$ID_Pengirim','$ID_Penerima','$Judul','$TextPesan','$Date')";
        if($res = mysqli_query($conn,$sql)){
            echo "Pesan berhasil ditambahkan";
        }else{
            echo "Pesan gagal ditambahkan";
    }
?>