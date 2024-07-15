


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
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper ">

    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Proses Sinkronisasi</h1>
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
               <div class="card-body overlay-wrapper">
     
              <div class="card-body">     
              <h5><b>Total data yang akan disinkronkan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <?php echo $jumlah_buku ?></b></h5>
             </div> 

             <div class="card-body">  
               <!-- <a href="<?php echo base_url();?>Buku/sync" class="btn btn-success btn-flat" type="button" data-toggle="tooltip" >Mulai Sinkoronkan data</a> -->
             <?php if ($status_sync=='0') { ?>
                <button id="startButton" class="btn btn-success btn-flat">Mulai Sinkoronkan data</button>
              <?php } else{
                    echo 'Data sudah disinkron!!';
              } ?>
             </div> 

              
                  <div class="card-body ">
                      <div  class="progress">
                      <div id="progress" class="progress-bar bg-primary progress-bar-striped" role="progressbar"
                           aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:0%">
                        <span class="sr-only">40% Complete (success)</span>
                      </div>
                  </div>
                        
                       
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
  


   <!-- modal success -->
<div id="modalSuccess" class="modal " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static" data-keyboard="false">
   <div class="modal-dialog" role="document">
      <div class="modal-content">
        

         <div class="modal-body">
             <div class="form-group">
                 <div class="card-body ">
                  <div style="text-align:center;">
                      <h3>Data Berhasil Disinkronisasi!!</h3>
                  </div>

                
                        
                  </div>
              </div>
         </div>
         <div class="modal-footer">
            <div class="btn-group">
               <a href="<?php echo base_url();?>Buku/hasil_rekomendasi_view_slims" class="btn btn-success btn-flat" type="button" data-toggle="tooltip" >Tutup</a>
              
            </div>
         </div>
         
   </div>
</div>
</div>


 


  
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
<script type="text/javascript">
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
   
    $('#preloader').css('display','none');
    $('#preloader2').css('display','none');
    
  });
</script>
</body>
</html>

<script src="<?php echo base_url('assets/AdminLTE/plugins/datatables-buttons/js/buttons.bootstrap4.min.js') ?>"></script>

<script src="<?php echo base_url('assets/AdminLTE/plugins/datatables-buttons/js/buttons.html5.min.js') ?>"></script>

 
 <script>

  $('#hasil').addClass("active");

 $(document).ready(function() {
            $('#startButton').click(function() {
                $('#startButton').css('display', 'none');
               



                $.ajax({
                    url: '<?php echo base_url();?>'+'Buku/Sync',
                    type: 'GET',
                    success: function(response) {
                        console.log(response);
                    }
                });

                
            });
            var interval = setInterval(function() {
                    $.ajax({
                        url: '<?php echo base_url();?>'+'Buku/get_progress',
                        type: 'GET',
                        success: function(data) {
                            var result = JSON.parse(data);
                            $('#progress').css('width', result.progress+'%');

                            if (result.progress >= 100) {
                                clearInterval(interval);
                                 $('#modalSuccess').modal();
                            }
                        }
                    });
                }, 1000);
        });



  

</script>