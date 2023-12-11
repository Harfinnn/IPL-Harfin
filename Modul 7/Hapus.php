<?php
    $ID_Pesan = $_GET['ID_Pesan'];
    $conn = mysqli_connect("localhost","root","","pengelolaan_pesan");
    $sql = "delete from pesan where ID_Pesan ='$ID_Pesan'";
    if($res = mysqli_query($conn,$sql)){
        echo "Pesan berhasil dihapus";
        }else{
            echo "Pesan gagal dihapus";
        }
        header("location: Tampil.php");
?>