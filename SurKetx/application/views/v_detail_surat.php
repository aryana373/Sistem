<?php
      foreach ($surat_last->result() as $option): ?>
                    

 <div id="editor-wrapper" class="col-xs-12" >
    <div class="box">
        <div class="box-header">
          <h3 class="box-title">Detail Pasien</h3>
          
        </div>
        <!-- /.box-header -->
        <div class="box-body" id="add-pasien">
            <div class="form-group">
               <form role="form" method="post" action="" id="form-create-pasien">
                <div class="col-xs-12">

                        <div class="form-group">
                          <label>Nama</label>
                          <input type="text" class="form-control" value="<?php echo $option->nama; ?>"  readonly>
                        </div>
                        <div class="form-group">
                          <label>Jurnal</label>
                         <input type="text" class="form-control" value="<?php echo $option->jurnal; ?>"  readonly>
                        </div>
                         <div class="form-group">
                          <label>Volume dan No</label>
                          <input type="text" class="form-control" value="<?php echo $option->vol; ?>"  readonly>
                        </div>
                        <div class="form-group">
                          <label>Tanggal Terbit</label>
                          <input type="text" class="form-control" value="<?php echo $option->terbit; ?>"  readonly>
                        </div>
                        <div class="form-group">
                          <label>Judul</label>
                          <input type="text" class="form-control" value="<?php echo $option->judul; ?>"  readonly>
                        </div>  
                                             
                       
                      
                        <div class="btn-group pull-right">
                            <button id="btn-cancel" class="btn btn-default btn-flat">Batal</button>  
                               <a target="_blank"  href="<?php echo base_url().'Surat/LihatSurat/'.$option->id; ?>" type="button" class="btn btn-warning" data-loading-text="Loading..." >Cetak</a>               
                        </div>
              
                 </div>
               
              </form>
            </div>
            
           
        </div>


    </div>
</div>
 <?php endforeach; ?>