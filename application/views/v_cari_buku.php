<?php foreach ($buku->result() as $row): ?>
                <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-info" style="text-align: center; width: 250px; height: 450px;">
                  <div class="inner">
                    <?php if ($row->image==NULL) { ?>
                      <img src="<?php echo base_url('slims/images/default/image.png') ?>" style="width: 200px; height: 300px;">
                   <?php } else{ ?>
                      <img src="<?php echo base_url('slims/images/docs/'). $row->image; ?>" style="width: 200px; height: 300px;">
                    <?php } ?>

                    <p><?php echo $row->title; ?></p>
                  </div>
                  
                   <a target="_blank" href="<?php echo base_url('slims/repository/'). $row->file_name ?>" class="small-box-footer">Baca Buku <i class="fas fa-arrow-circle-right"></i></a>
                </div>
              </div>
               <?php endforeach; ?>