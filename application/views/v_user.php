<div class="col-md-12">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Data Admin</h3>

            <div class="card-tools">
                <button data-toggle="modal" data-target="#add" type="button" class="btn btn-primary btn-sm"><i class="fas fa-plus"></i>Add</button>
            </div>

        </div>

        <div class="card-body">
            <?php
            if ($this->session->flashdata('pesan')) {
                echo '<div class="alert alert-success alert-dismissible">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                  <h5><i class="icon fas fa-check"></i>';
                echo $this->session->flashdata('pesan');
                echo '</h5></div>';
            }
            ?>
            <table class="table table-bordered" id="example1">
                <thead class="text-center">
                    <tr>
                        <th>No</th>
                        <th>Nama Admin</th>
                        <th>Username</th>
                        <th>Level</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1;
                    foreach ($user as $key => $value) { ?>
                        <tr>
                            <td class="text-center"><?= $no++; ?></td>
                            <td><?= $value->nama_admin; ?></td>
                            <td class="text-center"><?= $value->username; ?></td>
                            <td class="text-center"><?php
                                                    if ($value->level_admin == 1) {
                                                        echo '<span class="badge bg-primary">Owner</span>';
                                                    } else {
                                                        echo '<span class="badge bg-success">Admin</span>';
                                                    }
                                                    ?></td>
                            <td class="text-center">
                                <button class="btn btn-warning btn-sm" data-toggle="modal" data-target="#edit<?= $value->id_admin ?>"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#delete<?= $value->id_admin ?>"><i class=" fas fa-trash"></i></button>
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>

    </div>

</div>



<div class="modal fade" id="add">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add Admin</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <?php
                echo form_open('user/add');
                ?>

                <div class="form-group">
                    <label>Nama Admin</label>
                    <input type="text" name="nama_admin" class="form-control" placeholder="Nama Admin" required>
                </div>

                <div class="form-group">
                    <label>Username</label>
                    <input type="text" name="username" class="form-control" placeholder="Username" required>
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control" placeholder="Password" required>
                </div>

                <div class="form-group">
                    <label>Level User</label>
                    <select name="level_admin" class="form-control">
                        <option value="1" selected>Owner</option>
                        <option value="2">Admin</option>
                    </select>
                </div>

            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>

            </div>
            <?php
            echo form_close();
            ?>
        </div>

    </div>

</div>

<?php foreach ($user as $key => $value) { ?>
    <div class="modal fade" id="edit<?= $value->id_admin ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Edit Admin</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <?php
                    echo form_open('user/edit/' . $value->id_admin);
                    ?>

                    <div class="form-group">
                        <label>Nama Admin</label>
                        <input type="text" name="nama_admin" value="<?= $value->nama_admin ?>" class="form-control" placeholder="Nama Admin" required>
                    </div>

                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" name="username" value="<?= $value->username ?>" class="form-control" placeholder="Username" required>
                    </div>

                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="password" value="<?= $value->password ?>" class="form-control" placeholder="Password" required>
                    </div>


                    <div class="form-group">
                        <label>Level User</label>
                        <select name="level_admin" class="form-control">
                            <option value="1" <?php if ($value->level_admin == 1) {
                                                    echo 'selected';
                                                } ?>>Owner</option>
                            <option value="2" <?php if ($value->level_admin == 2) {
                                                    echo 'selected';
                                                } ?>>Admin</option>
                        </select>
                    </div>

                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>

                </div>
                <?php
                echo form_close();
                ?>
            </div>

        </div>

    </div>

<?php } ?>

<?php foreach ($user as $key => $value) { ?>
    <div class="modal fade" id="delete<?= $value->id_admin ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Delete <?= $value->nama_admin ?></h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <h5>Apakah Anda yakin Ingin Menghapus Data Ini...?</h5>

                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <a href="<?= base_url('user/delete/' . $value->id_admin) ?>" class="btn btn-primary">Delete</a>

                </div>

            </div>

        </div>

    </div>

<?php } ?>