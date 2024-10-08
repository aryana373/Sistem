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
            <h1>Data Member</h1>
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
               <div class="card-body">
                  <div id="cari_member" >
                   <form role="form" method="post" action="" id="form_cari_member">
                       <div class="card-body ">
                          
                             <div class="row">
                                <div class="col-sm-8">
                                  <div class="form-group">
                                   <input name="nama" id="nama"  type="text" class="form-control" placeholder="Masukan nama member" >
                                  </div>                              
                                </div>
                                <div class="col-sm-4">
                                  <div class="form-group">
                                    <button type="button" id="btn_cari_member" class="btn btn-primary">Cari Member</button>
                                    <a type="button" href="<?php echo base_url();?>Surket/menu_cari_slims" class="btn btn-success">Lihat Surat</a>
                                     
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
                  <div id="data_member">
                  
                    
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

  $('#input_surat').addClass("active");


   $('#btn_cari_member').click(function(event) {
        $('#preloader').css('display','block');
            var nama = $('#form_cari_member').find('#nama').val();

          

             $.post( "<?php echo base_url();?>"+"Surket/cariMember/"+nama, function(data) {
                $('#preloader').css('display','none');
                $('#data_member').html(data);
                $("#example1").DataTable({
                          "responsive": true, "lengthChange": false, "autoWidth": false,
                          "buttons": ["copy", "csv", "excel", "pdf"]
                        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
             });
             
    }); 

   // function detail_surket(id) {
      

   //          $('#modalAddSurket').modal();
   //          $.get("<?php echo base_url();?>"+"Surket/detail_member/"+id, function(detail) {
   //          var detail=jQuery.parseJSON(detail+"");
   //            $('#detail_nama').val(detail.member_name);
   //            $('#detail_institusi').val(detail.inst_name);
   //            $('#detail_id').val(detail.member_id);
              
              
            
   //            //console.log(lokasi.nama);
   //          });


   //  }
   // function add_surket(id) {
            
   //        $('#preloader').css('display','block');
   //        $.post("<?php echo base_url();?>"+"Surket/cetak/"+id, function(data) {
   //              $('#form-create-data').trigger("reset");
   //              $('#preloader').css('display','none');
   //              $('#main-content').html(data);
   //              //dataTable();
   //              //console.log(data);
   //          }); 
            
       
   // }
  

  // var Toast = Swal.mixin({
  //     toast: true,
  //     position: 'top-end',
  //     showConfirmButton: false,
  //     timer: 3000
  //   });



   // $('#input').click(function(event) {
   //      $('#inputkatalog').show('slow');
   //      $('#input').css('display','none');
   //  });
   //  $('#batal').click(function(event) {
   //      $('#inputkatalog').css('display','none');
   //      $('#input').css('display','block');
   //  });
   //  $('#batal2').click(function(event) {
   //      $('#editkatalog').css('display','none');
   //      $('#input').css('display','block');
   //  });


  // validasi

//   $(function () {
  
//   $('#form-create-katalog').validate({
//     rules: {
//       add_harga: {
//         required: true,
//         digits: true
//       },
//       add_judul: {
//         required: true,
//       },
//       add_pengarang: {
//         required: true,
//       },
//       add_penerbit: {
//         required: true,
//       },
//       add_tahun: {
//         required: true,
//       },
//       add_bahasa: {
//         required: true,
//       },
//     },
//     messages: {
//       add_harga: {
//         required: "Form Masih Kosong!!",
//       },
//       add_judul: {
//         required: "Form Masih Kosong!!",
//       },
//       add_pengarang: {
//         required: "Form Masih Kosong!!",
//       },
//       add_penerbit: {
//         required: "Form Masih Kosong!!",
//       },
//       add_tahun: {
//         required: "Form Masih Kosong!!",
//       },
//       add_bahasa: {
//         required: "Form Masih Kosong!!",
//       },
//     },
//     errorElement: 'span',
//     errorPlacement: function (error, element) {
//       error.addClass('invalid-feedback');
//       element.closest('.form-group').append(error);
//     },
//     highlight: function (element, errorClass, validClass) {
//       $(element).addClass('is-invalid');
//     },
//     unhighlight: function (element, errorClass, validClass) {
//       $(element).removeClass('is-invalid');
//     }
//   });
// });

 

   


   // $('#btn-add-katalog').click(function(event) {
           
            
           
   //          var judul = $('#inputkatalog').find('#add_judul').val();
   //          var pengarang = $('#inputkatalog').find('#add_pengarang ').val();
   //          var penerbit = $('#inputkatalog').find('#add_penerbit').val();
   //          var tahun = $('#inputkatalog').find('#add_tahun').val();
   //          var harga = $('#inputkatalog').find('#add_harga').val();
   //          var bahasa = $('#inputkatalog').find('#add_bahasa').val();
   //          var isbn = $('#inputkatalog').find('#add_isbn').val();

   //          if (judul==''|| pengarang==''|| penerbit==''|| tahun==''|| harga==''|| bahasa==''|| isbn=='') {
   //              $("#eror").html('Data belum lengkap !!!');
   //              $('#modalWarning-user').modal();
   //          } 

   //          else {
   //                $('#inputkatalog').css('display','none');
   //                $('#preloader').css('display','block');
   //                 // $('#tabel-katalog').css('display', 'none');
   //                 $.post( "<?php echo base_url();?>"+"Buku/tambah_katalog/", {judul: judul, pengarang:pengarang, penerbit: penerbit, tahun: tahun,harga:harga, bahasa:bahasa, isbn:isbn }, function(data) {
   //                      $('#form-create-katalog').trigger("reset");
   //                      $('#input').css('display','block');
                        
   //                      $('#tables-katalog').html(data);
                        
   //                      $("#example1").DataTable({
   //                        "responsive": true, "lengthChange": false, "autoWidth": false,
   //                        "buttons": ["copy", "csv", "excel", "pdf"]
   //                      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
   //                      $('#preloader').css('display','none');

   //                      // Toast.fire({
   //                      //     icon: 'success',
   //                      //     title: 'Data Berhasil Disimpan!!'
   //                      //   })
   //                      toastr.success('Data Katalog Baru Berhasil Disimpan!!')
   //                  }); 

   //          }

             

   //      });

  

  // function editBuku(id){
  //   $("#editkatalog").show('slow');
  //   $('#input').css('display','none');
  //   $('#inputkatalog').css('display','none');

  //    $.get("<?php echo base_url();?>"+"Buku/detail_buku/"+id, function(detail) {
  //           var detail=jQuery.parseJSON(detail+"");
  //             $('#edit_judul').val(detail.judul);
  //             $('#edit_pengarang').val(detail.pengarang);
  //             $('#edit_penerbit').val(detail.penerbit);
  //             $('#edit_tahun').val(detail.tahun);
  //             $('#edit_harga').val(detail.harga);
  //             $('#edit_bahasa').val(detail.bahasa);
  //             $('#edit_isbn').val(detail.isbn);
              

  //           $('#btn-edit-katalog').click(function(event) {

  //                 var judul = $('#editkatalog').find('#edit_judul').val();
  //                 var pengarang = $('#editkatalog').find('#edit_pengarang ').val();
  //                 var penerbit = $('#editkatalog').find('#edit_penerbit').val();
  //                 var tahun = $('#editkatalog').find('#edit_tahun').val();
  //                 var harga = $('#editkatalog').find('#edit_harga').val();
  //                 var bahasa = $('#editkatalog').find('#edit_bahasa').val();
  //                 var isbn = $('#editkatalog').find('#edit_isbn').val();
            
            
  //            if (judul==''|| pengarang==''|| penerbit==''|| tahun==''|| harga==''||harga<=0|| bahasa==''|| isbn=='') {
  //               $("#eror").html('Data belum lengkap !!!');
  //               $('#modalWarning-user').modal();
  //               } 

  //            else {
  //                   $('#preloader').css('display','block');
  //                   $('#editkatalog').css('display', 'none');


                        
  //                      $.post("<?php echo base_url();?>"+"Buku/update_buku/", {id:id,judul: judul, pengarang:pengarang, penerbit: penerbit, tahun: tahun,harga:harga, bahasa:bahasa, isbn:isbn }, function(data, textStatus, xhr) {

  //                            Toast.fire({
  //                               icon: 'success',
  //                               title: 'Data Katalog Berhasil Dirubah!!'
  //                             })
                            
  //                           $('#input').css('display','block');
                        
  //                           $('#tables-katalog').html(data);
                            
  //                           $("#example1").DataTable({
  //                             "responsive": true, "lengthChange": false, "autoWidth": false,
  //                             "buttons": ["copy", "csv", "excel", "pdf"]
  //                           }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
  //                           $('#preloader').css('display','none');

                           
                            
  //                       }); 


  //                  }
            
            
  //           }); 
  //       });
  //       }
    

   

</script>