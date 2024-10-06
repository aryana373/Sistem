<!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/datatables-buttons/css/buttons.bootstrap4.min.css') ?>">

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Sistem Surat Bebas Pustaka | Dashboard</title>

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
            <h1>Data Surat Keterangan Bebas Pustaka</h1>
          </div>
          
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            
               <div class="card" id="tables-katalog">      
              <!-- /.card-header -->
                <div class="card-body overlay-wrapper">
       
                  <div id="preloader" class="overlay" style="text-align: center;"><i class="fas fa-3x fa-sync-alt fa-spin"></i><div class="text-bold pt-2">Loading...</div></div>
                  <div id="data_member">
                    <table style="text-align: justify;" id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr style="background:  #050354; color: white; text-align: center;">
                    <th style="width: 3%;">No</th>
                    <th >Id Member</th>
                    <th style="width: 45%;">Nama</th>
                    <th>Tanggal dibuat</th>
                    <th>Cetak</th>
                  </tr>
                  </thead>
                  <tbody>
                  <?php $i=1; ?>
                 <?php foreach ($surket->result() as $row): ?>
                    <tr>
                       <td style="text-align: center;"><?php echo $i; $i++; ?></td>
                       <td><?php echo $row->member_id; ?></td>
                       <td><?php echo $row->nama; ?></td>
                       <td><?php echo $row->tanggal_buat; ?></td>
                       <td style=" width: 100px;text-align: center;">
                            <div class="btn-group">  
                                 <a href="<?php echo base_url();?>Surket/cetak/<?php echo $row->member_id; ?>" class="btn btn-primary btn-flat" type="button" data-toggle="tooltip" title="tambah surat bebas pustaka"><i class="fa fa-pen"></i></a>

                                 
                                 
                                
                            </div>
                        </td>
                   
                  </tr>
                  <?php endforeach; ?>
                  </tbody>
                  
                </table>
                  
                    
                  </div>

    
                </div>
                <!-- /.card-body -->
            </div>

            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>

  <!-- modal detail -->
<div id="modalAddSurket" class="modal " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static" data-keyboard="false">
   <div class="modal-dialog" role="document">
      <div class="modal-content">
        

         <div class="modal-body">
             <div class="form-group">
                <form role="form" method="post" action="" >
                 <div class="card-body ">
                        
                           <div class="row">
                              <div class="col-sm-12">
                                <div class="form-group">
                                 <label >Nama Lengkap</label>
                                  <input id="detail_nama" type="text" class="form-control"  readonly >        
                               </div>
                               <div class="form-group">
                                 <label >Id Member</label>
                                  <input id="detail_id" type="text" class="form-control"  readonly >        
                               </div>
                               <div class="form-group">
                                 <label >Institusi</label>
                                  <input id="detail_institusi" type="text" class="form-control"  readonly >        
                               </div>
                              </div> 
                          </div> 
                      </div>


                </form>
              </div>
         </div>
         <div class="modal-footer">
            <div class="btn-group">
               <button type="button" onclick="add_surket();" class="btn btn-success btn-flat" data-dismiss="modal">Buat Surat Bebas Pustaka</button>
               <button type="button" class="btn btn-danger btn-flat" data-dismiss="modal">Batal</button>
              
            </div>
         </div>
         
   </div>
</div>
</div>

  
  

  

   


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
<script src="<?php echo base_url('assets/AdminLTE/plugins/datatables/jquery.dataTables.min.js') ?>"></script>
<script src="<?php echo base_url('assets/AdminLTE//plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') ?>"></script>
<script src="<?php echo base_url('assets/AdminLTE/plugins/datatables-responsive/js/dataTables.responsive.min.js') ?>"></script>
<script src="<?php echo base_url('assets/AdminLTE/plugins/datatables-responsive/js/responsive.bootstrap4.min.js') ?>"></script>
<script src="<?php echo base_url('assets/AdminLTE/plugins/datatables-buttons/js/dataTables.buttons.min.js') ?>"></script>
<script src="<?php echo base_url('assets/AdminLTE/plugins/datatables-buttons/js/buttons.bootstrap4.min.js') ?>"></script>
<script src="<?php echo base_url('assets/AdminLTE/plugins/jszip/jszip.min.js') ?>"></script>
<script src="<?php echo base_url('assets/AdminLTE/plugins/pdfmake/pdfmake.min.js') ?>"></script>
<script src="<?php echo base_url('assets/AdminLTE/plugins/pdfmake/vfs_fonts.js') ?>"></script>
<script src="<?php echo base_url('assets/AdminLTE/plugins/datatables-buttons/js/buttons.html5.min.js') ?>"></script>
<script src="<?php echo base_url('assets/AdminLTE/plugins/datatables-buttons/js/buttons.print.min.js') ?>"></script>

<!-- jquery-validation -->
<script src="<?php echo base_url('assets/AdminLTE/plugins/jquery-validation/jquery.validate.min.js') ?>"></script>
<script src="<?php echo base_url('assets/AdminLTE/plugins/jquery-validation/additional-methods.min.js') ?>"></script>
<script src="<?php echo base_url('assets/AdminLTE/plugins/sweetalert2/sweetalert2.min.js') ?>"></script>
<script src="<?php echo base_url('assets/AdminLTE/plugins/toastr/toastr.min.js') ?>"></script>
 <script>

  $('#cari_surat').addClass("active");



   

</script>