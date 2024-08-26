<!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/datatables-buttons/css/buttons.bootstrap4.min.css') ?>">

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Sistem Pengadaan Bahan Pustaka | Dashboard</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/fontawesome-free/css/all.min.css') ?>">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css') ?>">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/icheck-bootstrap/icheck-bootstrap.min.css') ?>">
  <!-- JQVMap -->
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/jqvmap/jqvmap.min.css') ?>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/dist/css/adminlte.min.css') ?>">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/overlayScrollbars/css/OverlayScrollbars.min.css') ?>">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/daterangepicker/daterangepicker.css') ?>">
  <!-- summernote -->
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/summernote/summernote-bs4.min.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css') ?>">
  <!-- Toastr -->
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/toastr/toastr.min.css') ?>">
<body class="hold-transition layout-top-nav">
<div class="wrapper ">



  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      

    
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      
    </ul>
  </nav>
  <!-- /.navbar -->

 
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">

    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div style="text-align:center">
          <div class="col-sm-12">
            <h1 style="font-size:60px"><b>Digital </b>Library</h1>
          </div>
          
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="container-fluid">
        <div class="row">
          <div class="col-12">

            <div class="card">
              <!-- /.card-header -->
              <div class="card-body">
                
              <div id="search">
                 <form role="form" method="post" action="" id="form-cari">
                     <div class="card-body ">
                        
                           <div class="row">
                            <div class="col-sm-1">
                            </div>
                              <div class="col-sm-9">
                                <div class="form-group">
                                 <input  id="judul"  type="text" class="form-control" placeholder="Masukan Judul Buku" >
                                </div>
                                                               
                              </div>
                               <div class="col-sm-2">
                                <div class="form-group">
                                 <button type="button" id="cari" class="btn btn-success">Search</button>
                                </div>
                                                               
                              </div>
                              
                               
                          </div> 
                      </div>

                     
              
              </form>
              </div>


             
            </div>
            </div>
            

            <div class="card" id="tables-katalog">      
              <!-- /.card-header -->
              <div class="card-body overlay-wrapper">
     
                  <div id="preloader" class="overlay" style="text-align: center;"><i class="fas fa-3x fa-sync-alt fa-spin"></i><div class="text-bold pt-2">Loading...</div></div>

              <div class="row" id="hasil-cari">
              <?php foreach ($buku->result() as $row): ?>
                <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-info" style="text-align: center; width: 250px; height: 450px;">
                  <div class="inner">
                    <?php if ($row->image==NULL) { ?>
                      <img src="<?php echo base_url('slims/images/default/image.png') ?>" style="width: 200px; height: 300px;">
                   <?php } else{ ?>
                      <img src="<?php echo base_url('slims/images/docs/'). $row->image; ?>" style="width: 200px; height: 300px;">
                    <?php } ?>

                    <p><?php echo $row->title; ?></p>
                  </div>
                  
                  <a target="_blank" href="<?php echo base_url('slims/repository/'). $row->file_name ?>" class="small-box-footer">Baca Buku <i class="fas fa-arrow-circle-right"></i></a>
                </div>
              </div>
               <?php endforeach; ?>
             
            </div>


  
               
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>

  



 
   

   <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2022.</strong>
    All rights reserved.
    
  </footer>

</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="<?php echo base_url('assets/AdminLTE/plugins/jquery/jquery.min.js"') ?>"></script>
<!-- jQuery UI 1.11.4 -->
<script src="<?php echo base_url('assets/AdminLTE/plugins/jquery-ui/jquery-ui.min.js') ?>"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="<?php echo base_url('assets/AdminLTE/plugins/bootstrap/js/bootstrap.bundle.min.js') ?>"></script>


<!-- AdminLTE App -->
<script src="<?php echo base_url('assets/AdminLTE/dist/js/adminlte.js') ?>"></script>
<script src="<?php echo base_url('assets/AdminLTE/dist/js/pages/dashboard.js') ?>"></script>

</body>
</html>


 <script>

   $('#preloader').css('display','none');



   $('#input').click(function(event) {
        $('#inputkatalog').show('slow');
        $('#input').css('display','none');
    });
    $('#batal').click(function(event) {
        $('#inputkatalog').css('display','none');
        $('#input').css('display','block');
    });
    $('#batal2').click(function(event) {
        $('#editkatalog').css('display','none');
        $('#input').css('display','block');
    });

     $('#cari').click(function(event) {
      event.preventDefault();
        $('#preloader').css('display','block');
            var cari = $('#form-cari').find('#judul').val();
            
          
            $.post("<?php echo base_url();?>"+"Pusdig/cari/", {cari:cari}, function(data) {
                $('#preloader').css('display','none');
                $('#hasil-cari').html(data);
                dataTable(); 
             });
             
             
    }); 







   

</script>