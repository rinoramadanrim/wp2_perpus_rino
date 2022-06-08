 <div class="container">
 <div class="form-group">
 <input type="text" class="form-control form-control-user" id="judul_buku" name="judul_buku"
placeholder="Masukkan Judul Buku">
 </div>
 <div class="form-group">
 <select name="id_kategori" class="form-control form-control-user">
 <option value="">Pilih Kategori</option>
 <?php
 foreach ($kategori as $k) { ?>
 <option value="<?= $k['id_kategori'];?>"><?=
$k['nama_kategori'];?></option>
 <?php } ?>
 </select>
 </div>
 <div class="form-group">
 <input type="text" class="form-control form-control-user" id="pengarang" name="pengarang" placeholder="Masukkan 
nama pengarang">
 </div>
 <div class="form-group">
 <input type="text" class="form-control form-control-user" id="penerbit" name="penerbit" placeholder="Masukkan 
nama penerbit">
 </div>
 <div class="form-group">
 <select name="tahun" class="form-control 
form-control-user">
 <option value="">Pilih Tahun</option>
 <?php
 for ($i=date('Y'); $i > 1000 ; $i--) { 
?>
 <option value="<?= $i;?>"><?=
$i;?></option>
 <?php } ?>
 </select>
 </div>
 <div class="form-group">
 <input type="text" class="form-control form-control-user" id="isbn" name="isbn" placeholder="Masukkan ISBN">
 </div>
 <div class="form-group">
 <input type="text" class="form-control form-control-user" id="stok" name="stok" placeholder="Masukkan nominal 
stok">
 </div>
 <div class="form-group">
 <input type="file" class="form-control form-control-user" id="image" name="image">
 </div>
 <div class="modal-footer">
 <button type="button" class="btn btn-secondary"
data-dismiss="modal"><i class="fas fa-ban"></i> Close</button>
 <button type="submit" class="btn btn-primary"><i
class="fas fa-plus-circle"></i> Tambah</button>
</div>
 </div>