  <table style="text-align: justify;" id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr style="background:  #050354; color: white; text-align: center;">
                    <th style="width: 3%;">No</th>
                    <th >Id Member</th>
                    <th style="width: 45%;">Nama</th>
                    <th>Tanggal Registrasi</th>
                    <th>Cetak</th>
                  </tr>
                  </thead>
                  <tbody>
                  <?php $i=1; ?>
                 <?php foreach ($member->result() as $row): ?>
                    <tr>
                       <td style="text-align: center;"><?php echo $i; $i++; ?></td>
                       <td><?php echo $row->member_id; ?></td>
                       <td><?php echo $row->member_name; ?></td>
                       <td><?php echo $row->register_date; ?></td>
                       <td style=" width: 100px;text-align: center;">
                            <div class="btn-group">  
                                 <a href="<?php echo base_url();?>Surket/cetak/<?php echo $row->member_id; ?>" class="btn btn-primary btn-flat" type="button" data-toggle="tooltip" title="tambah surat bebas pustaka"><i class="fa fa-pen"></i></a>

                                 
                                 
                                
                            </div>
                        </td>
                   
                  </tr>
                  <?php endforeach; ?>
                  </tbody>
                  
                </table>