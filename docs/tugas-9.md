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

- [x] Menambahkan *checkbox* pada setiap *watchlist* pada halaman *mywatchlist*. Dimana *checkbox* akan tercentang jika status ditonton bernilai `true` dan tidak jika bernilai `false`.
  - [x] Jika *checkbox* ditekan, maka status ditonton akan berubah (perubahan akan terjadi di lokal secara sementara saja, status pada endpoint tidak perlu diubah)
- [x] Menambahkan warna untuk *outline* pada setiap *mywatchlist* pada halaman *mywatchlist* berdasarkan status ditonton (Dua warna yang dipilih bebas).
- [x] *Refactor* function fetch data dari web service ke sebuah file terpisah.

## Jawaban

- Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Bisa, namun pasti akan lebih sulit.

Kelas-kelas dan fungsi-fungsi dibuat sebagai perantara agar pengembangan dapat dilakukan dengan lebih mudah. Dengan kelas-kelas dan metode-metode tersebut, pengembang tidak perlu repot berasumsi atau mengecek lagi bentuk data yang ada, atau membuat fungsi yang memiliki fungsi yang sama.

Data mentah yang diperoleh dapat saja langsung digunakan, namun dengan konsiderasi yang disebutkan sebelumnya, pastinya ini akan lebih berisiko.

- Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

1. `Scaffold`: Struktur *layout* sederhana dengan *material design*.
2. `AppBar`: Bar yang berada di atas halaman, yang biasanya mengandung judul, *widget* aksi, dan sebagainya. 
3. `Text`: Tulisan atau teks.
4. `Alignment`: Untuk mengatur *alignment* *widget* yang ada.
5. `Container`: Kotak sebuah *widget*, yang *padding*, *margin*, *border*, dsb dapat diatur.
6. `Column`: Agar *widget*-*widget* dapat muncul dalam satu kolom.
7. `Row`: Agar *widget*-*widget* dapat muncul dalam satu baris.
8. `Drawer`: Panel yang muncul dari kiri layar untuk menunjukkan pranala-pranala navigasi.
9. `ListTile`: Baris dengan suatu ketinggian yang biasanya memiliki sebuah tulisan dan *icon* pada sebelum dan sesudahnya.
10. `Card`: Kartu, atau sebuah kotak dengan sudut melingkar dan bayangan.
11. `RichText`: Teks, namun dapat menggunakan gaya-gaya yang lebih variatif.
12. `ListView`: Daftar list yang tersusun secara linier dan dapat di-*scroll*.
13. `Checkbox`: Kotak centang.
14. `InkWell`: Daerah yang menanggapi sentuhan dari pengguna.
15. `CircularProgressIndicator`: Indikator lingkaran yang berputar untuk menandakan kesibukan aplikasi.

- Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

Dengan asumsi API telah siap untuk diakses, `http` telah ditambahkan sebagai *dependency*, dan *permissions* telah diberikan untuk aplikasi Android-nya, mekanismenya adalah sebagai berikut:

1. Buat model yang bersesuaian dengan data yang akan digunakan saat berinteraksi dengan API. Model ini terdiri dari sebuah kelas (*class*) sesuai dengan datanya, dan juga pembacanya untuk mengubahnya response JSON tersebut menjadi sebuah obyek dengan kelasnya.
2. Buat fungsi pengambil (*fetch*), yang akan mengambil data dari *server* melalui API, dengan menggunakan `http` dan mengeluarkan sebuah `Future` yang akan menghasilkan sebuah obyek yang bersesuaian dengan model yang telah dibuat.
3. Gunakan fungsi pengambil tersebut dengan *endpoint* API yang telah dibuat untuk mengambil data yang diperlukan.
4. Tayangkan data yang telah diambil pada antarmuka pengguna, entah dengan `ListView.builder`, `.map()`, atau cara lain, tergantung dengan bentuk datanya. 

- Jelaskan bagaimana cara kamu mengimplementasikan *checklist* di atas.

1. Tambahkan *dependency* `http` dan permission `android.permission.INTERNET` agar aplikasi dapat berhubung ke internet.
2. Buat halaman-halaman awal (kosong) untuk detil dan daftar *watchlist*. (`page/watchlist/details.dart` dan `page/watchlist/list.dart`)
3. Tambah halaman ke dalam *drawer*.
4. Buat kode untuk menangani data watchlist (`model/watchlist.dart`)
   1. Buat model `MyWatchList` untuk data *watchlist* kita.
   2. Buat fungsi *fetch* untuk mendapatkan data dari *server*.
5. Isi halaman daftar.
   1. Panggil fungsi *fetch*, yang telah dibuat, pada saat inisialisasi (*state*-nya). Sebuah `Future` akan diberikan. 
   2. Gunakan `FutureBuilder` untuk menggunakan data yang tertera di `Future` tersebut.
   3. Gunakan `ListView.builder` untuk membuat sebuah `ListView` dari array yang diberikan. 
   4. Dengan `InkWell`, yang dibuat di dalam `Card`, buat agar aplikasi beralih ke halaman detil dengan entri *watchlist* yang terkait.
6. Isi halaman detil.
   1. Ambil entri *watchlist* yang diberikan oleh halaman sebelumnya.
   2. Dengan *widget*-*widget* yang tersedia, buat halaman detil dengan data *watchlist* sebelumnya. `RichText` akan digunakan agar tulisan dapat dibuat lebih variatif.
7. *Add*, *commit*, dan *push* perubahan yang ada.
