<?php

if (isset($_GET['p'])) {
    if ($_GET['p'] == 'tampil') {
        echo $_POST['nama'];
        echo "<br/>";
        echo $_POST['password'];

    } else if ($_GET ['p'] == "pesan") {
        echo "Hi World" .$_POST['nama'];
        echo "<br/>";
        echo "Password Anda Adalah ".$_POST['password'];
    } else if ($_GET ['p'] == "aman") {
        if (!empty( $_POST['nama'])) {
            echo $_POST['nama'];
        } else {
            echo "nama belum dimasukan";
        }
        echo "<br/>";
        if (!empty( $_POST['password'])) {
            echo $_POST['password'];
        } else {
            echo "password kosong";
        }
    } else if ($_GET ['p']== "gambar") {
        $size = getimagesize($_FILES['berkas']['tmp_name']);
        $image = "data:". $size['mime']. ";base64".
            base64_encode(file_get_contents($_FILES['berkas']['tmp_name']));
        echo '<img src="'.$image.'"width=720px"/>';
    }
}   else {
    echo "Anda Tidak Boleh Mengakses Halaman Ini";
}
