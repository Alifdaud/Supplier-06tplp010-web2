<?php
include('koneksi.php');

$nama       = "";
$alamat     = "";
$kode       = "";
$ukuran     = "";
$noHp       = "";
$sukses     = "";
$error      = "";

if (isset($_GET['op'])) {
    $op = $_GET['op'];
} else {
    $op = "";
}
if($op == 'delete'){
    $id         = $_GET['id'];
    $sql1       = "delete from tbl_supplier_alif where id = '$id'";
    $q1         = mysqli_query($koneksi,$sql1);
    if($q1){
        $sukses = "Berhasil hapus data";
    }else{
        $error  = "Gagal melakukan delete data";
    }
}
if ($op == 'edit') {
    $id         = $_GET['id'];
    $sql1       = "select * from tbl_supplier_alif where id = '$id'";
    $q1         = mysqli_query($koneksi, $sql1);
    $r1         = mysqli_fetch_array($q1);
    $nama       = $r1['nama_supplier_alif'];
    $alamat     = $r1['alamat_supplier_alif'];
    $kode       = $r1['kd_supplier_alif'];
    $noHp       = $r1['notlp_supplier_alif'];


    if ($nama == '') {
        $error = "Data tidak ditemukan";
    }
}
if (isset($_POST['simpan'])) { //untuk create
    $nama       =  $_POST['nama_supplier_alif'];
    $alamat     =  $_POST['alamat_supplier_alif'];
    $kode       =  $_POST['kd_supplier_alif'];
    $noHp       =  $_POST['notlp_supplier_alif'];

    if ( $nama && $alamat && $noHp && $kode ) {
        if ($op == 'edit') { //untuk update
            $sql1       = "UPDATE tbl_supplier_alif set nama_supplier_alif='$nama',alamat_supplier_alif = '$alamat',notlp_supplier_alif='$noHp',kd_supplier_alif='$kode' where id = '$id'";

            $q1         = mysqli_query($koneksi, $sql1);
            if ($q1) {
                $sukses = "Data berhasil diupdate";
            } else {
                $error  = "Data gagal diupdate";
            }
        } else { //untuk insert
            $sql1   = "INSERT into  tbl_supplier_alif(nama_supplier_alif,alamat_supplier_alif,notlp_supplier_alif,kd_supplier_alif) VALUES ('$nama','$alamat','$noHp','$kode')";

            $q1     = mysqli_query($koneksi, $sql1);
            if ($q1) {
                $sukses     = "Berhasil memasukkan data baru";
            } else {
                $error      = "Gagal memasukkan data";
            }
        }
    } else {
        $error = "Silakan masukkan semua data";
    }
}
?>