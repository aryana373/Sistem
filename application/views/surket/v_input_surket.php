<!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/AdminLTE/plugins/datatables-buttons/css/buttons.bootstrap4.min.css') ?>">

<?php
require('v_header.php');
?>
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">

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


  
  

  

   

  <?php
require('v_footer.php');
?>
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
                dataTable(); 
             });
             
    }); 
  

  var Toast = Swal.mixin({
      toast: true,
      position: 'top-end',
      showConfirmButton: false,
      timer: 3000
    });



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