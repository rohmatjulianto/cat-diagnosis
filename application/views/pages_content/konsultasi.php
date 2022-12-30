
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- Small boxes (Stat box) -->
                <div class="row">
                    <div class="col-6">
                        <form class="card">
                        <div class="card-header">
                            <h3 class="card-title">Tambah konsultasi</h3>
                        </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Nama</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1"
                                        placeholder="Nama ">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Tanggal</label>
                                    <input type="date" class="form-control" id="exampleInputPassword1"
                                        placeholder="Tanggal ">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Analisa</label>
                                    <textarea type="textarea" class="form-control" id="exampleInputPassword1"
                                        placeholder="Analisa "></textarea>
                                </div>
                                <button type="submit" class="btn btn-danger">Reset</button>
                                <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>

                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Table konsultasi</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nama</th>
                                        <th>Tanggal</th>
                                        <th>Analisa</th>
                                        <th>Hasil</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>


                                    <?php
                                    foreach ($konsultasi as $value) { ?>
                                        <tr>
                                            <td><?= $value->id_konsultasi ?></td>
                                            <td><?= $value->nama ?></td>
                                            <td><?= $value->tanggal ?></td>
                                            <td><?= $value->analisa ?></td>
                                            <td><?= $value->hasil ?></td>
                                            <td><a href="" class="btn btn-success">Edit</a> <a href=""
                                                    class="btn btn-danger">Delete</a></td>
                                        </tr>
                                        <?php
                                    }
                                    ?>

                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
            </div>
            <!-- /.row -->
            <!-- /.row -->
    </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong>
        All rights reserved.
        <div class="float-right d-none d-sm-inline-block">
            <b>Version</b> 3.2.0
        </div>
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->
