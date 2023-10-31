<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
    <div class="container border">
        <div class="row">
            <div class="col"></div><h3>TIKET ONLINE JAKARTA - KUALA LIMPUR</h3>
        </div>
        <div class="row">
            <div class="col-6">
                <form action="<?php echo base_url() . 'index.php/kampus/tambah_aksi'; ?>" method="post">
                    <div class="mb-3">
                      <label for="nama" class="form-label">Nama</label>
                      <input type="text" name="nama" class="form-control" id="nama" placeholder="name@example.com">
                    </div>
                    <div class="mb-3">
                      <label for="exampleFormControlInput1" class="form-label">kode Pesawat</label>
                      <select class="form-select" aria-label="Default select example" nama="kode">
                          <option selected>Pesawat</option>
                            <?php foreach($pesawat as $p){ ?>
                          <option value="<?= $p->id ?>"><?= $p->kode ?></option>
                          <?php } ?>
                        </select>
                    </div>
                    <div class="mb-3">
                      <label for="kelas" class="form-label">Kelas</label>
                      <div class="form-check">
                          <input class="form-check-input" type="radio" name="kelas" id="kelas" value="eksekutif">
                          <label class="form-check-label" for="">
                            eksekutif
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="kelas" id="kelas" value="bisnis">
                          <label class="form-check-label" for="kelas">
                            bisnis
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="kelas" id="kelas" value="ekonomi">
                          <label class="form-check-label" for="kelas">
                            ekonomi
                          </label>
                        </div>
                    </div>
                    <div class="mb-3">
                      <label for="exampleFormControlInput1" class="form-label">Jumlah Tiket</label>
                      <select class="form-select" aria-label="Default select example" nama="jumlah">
                          <option selected>Jumlah Tiket</option>
                          <option value="1">One</option>
                          <option value="2">Two</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                    <input type="reset" value="Batal" class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>