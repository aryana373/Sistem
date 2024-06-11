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
    <!-- /.content -->
  </div>


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
               <a href="<?php echo base_url();?>Buku" class="btn btn-success btn-flat" type="button" data-toggle="tooltip" >Tutup</a>
              
            </div>
         </div>
         
   </div>
</div>
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