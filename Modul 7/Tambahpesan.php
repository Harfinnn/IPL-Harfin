<!DOCTYPE html>
<html>
    <head>
        <title>Tambah Pesan</title>
    </head>
    <body>
        <h1>INPUT DATA</h1>
            <form action="SimpanPesan.php" method="post">
                <!—diasumsikan idPengirim = id user login, didapatkan
                dari session dan idpesan auto_increment dan tanggal adalah
                tanggal saat ini sehingga tidak perlu input -->

                <p> ID Pesan : <input type="text" name="ID_Pesan" ></p>
                <p> ID Penerima : <input type="text" name="ID_Penerima" ></p>
                <p> ID Pengirim : <input type="text" name="ID_Pengirim" ></p>
                <p> Judul : <input type="text" name="Judul" ></p>
                <p> Text Pesan : <textarea name="TextPesan" > </textarea></p>
            <input type="submit" name="submit" value="Simpan">
            </form>
    </body>
</html>