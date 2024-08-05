

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
  <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/datatables-buttons/css/buttons.bootstrap4.min.css') ?>">
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper ">
<!-- Content Wrapper. Contains page content -->
  
    <!-- Content Header (Page header) -->
    <!-- <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Hasil Proses Seleksi</h1>
          </div>
          
        </div>
      </div>
    </section> -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            

            <div class="card">
              <div class="card-body">     
              <h6>Total Anggaran&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <?php echo $anggaran;  ?></h6>
              <h6>Total Harga Buku Terpilih&nbsp;: <?php echo $total_terpilih;  ?></h6>
             

              <h6><b>Sisa Anggaran&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <?php echo $sisa;  ?></b></h6>
             </div> 

             <div class="card-body">  
             <?php if ($tahapan=='0') { ?>
              <h6 style="color:red;">Seleksi Duplikat <i class="icon fas fa-ban"></i></h6>
              <h6 style="color:red;">Seleksi Tahun   <i class="icon fas fa-ban"></i> </h6>
             <?php } else if ($tahapan=='1')  {?>   
              <h6 style="color:green;">Seleksi Duplikat <i class="icon fas fa-check"></i></h6>
              <h6 style="color:red;">Seleksi Tahun   <i class="icon fas fa-ban"></i> </h6>
             <?php } else {  ?>
              <h6 style="color:green;">Seleksi Duplikat <i class="icon fas fa-check"></i></h6>
              <h6 style="color:green;">Seleksi Tahun   <i class="icon fas fa-check"></i> </h6>

               
              <a href="<?php echo base_url();?>Buku/menu_sync_slims" class="btn btn-primary btn-flat" type="button" data-toggle="tooltip" title="tambah surat bebas pustaka">Sinkoronkan dengan database koleksi buku</a>

               <?php }  ?>
              
              
             </div> 

              <!-- /.card-header -->
               <div class="card-body overlay-wrapper">
     
                  <div id="preloader" class="overlay"><i class="fas fa-3x fa-sync-alt fa-spin"></i><div class="text-bold pt-2">Loading...</div></div>
                <table id="example1" class="table table-bordered table-striped" style="font-size: 13px;">
                  <thead>
                  <tr style="background:  #551E1E; color: white; text-align: center; ">
                    <th style="width: 4%;">No</th>
                    <th style="width: 40%;">Judul</th>
                    <th>Pengarang</th>
                    <th>tahun</th>
                    <th>jumlah</th>
                    <th>Total Harga</th>
                    <th>Aksi</th>
                  </tr>
                  </thead>
                  <tbody>
                  <?php $i=1; ?>
                 <?php foreach ($buku->result() as $row): ?>
                    <tr>
                       <td style="text-align: center;"><?php echo $i; $i++; ?></td>
                       <td><?php echo $row->judul; ?></td>
                       <td><?php echo $row->pengarang; ?></td>
                       <td><?php echo $row->tahun; ?></td>
                       <td><?php echo $row->jumlah; ?></td>
                       <td><?php echo $row->total_harga; ?></td>
                       <td style=" width: 100px;text-align: center;">
                            <div class="btn-group">
                                 <button onclick="detail(<?php echo $row->id_buku; ?>);" class="btn btn-primary btn-flat" type="button" data-toggle="tooltip" title="Detail"><i class="fa fa-search"></i></button>  
                            </div>
                        </td>
                   
                  </tr>
                  <?php endforeach; ?>
                  </tbody>
                  
                </table>
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
  


   <!-- modal detail -->
<div id="modalDetail" class="modal " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static" data-keyboard="false">
   <div class="modal-dialog" role="document">
      <div class="modal-content">
        

         <div class="modal-body">
             <div class="form-group">
                <form role="form" method="post" action="" >
                 <div class="card-body ">
                        
                           <div class="row">
                              <div class="col-sm-12">
                                <div class="form-group">
                                 <label >Judul Buku</label>
                                 <textarea id="detail_judul"  type="" class="form-control" rows="3"  readonly></textarea>                                 
                               </div>
                              </div>
                              <div class="col-sm-6">
                                
                                <div class="form-group">
                                 <label >Pengarang</label>
                                 <input id="detail_pengarang" type="text" class="form-control"  readonly >
                                </div> 
                                <div class="form-group">
                                 <label >Penerbit</label>
                                 <input  id="detail_penerbit" type="text" class="form-control"  readonly>
                                </div>
                                <div class="form-group">
                                 <label >Tanggal Input</label>
                                 <input id="detail_tgl" type="text" class="form-control"  readonly>
                                </div>  
                                 <div class="form-group">
                                 <label >ISBN</label>
                                 <input id="detail_isbn" type="text" class="form-control"  readonly>
                                </div>

                              </div>
                              <div class="col-sm-6">
                                <div class="form-group">
                                 <label >Tahun</label>
                                 <input id="detail_tahun" type="text" class="form-control"  readonly>
                                </div>
                              <div class="form-group">
                                 <label >Harga</label>
                                 <input id="detail_harga" type="text" class="form-control"  readonly>
                                </div>
                              <div class="form-group">
                                 <label >Bahasa</label>
                                 <input id="detail_bahasa" type="text" class="form-control"  readonly>
                                </div>                          
                              </div>
                               
                          </div> 
                      </div>


                </form>
              </div>
         </div>
         <div class="modal-footer">
            <div class="btn-group">
               <button type="button" id="btn-cancel" class="btn btn-default btn-flat" data-dismiss="modal">Tutup</button>
              
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
 
 <script>

  $('#hasil').addClass("active");


  function detail(id) {
      

            $('#modalDetail').modal();
            $.get("<?php echo base_url();?>"+"Buku/detail_buku/"+id, function(detail) {
            var detail=jQuery.parseJSON(detail+"");
              $('#detail_judul').val(detail.judul);
              $('#detail_pengarang').val(detail.pengarang);
              $('#detail_penerbit').val(detail.penerbit);
              $('#detail_tgl').val(detail.tgl_input);
              $('#detail_tahun').val(detail.tahun);
              $('#detail_harga').val(detail.harga);
              $('#detail_bahasa').val(detail.bahasa);
              $('#detail_isbn').val(detail.isbn);
              
            
              //console.log(lokasi.nama);
            });


    }

  

</script>