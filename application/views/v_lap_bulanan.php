 <div class="col-12">

     <div class="invoice p-3 mb-3">

         <div class="row">
             <div class="col-12">
                 <h4>
                     <i class="fas fa-shopping-cart"></i> <?= $title ?>
                     <small class="float-right">Bulan: <?= $bulan ?> Tahun: <?= $tahun ?> </small>
                 </h4>
             </div>

         </div>


         <div class="row">
             <div class="col-12 table-responsive">
                 <table class="table table-striped">
                     <thead>
                         <tr>
                             <th>#</th>
                             <th>No. Order</th>
                             <th>Tanggal</th>
                             <th>Total</th>
                         </tr>
                     </thead>
                     <tbody>
                         <?php $no = 1;
                            $grand_total = 0;
                            foreach ($laporan as $key => $value) {
                                $grand_total = $grand_total + $value->grand_total;
                            ?>
                             <tr>
                                 <td><?= $no++ ?></td>
                                 <td><?= $value->no_order ?></td>
                                 <td><?= $value->tgl_order ?></td>
                                 <td>Rp. <?= number_format($value->grand_total, 0)  ?></td>
                             </tr>
                         <?php } ?>

                     </tbody>
                 </table>
                 <h5><b>Grand Total: Rp. <?= number_format($grand_total, 0) ?> </b></h5>
             </div>

         </div>



         <div class="row no-print">
             <div class="col-12"> <br>
                 <button class="btn btn-default" onclick="window.print()"><i class="fas fa-print"></i> Print</button>
             </div>
         </div>
     </div>

 </div>