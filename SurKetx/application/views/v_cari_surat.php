 <div class="box-body table-responsive">
    
            <table style="font-size: 13px;" class="table table1 table-bordered table-striped">
                <thead>
                    <tr style="background:  #551E1E; color: white; text-align: center;">
                        <th style="width: 4%;">No</th>
                        <th>Nama</th>
                        <th>Judul</th>
                        <th>Jurnal</th>
                        <th>Vol dan No</th>
                        <th>Terbit</th>
                        <th style=" text-align: center;">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                 <?php $i=1; ?>
                 <?php foreach ($surat->result() as $row): ?>
                    <tr>
                       <td style="text-align: center;"><?php echo $i; $i++; ?></td>
                        <td><?php echo $row->nama; ?></td>
                        <td><?php echo $row->judul; ?></td>
                        <td><?php echo $row->jurnal; ?></td>
                        <td><?php echo $row->vol; ?></td>
                        <td><?php echo  $row->terbit; ?></td>
                        <td style=" width: 130px;text-align: center;">
                            <div class="btn-group">   
                                 <a style="background:black; color:white;" target="_blank"  href="<?php echo base_url().'Surat/LihatSurat/'.$row->id; ?>" type="button" class="btn"  title="Cetak" ><i class="fa fa-print"></i></a>     
                                <button onclick="editSurat(<?php echo $row->id; ?>);" class="btn btn-success btn-flat" type="button" data-toggle="tooltip" title="Edit"><i class="fa fa-pencil"></i></button>
                              <!--  <button onclick="deleteSurat(<?php echo $row->id; ?>);" class="btn btn-danger btn-flat" type="button" data-toggle="tooltip" title="Hapus">
                                <i class="fa fa-trash"></i></button> -->
                            </div>
                        </td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
                
            </table>
        </div>