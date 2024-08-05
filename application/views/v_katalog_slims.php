

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
    <!-- Content Header (Page header) -->
    <!-- <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Data Katalog</h1>
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
              <!-- /.card-header -->
              <div class="card-body">
                 <button id="input" type="button" class="btn bg-gradient-success btn float-right">Tambah Data </button></i></button>
                

              <div id="inputkatalog" style="display:none">
                 <form role="form" method="post" action="" id="form-create-katalog">
                     <div class="card-body ">
                        
                           <div class="row">
                              <div class="col-sm-6">
                                <div class="form-group">
                                 <label >Judul Buku</label>
                                 <input name="add_judul" id="add_judul"  type="text" class="form-control" placeholder="Masukan Judul Buku" >
                                </div>
                                <div class="form-group">
                                 <label >Pengarang</label>
                                 <input name="add_pengarang" id="add_pengarang" type="text" class="form-control"  placeholder="Pengarang" >
                                </div> 
                                <div class="form-group">
                                 <label >Penerbit</label>
                                 <input name="add_penerbit" id="add_penerbit" type="text" class="form-control"  placeholder="Penerbit" >
                                </div> 
                                <div class="form-group">
                                 <label >ISBN</label>
                                 <input name="add_isbn" id="add_isbn" type="text" class="form-control"  placeholder="ISBN" >
                                </div>                                 
                              </div>
                              <div class="col-sm-6">
                                <div class="form-group">
                                 <label >Tahun</label>
                                 <select name="add_tahun" id="add_tahun" class="form-control" >
                                  <option> </option>
                                    <?php
                                      for($i=1990; $i<= date('Y'); $i+=1){
                                      echo'<option value='.$i.'> '.$i.' </option>';
                                      }
                                      ?>
                                  </select>
                                </div>
                              <div class="form-group">
                                 <label >Harga</label>
                                 <input name="add_harga" id="add_harga" type="text" class="form-control"  placeholder="Harga Buku" >
                                </div>   
                              <div class="form-group">
                                 <label >Bahasa</label>
                                 <select name="add_bahasa" id="add_bahasa" class="form-control" >
                                  <option> </option>
                                  <option value='Indonesia'> Indonesia </option>
                                  <option value='Inggris'> Inggris </option>
                                  </select>
                                </div>                          
                              </div>
                               
                          </div> 
                      </div>

                     
                   
                <!-- /.card-body -->

                <div class="card-body float-right">
                  <button type="button" id="batal" class="btn btn-danger">Batal</button>
                  <button type="button" id="btn-add-katalog" class="btn btn-primary">Tambah</button>
                </div>
              </form>
              </div>


              <div id="editkatalog" style="display:none">
                 <form role="form" method="post" action="" id="form-edit-katalog">
                     <div class="card-body ">
                        
                           <div class="row">
                              <div class="col-sm-6">
                                <div class="form-group">
                                 <label >Judul Buku</label>
                                 <input id="edit_judul"  type="text" class="form-control" placeholder="Masukan Judul Buku" >
                                </div>
                                <div class="form-group">
                                 <label >Pengarang</label>
                                 <input id="edit_pengarang" type="text" class="form-control"  placeholder="Pengarang" >
                                </div> 
                                <div class="form-group">
                                 <label >Penerbit</label>
                                 <input id="edit_penerbit" type="text" class="form-control"  placeholder="Penerbit" >
                                </div>   
                                 <div class="form-group">
                                 <label >ISBN</label>
                                 <input id="edit_isbn" type="text" class="form-control"  placeholder="Penerbit" >
                                </div>                                
                              </div>
                              <div class="col-sm-6">
                                <div class="form-group">
                                 <label >Tahun</label>
                                 <select id="edit_tahun" class="form-control" >
                                
                                    <?php
                                      for($i=1990; $i<= date('Y'); $i+=1){
                                      echo'<option value='.$i.'> '.$i.' </option>';
                                      }
                                      ?>
                                  </select>
                                </div>
                              <div class="form-group">
                                 <label >Harga</label>
                                 <input id="edit_harga" type="text" class="form-control"  placeholder="Harga Buku" >
                                </div>   
                              <div class="form-group">
                                 <label >Bahasa</label>
                                 <select  id="edit_bahasa" class="form-control" >
                                  
                                  <option value='Indonesia'> Indonesia </option>
                                  <option value='Inggris'> Inggris </option>
                                  </select>
                                </div>                          
                              </div>
                               
                          </div> 
                      </div>

                     
                   
                <!-- /.card-body -->

                <div class="card-body float-right">
                  <button type="button" id="batal2" class="btn btn-danger">Batal</button>
                  <button type="button" id="btn-edit-katalog" class="btn btn-warning">Edit</button>
                </div>
              </form>
              </div>
                
            </div>
            </div>
            

            <div class="card" id="tables-katalog">      
              <!-- /.card-header -->
              <div class="card-body overlay-wrapper">
     
                  <div id="preloader" class="overlay" style="text-align: center;"><i class="fas fa-3x fa-sync-alt fa-spin"></i><div class="text-bold pt-2">Loading...</div></div>

  
                <table style="text-align: justify;" id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr style="background:  #050354; color: white; text-align: center;">
                    <th style="width: 3%;">No</th>
                    <th style="width: 45%;">Judul</th>
                    <th>Pengarang</th>
                    <th>tahun</th>
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
                       <td style=" width: 100px;text-align: center;">
                            <div class="btn-group">  
                                 <button onclick="detail(<?php echo $row->id_buku; ?>);" class="btn btn-primary btn-flat" type="button" data-toggle="tooltip" title="Detail"><i class="fa fa-search"></i></button>
                                 <button onclick="editBuku(<?php echo $row->id_buku; ?>);" class="btn btn-success btn-flat" type="button" data-toggle="tooltip" title="Edit"><i class="fa fa-edit"></i></button>
                                 <button onclick="deleteBuku(<?php echo $row->id_buku; ?>);" class="btn btn-danger btn-flat" type="button" data-toggle="tooltip" title="Hapus">
                                <i class="fa fa-trash"></i></button>
                                
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
   

  

  <!-- Modal Warning Product-->
      <div class="modal fade" id="modalWarning-user" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Delete Product</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div id="eror" class="modal-body">
            </div>
          <div class="modal-footer">
           <button type="button" class="btn btn-secondary" data-dismiss="modal">OK</button>   
          </div>
            </div>
        </div>
      </div>

  <!-- modal konfirmasi hapus -->
      <div id="modalDelete" class="modal " tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               
               <div class="modal-body">
                   Apakah anda ingin menghapus Data ini?
               </div> 
                <input id="idHapus"  type="text" hidden >
                
               <div class="modal-footer">
                  <div class="btn-group">
                     <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Tidak</button>
                     <button id="btn-delete" type="button" class="btn btn-danger btn-flat">Ya</button>
                  </div>
               </div>
            </div>
         </div>
      </div>

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
                              <div class="form-group">
                                 <label >ISBN</label>
                                 <input id="detail_isbn" type="text" class="form-control"  readonly>
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

<!-- jquery-validation -->
<script src="<?php echo base_url('assets/AdminLTE/plugins/jquery-validation/jquery.validate.min.js') ?>"></script>
<script src="<?php echo base_url('assets/AdminLTE/plugins/jquery-validation/additional-methods.min.js') ?>"></script>
<script src="<?php echo base_url('assets/AdminLTE/plugins/sweetalert2/sweetalert2.min.js') ?>"></script>
<script src="<?php echo base_url('assets/AdminLTE/plugins/toastr/toastr.min.js') ?>"></script>
 <script>

  $('#katalog').addClass("active");
  

  var Toast = Swal.mixin({
      toast: true,
      position: 'top-end',
      showConfirmButton: false,
      timer: 3000
    });



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


  // validasi

  $(function () {
  
  $('#form-create-katalog').validate({
    rules: {
      add_harga: {
        required: true,
        digits: true
      },
      add_judul: {
        required: true,
      },
      add_pengarang: {
        required: true,
      },
      add_penerbit: {
        required: true,
      },
      add_tahun: {
        required: true,
      },
      add_bahasa: {
        required: true,
      },
    },
    messages: {
      add_harga: {
        required: "Form Masih Kosong!!",
      },
      add_judul: {
        required: "Form Masih Kosong!!",
      },
      add_pengarang: {
        required: "Form Masih Kosong!!",
      },
      add_penerbit: {
        required: "Form Masih Kosong!!",
      },
      add_tahun: {
        required: "Form Masih Kosong!!",
      },
      add_bahasa: {
        required: "Form Masih Kosong!!",
      },
    },
    errorElement: 'span',
    errorPlacement: function (error, element) {
      error.addClass('invalid-feedback');
      element.closest('.form-group').append(error);
    },
    highlight: function (element, errorClass, validClass) {
      $(element).addClass('is-invalid');
    },
    unhighlight: function (element, errorClass, validClass) {
      $(element).removeClass('is-invalid');
    }
  });
});

 // get Delete Product
    
    function deleteBuku(id) {
      $('#modalDelete').modal();
      $('#idHapus').val(id);
  
    }


    $('#btn-delete').click(function(event) {
      var id = $('#idHapus').val();
      
        $('#modalDelete').modal('hide');
        $('#preloader').css('display','block');
        //$('#list-table').html('');
        $.get("<?php echo base_url();?>"+"Buku/hapus_katalog/"+id, function(data) {
          
           $('#tables-katalog').html(data);
           $("#example1").DataTable({
                          "responsive": true, "lengthChange": false, "autoWidth": false,
                          "buttons": ["copy", "csv", "excel", "pdf"]
                        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
           $('#preloader').css('display','none');
          // Toast.fire({
          //     icon: 'success',
          //     title: '<b style="color:red">Sukses!! Data Pada Katalog Berhasil Dihapus!!<b>'
          //   })
          toastr.error('Data Pada Katalog Berhasil Dihapus!!')
        });
      });


   $('#btn-add-katalog').click(function(event) {
           
            
           
            var judul = $('#inputkatalog').find('#add_judul').val();
            var pengarang = $('#inputkatalog').find('#add_pengarang ').val();
            var penerbit = $('#inputkatalog').find('#add_penerbit').val();
            var tahun = $('#inputkatalog').find('#add_tahun').val();
            var harga = $('#inputkatalog').find('#add_harga').val();
            var bahasa = $('#inputkatalog').find('#add_bahasa').val();
            var isbn = $('#inputkatalog').find('#add_isbn').val();
            

            if (judul==''|| pengarang==''|| penerbit==''|| tahun==''|| harga==''|| bahasa==''|| isbn=='') {
                $("#eror").html('Data belum lengkap !!!');
                $('#modalWarning-user').modal();
            } 

            else {
                  $('#inputkatalog').css('display','none');
                  $('#preloader').css('display','block');
                   // $('#tabel-katalog').css('display', 'none');
                   $.post( "<?php echo base_url();?>"+"Buku/tambah_katalog/", {judul: judul, pengarang:pengarang, penerbit: penerbit, tahun: tahun,harga:harga, bahasa:bahasa, isbn:isbn }, function(data) {
                        $('#form-create-katalog').trigger("reset");
                        $('#input').css('display','block');
                        
                        $('#tables-katalog').html(data);
                        
                        $("#example1").DataTable({
                          "responsive": true, "lengthChange": false, "autoWidth": false,
                          "buttons": ["copy", "csv", "excel", "pdf"]
                        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
                        $('#preloader').css('display','none');

                        // Toast.fire({
                        //     icon: 'success',
                        //     title: 'Data Berhasil Disimpan!!'
                        //   })
                        toastr.success('Data Katalog Baru Berhasil Disimpan!!')
                    }); 

            }

             

        });

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

  function editBuku(id){
    $("#editkatalog").show('slow');
    $('#input').css('display','none');
    $('#inputkatalog').css('display','none');

     $.get("<?php echo base_url();?>"+"Buku/detail_buku/"+id, function(detail) {
            var detail=jQuery.parseJSON(detail+"");
              $('#edit_judul').val(detail.judul);
              $('#edit_pengarang').val(detail.pengarang);
              $('#edit_penerbit').val(detail.penerbit);
              $('#edit_tahun').val(detail.tahun);
              $('#edit_harga').val(detail.harga);
              $('#edit_bahasa').val(detail.bahasa);
              $('#edit_isbn').val(detail.isbn);
              

            $('#btn-edit-katalog').click(function(event) {

                  var judul = $('#editkatalog').find('#edit_judul').val();
                  var pengarang = $('#editkatalog').find('#edit_pengarang ').val();
                  var penerbit = $('#editkatalog').find('#edit_penerbit').val();
                  var tahun = $('#editkatalog').find('#edit_tahun').val();
                  var harga = $('#editkatalog').find('#edit_harga').val();
                  var bahasa = $('#editkatalog').find('#edit_bahasa').val();
                  var isbn = $('#editkatalog').find('#edit_isbn').val();
            
            
             if (judul==''|| pengarang==''|| penerbit==''|| tahun==''|| harga==''||harga<=0|| bahasa==''|| isbn=='') {
                $("#eror").html('Data belum lengkap !!!');
                $('#modalWarning-user').modal();
                } 

             else {
                    $('#preloader').css('display','block');
                    $('#editkatalog').css('display', 'none');


                        
                       $.post("<?php echo base_url();?>"+"Buku/update_buku/", {id:id,judul: judul, pengarang:pengarang, penerbit: penerbit, tahun: tahun,harga:harga, bahasa:bahasa, isbn:isbn }, function(data, textStatus, xhr) {

                             Toast.fire({
                                icon: 'success',
                                title: 'Data Katalog Berhasil Dirubah!!'
                              })
                            
                            $('#input').css('display','block');
                        
                            $('#tables-katalog').html(data);
                            
                            $("#example1").DataTable({
                              "responsive": true, "lengthChange": false, "autoWidth": false,
                              "buttons": ["copy", "csv", "excel", "pdf"]
                            }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
                            $('#preloader').css('display','none');

                           
                            
                        }); 


                   }
            
            
            }); 
        });
        }
    

   

</script>