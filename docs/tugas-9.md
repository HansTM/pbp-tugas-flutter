# # Tugas 9: Integrasi Web Service pada Flutter

[![Tugas 9](https://img.shields.io/badge/assignment-Tugas%209-blue)](https://pbp-fasilkom-ui.github.io/ganjil-2023/assignments/tugas/tugas-9)

## Checklist

- [x] Menambahkan tombol navigasi pada drawer/hamburger untuk ke halaman *mywatchlist*.
- [x] Membuat satu file dart yang berisi model *mywatchlist*.
- [x] Menambahkan halaman *mywatchlist* yang berisi semua *watch list* yang ada pada endpoint JSON di Django yang telah kamu *deploy* ke Heroku sebelumnya ([Tugas 3](https://pbp-fasilkom-ui.github.io/ganjil-2023/assignments/tugas/tugas-3/)). Pada bagian ini, kamu cukup menampilkan judul dari setiap *mywatchlist* yang ada.
  - [x] Membuat navigasi dari setiap judul *watch list* ke halaman detail
- [x] Menambahkan halaman detail untuk setiap *mywatchlist* yang ada pada daftar tersebut. Halaman ini menampilkan judul, release date, rating, *review*, dan status (sudah ditonton/belum).
- [x] Menambahkan tombol untuk kembali ke daftar *mywatchlist*
- [ ] Menjawab beberapa pertanyaan berikut pada `README.md` pada *root folder*.
- [x] Melakukan `add`-`commit`-`push` ke GitHub.

### Bonus

- [ ] Menambahkan *checkbox* pada setiap *watchlist* pada halaman *mywatchlist*. Dimana *checkbox* akan tercentang jika status ditonton bernilai `true` dan tidak jika bernilai `false`.
  - [ ] Jika *checkbox* ditekan, maka status ditonton akan berubah (perubahan akan terjadi di lokal secara sementara saja, status pada endpoint tidak perlu diubah)
- [ ] Menambahkan warna untuk *outline* pada setiap *mywatchlist* pada halaman *mywatchlist* berdasarkan status ditonton (Dua warna yang dipilih bebas).
- [x] *Refactor* function fetch data dari web service ke sebuah file terpisah.

## Jawaban

- Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

TODO

- Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

1. `Scaffold`: Struktur *layout* sederhana dengan *material design*.
2. `AppBar`: Bar yang berada di atas halaman, yang biasanya mengandung judul, *widget* aksi, dan sebagainya. 
3. `Text`: Tulisan atau teks.
4. `Center`: Untuk menengahkan *widget* yang ada.
5. `Padding`: Untuk membuat *padding* pada sebuah *widget*.
6. `Column`: Agar *widget*-*widget* dapat muncul dalam satu kolom.
7. `Row`: Agar *widget*-*widget* dapat muncul dalam satu baris.
8. `Drawer`: Panel yang muncul dari kiri layar untuk menunjukkan pranala-pranala navigasi.
9. `ListTile`: Baris dengan suatu ketinggian yang biasanya memiliki sebuah tulisan dan *icon* pada sebelum dan sesudahnya.
10. `Card`: Kartu, atau sebuah kotak dengan sudut melingkar dan bayangan.

TODO

- Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

TODO

- Jelaskan bagaimana cara kamu mengimplementasikan *checklist* di atas.

1. Buat halaman-halaman awal (kosong) untuk detil dan daftar *watchlist*. (`page/watchlist/details.dart` dan `page/watchlist/list.dart`)
3. Tambah halaman ke dalam *drawer*.
2. Buat kode untuk menangani data watchlist (`model/watchlist.dart`)
   1. TODO
4. Isi halaman daftar.
   1. TODO
5. Isi halaman detil.
   1. TODO
6. *Add*, *commit*, dan *push* perubahan yang ada.
