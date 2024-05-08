<?php
$servername = "localhost";
$database = "inviteme_jurnal";
$username = "inviteme_jurnal";
$password = "jurnal";

// untuk tulisan bercetak tebal silakan sesuaikan dengan detail database Anda
// membuat koneksi
$conn = mysqli_connect($servername, $username, $password, $database);
// mengecek koneksi
if (!$conn) {
    die("Koneksi gagal: " . mysqli_connect_error());
}

?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title> Validasi Surat Keterangan</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="AdminLTE/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="AdminLTE/dist/css/AdminLTE.min.css">

</head>
<body class="hold-transition skin-blue sidebar-mini">

 <div id="editor-wrapper" class="col-md-4 col-sm-4 col-xs-12" >

 

  
     
    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="box box-info">
        <?php 

                  $sql='select * from surat where qr_name="'. $_GET["qr"].'"';
                  
                  $hasil=mysqli_query($conn,$sql);
                  while ($data = mysqli_fetch_array($hasil)) {
                 

                  ?>
            <div style="font-family: 'Times New Roman', Times, serif; text-align: center" class="box-header">

            <!-- <img style="width:100%" src="Capture.JPG"> -->

            <b>PEMERIKSAAN KEASLIAN LoA</p>
            </div>
            <hr>
            <div class="box-body">
              
              <table style="width: 100%; font-family: 'Times New Roman', Times, serif;">
                   <tr>
                    <td style="width:35%;"><b>Judul</b></td> 
                    <td><?php echo $data["judul"]; ?></td> 
                  </tr>
                  <tr>
                    <td><hr></td>
                    <td><hr></td>
                  </tr>
                   <tr>
                    <td ><b>Vol dan No</b></td> 
                    <td><?php echo $data["vol"]; ?></td> 
                  </tr>
                  <tr>
                    <td><hr></td>
                    <td><hr></td>
                  </tr>
                  <tr>
                    <td><b>Nama</b></td> 
                    <td><?php echo $data["nama"]; ?></td> 
                  </tr>
                 
                  
                  


                 
              </table>
               <br>
               <div class="box-body" style="text-align: center">
               <br>
                 <img style="width:50%" src="ver.gif"><br>
               <br>

               <p>LoA dibuat di Denpasar tanggal <?php echo date('d F Y', strtotime($data["tanggal"]));  ?> </p>
               </div>
                   <?php 
                  }
                  ?> 
            </div>
            <!--<div class="box-footer clearfix">-->
            <!--  <button type="button" class="pull-right btn btn-default" > Go Home-->
            <!--    <i class="fa fa-arrow-circle-right"></i></button>-->
            <!--</div>-->
          </div>

    </section>
 
 

  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="AdminLTE/jquery-2.2.3.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->

<!-- Bootstrap 3.3.6 -->
<script src="AdminLTE/bootstrap/js/bootstrap.min.js"></script>




</body>
</html>
