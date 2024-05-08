<link rel="stylesheet" href="<?php echo base_url("assets/AdminLTE-2.3.11/plugins/datepicker/datepicker3.css"); ?>">
  <!-- Select2 -->
<link rel="stylesheet" href="<?php echo base_url("assets/AdminLTE-2.3.11/plugins/select2/select2.min.css"); ?>">

<div id="edit-surat" class="col-xs-12" style="display: none;" >
    <div class="box">
        <div class="box-header">
          <h3 class="box-title">Edit Data </h3>
          
        </div>
        <!-- /.box-header -->
        <div class="box-body" id="edit-data">
            <div class="form-group">
               <form role="form" method="post" action="" id="form-edit-data">
                <div class="col-xs-12">
                        
                        <div class="form-group">
                          <label>Nama</label>
                          <input name="editNama" id="editNama" type="text" class="form-control"   placeholder="Enter ...">
                        </div>
                         <div class="form-group">
                          <label>Judul</label>
                          <input name="editJudul" id="editJudul" type="text" class="form-control"   placeholder="Enter ...">
                        </div>
                        <div class="form-group">
                          <label>Jurnal</label>
                          <input name="editJurnal" id="editJurnal" type="text" class="form-control"   placeholder="Enter ...">
                        </div>
                         <div class="form-group">
                          <label>Volume dan Nomor</label>
                          <input name="editVol" id="editVol" type="text" class="form-control"  placeholder="Enter ...">
                        </div>
                        <div class="form-group">
                          <label>Terbit</label>
                          <input name="editTerbit" id="editTerbit" type="text" class="form-control"  placeholder="Enter ...">
                        </div>  
                                               
                       
                

                      
                        <div class="btn-group pull-right">
                            <button type="button" id="btnbatal" class="btn btn-danger btn-flat" data-dismiss="modal">tutup</button>
                            <button type="button" class="btn btn-warning" data-loading-text="Loading..." id="btn-edit-data">Edit</button>                  
                        </div>
                
                </div>
              </form>
            </div>
            
           
        </div>


   </div>
 </div>

 <div id="editor-wrapper" class="col-xs-12" >
       <div class="box">
                <div class="box-body" id="cari">
                   <div class="form-group">
                      <form role="form" method="post" action="" id="form-cari">
<!--                         <div class="col-xs-12">
                             <div  class="btn-group pull-right">
                            <a type="button" class="btn btn-warning" href="<?php echo base_url().'Surat/export'; ?>" >Export to Excel</a>   
                            </div>
                        </div> -->
                        <br><br>
                       <div class="col-xs-6">
                            <div class="form-group">
                                     <select name="cari_berdasarkan" id="cari_berdasarkan" class="form-control article-option" onChange="cariberdasarkan()" >
                                                   <option value="0"> ----- Cari Berdasarkan -------</option>  
                                                   <option value="nama"> Nama </option> 
                                                   <option value="tanggal"> Tanggal LoA </option>    
                                     </select>
                               </div>   
                                                  
                       </div>
                       <div class="col-xs-6">
                        <div class="form-group" style="display: none;" id="bedasarkaninput">
                                 <input name="datacari" id="datacari" type="text" class="form-control"   placeholder="Enter ...">
                               </div>  
                        <div class="form-group" style="display: none;" id="bedasarkantanggal">
                                 <input name="datacaritanggal" id="datacaritanggal" type="date" class="form-control">
                               </div>   
                       </div>    
                         </form>
                       </div>

                     <br>

                     <div class="col-xs-12">
                            <div style="display: none;" id="tombolcari" class="btn-group pull-right">
                            <button type="button" class="btn btn-primary" data-loading-text="Loading..." id="btn-cari">Cari</button>   
                            </div>
                     </div>    

                   
                   </div>

                   <div class="box-body table-responsive" id="list-table" style="display: block"></div>

                 
                </div>

                
             
       </div>





<!-- modal konfirmasi hapus -->
<div id="modalDelete" class="modal " tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
   <div class="modal-dialog" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Hapus Aset</h4>
         </div>
         <div class="modal-body">
             Apakah anda ingin menghapus Data ini?
         </div> 
         <div class="modal-footer">
            <div class="btn-group">
               <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Tidak</button>
               <button id="btn-delete" type="button" class="btn btn-danger btn-flat">Ya</button>
            </div>
         </div>
      </div>
   </div>
</div>

<!-- modal konfirmasi hapus -->
<div id="modalSukses" class="modal " tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
   <div class="modal-dialog" role="document">
      <div class="modal-content">
         <div class="modal-body">
             Data Berhasil terhapus
         </div> 
         <div class="modal-footer">
            <div class="btn-group">
               <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Keluar</button>
              
            </div>
         </div>
      </div>
   </div>
</div>

<!-- modal detail -->
<div id="modalDetail" class="modal " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static" data-keyboard="false">
   <div class="modal-dialog" role="document">
      <div class="modal-content">
         <div class="modal-header"  style="text-align: center;">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">Detail Data Pasien</h4>
         </div>

         <div class="modal-body">
             <div class="form-group">
                <form role="form" method="post" action="" >
                 <div class="form-group">
                          <label>Nama</label>
                          <input id="detailNama" type="text" class="form-control"   readonly>
                        </div>
                        <div class="form-group">
                          <label>Kewarganegaraan</label>
                         <input id="detailKwn" type="text" class="form-control" readonly>
                        </div>
                        <div class="form-group">
                          <label>Nomor Hasil</label>
                         <input id="detailNohasil" type="text" class="form-control" readonly>
                        </div>
                         <div class="form-group">
                          <label>Nomor Induk Kependudukan</label>
                          <input id="detailNIK" type="text" class="form-control" readonly>
                        </div>
                        <div class="form-group">
                          <label>Jenis Kelamin</label>
                          <input id="detailJK" type="text" class="form-control"   readonly>
                        </div>
                        <div class="form-group">
                          <label>Tanggal Lahir</label>
                          <input id="detailtanggallahir" type="text" class="form-control" readonly>
                        </div>  
                         <div class="form-group">
                          <label>Alamat</label>
                          <input id="detailalamat" type="text" class="form-control"  readonly>
                        </div>                      
                       
               
                         <div class="form-group">
                          <label>Nama Pemeriksaan</label>
                         <input id="detailnamapemeriksaan" type="text" class="form-control"   readonly>
                        </div>
                        <div class="form-group">
                          <label>Hasil</label>
                         <input id="detailhasil" type="text" class="form-control"   readonly>
                        </div>
                        <div class="form-group">
                          <label>Rujukan</label>
                         <input id="detailrujukan" type="text" class="form-control"  readonly>
                        </div>
                        <div class="form-group">
                          <label>Dokter</label>
                         <input id="detaildokter" type="text" class="form-control"  readonly>
                        </div>
                        <div class="form-group">
                          <label>Perawat</label>
                         <input id="detailperawat" type="text" class="form-control"  readonly>
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

<!--modal warning menu!-->
<div id="modalWarning-user" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
   <div class="modal-dialog" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Gagal Menambahkan Data</h4>
         </div>
         <div id="eror" class="modal-body">
            
         </div>
         <div class="modal-footer">
          <div class="btn-group">
            <button type="button" class="btn btn-danger btn-flat" data-dismiss="modal">tutup</button>
          </div>
        </div>
      </div>
   </div>
</div>

<!--modal warning menu!-->
<div id="modalberhasil" class="modal " tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
   <div class="modal-dialog" role="document">
      <div class="modal-content">
         
         <div class="modal-body">
            Data berhasil di update
         </div>
         <div class="modal-footer">
          <div class="btn-group">
            <button type="button" class="btn btn-danger btn-flat" data-dismiss="modal">tutup</button>
          </div>
        </div>
      </div>
   </div>
</div>

<script type="text/javascript">


    $('#btnbatal').click(function(event) {

         $("#edit-surat").hide('slow');
     }); 

     //dropdown dokter
  $.ajax({
         url:"<?php echo base_url();?>Dokter/select_dokter",
         success: function(response){
         $("#editdokter").html(response);
         
         },
         dataType:"html"
       });

  //dropdown perawat
  $.ajax({
         url:"<?php echo base_url();?>Dokter/select_perawat",
         success: function(response){
         $("#editperawat").html(response);
         
         },
         dataType:"html"
       });


        $('#btn-cari').click(function(event) {
        $('#preloader').css('display','block');
            var cariberdasarkan = $('#form-cari').find('#cari_berdasarkan').val();
            var input = $('#form-cari').find('#datacari').val();
            var tanggal = $('#form-cari').find('#datacaritanggal').val();
          

            if (cariberdasarkan=='nama') {
              var data = input;
        }
        else{
              var data = tanggal;
        }

             $.post(base_url+"Surat/carisurat/", {cariberdasarkan:cariberdasarkan,data: data}, function(data) {
                $('#preloader').css('display','none');
                $('#list-table').html(data);
                dataTable(); 
             });
             
    }); 

 function cariberdasarkan()
      {
       var cariberdasarkan = $('#form-cari').find('#cari_berdasarkan').val();
       $('#tombolcari').css('display','block');
        if (cariberdasarkan=='nama') {
              $('#bedasarkantanggal').css('display','none');
              $('#bedasarkaninput').css('display','block');

        }
        else if (cariberdasarkan=='tanggal'){
              $('#bedasarkaninput').css('display','none');
              $('#bedasarkantanggal').css('display','block');
        } else{
              $('#tombolcari').css('display','none');
              $('#bedasarkantanggal').css('display','none');
              $('#bedasarkaninput').css('display','none');
        }
      }
 function deleteSurat(id) {
      $('#modalDelete').modal();
      $('#btn-delete').click(function(event) {
        $('#modalDelete').modal('hide');
        $('#preloader').css('display','block');
        $('#list-table').html('');
        $.get(base_url+"Surat/hapus/"+id, function(data) {
          $('#preloader').css('display','none');
          //$('#main-content').html(data);
          // dataTable();
          $('#modalSukses').modal();
        });
      });

    }
// function detail(id) {
      

//             $('#modalDetail').modal();
//             $.get(base_url+"Surat/detail_pasien/"+id, function(detail) {
//             var detail=jQuery.parseJSON(detail+"");
//               $('#detailNama').val(detail.nama);
//               $('#detailKwn').val(detail.kwn);
//               $('#detailNohasil').val(detail.nohasil);
//               $('#detailNIK').val(detail.NIK);
//               $('#detailJK').val(detail.JK);
//               $('#detailtanggallahir').val(detail.tgllahir);
//               $('#detailalamat').val(detail.alamat);
//               $('#detailnamapemeriksaan').val(detail.namapemeriksaan);
//               $('#detailhasil').val(detail.hasil);
//               $('#detailrujukan').val(detail.rujukan);
//               $('#detaildokter').val(detail.dokter);
//               $('#detailperawat').val(detail.perawat);
            
//               //console.log(lokasi.nama);
//             });


//     }
function editSurat(id){
    $("#edit-surat").show('slow');

     $.get(base_url+"Surat/detail_surat/"+id, function(edit) {
            var edit=jQuery.parseJSON(edit+"");
            
              $('#editNama').val(edit.nama);
              $('#editJudul').val(edit.judul);
              $('#editJurnal').val(edit.jurnal);
              $('#editVol').val(edit.vol);
              $('#editTerbit').val(edit.terbit);

            $('#btn-edit-data').click(function(event) {

                var nama = $('#edit-surat').find('#editNama').val();
                var judul = $('#edit-surat').find('#editJudul').val();
                var jurnal = $('#edit-surat').find('#editJurnal').val();
                var vol = $('#edit-surat').find('#editVol').val();
                var terbit = $('#edit-surat').find('#editTerbit').val();
                    
            //          if (NIK.length != 16){
            //   $("#eror").html('NIK harus berjumlah 16 angka!!!');
            //   $('#modalWarning-user').modal();
            // }
            // else 
            
            
            if (nama==''|| judul==''|| jurnal==''|| vol==''|| terbit=='') {
                $("#eror").html('Data belum lengkap !!!');
               $('#modalWarning-user').modal();
            } 

             else {
                    $('#preloader').css('display','block');
                    $('#edit-surat').css('display', 'none');
                        
                   $.post(base_url+"Surat/update/", {id:id, nama: nama, judul:judul, jurnal: jurnal, vol: vol,terbit:terbit }, function(data, textStatus, xhr) {
                            
                            $('#form-edit-data').trigger("reset");
                            $('#preloader').css('display','none');
                            $('#main-content').html(data);
                            $('#modalberhasil').modal();
                        }); 


                   }
            
            
            }); 
        });
        }
    
</script>