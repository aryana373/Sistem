


<div id="editor-wrapper" class="col-xs-12" >
    <div class="box">
        <div class="box-header">
          <h3 class="box-title">Tambah Data</h3>
          
        </div>

          


        <!-- /.box-header -->
        <div class="box-body" id="add-data">
            <div class="form-group">


               <form role="form" method="post" action="" id="form-create-data">
                <div class="col-xs-12">
                       
                        <div class="form-group">
                          <label>Nama</label>
                          <input name="nama" id="nama" type="text" class="form-control"   placeholder="Enter ..." autocomplete="off">
                        </div>
                        <div class="form-group">
                          <label>Jurnal</label>
                          <input name="jurnal" id="jurnal" type="text" class="form-control"   value="<?php echo $jurnal; ?>" autocomplete="off">
                        </div>
                        
                        <div  class="form-group">
                          <label>Volume dan No</label> <i style="color:red"> ( Contoh Vol.1, No.1 )</i> 
                          <input name="vol" id="vol" type="text" class="form-control"   value="Vol.x, No.x" >
                        </div>
                        <div  class="form-group">
                          <label>Terbit</label> <i style="color:red"> ( bulan dan tahun artikel akan diterbitkan contoh Desember Tahun 2023 )</i> 
                          <input name="terbit" id="terbit" type="text" class="form-control"  value="x Tahun 202x">
                        </div>
                        
                         
                          
                         <div class="form-group">
                          <label>Judul Artikel</label>
                          <input name="judul" id="judul" type="text" class="form-control"  placeholder="Enter ... " autocomplete="off">
                        </div>  

                        <div class="btn-group pull-right">
                            <button id="btn-cancel" class="btn btn-default btn-flat">Batal</button>
                            <button type="button" class="btn btn-primary" data-loading-text="Loading..." id="btn-add-data">Tambah</button>                  
                        </div>                    
                       
                </div>
                
                
              </form>
            
            </div>
            
           
        </div>


   </div>
 </div>

<!--modal warning menu!-->
<div id="modalWarning-user" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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

<script type="text/javascript">




    

  //$('#modalWarning-user').appendTo('body');



  //$('#btn-add-pasien').one('click',function(event) 
   $('#btn-add-data').click(function(event) {
           
            
            var nama = $('#add-data').find('#nama').val();
            var jurnal = $('#add-data').find('#jurnal').val();

            var vol = $('#add-data').find('#vol').val();
            
            var terbit = $('#add-data').find('#terbit').val();
            var judul = $('#add-data').find('#judul').val();
            
            // if (NIK.length != 16){
            //   $("#eror").html('NIK harus berjumlah 16 angka!!!');
            //    $('#modalWarning-user').modal();
            // }
            // else

             if (nama==''|| jurnal==''|| vol==''|| terbit==''|| judul=='') {
                $("#eror").html('Data belum lengkap !!!');
               $('#modalWarning-user').modal();
            } 

             else {

                $('#preloader').css('display','block');
                $('#editor-wrapper').css('display', 'none');
               $.post(base_url+"Surat/create/", {nama: nama, jurnal:jurnal, vol: vol, terbit: terbit,judul:judul }, function(data) {
                $('#form-create-data').trigger("reset");
                $('#preloader').css('display','none');
                $('#main-content').html(data);
                //dataTable();
                //console.log(data);
            }); 
            }



           
            
        });



  

  





   

</script>

