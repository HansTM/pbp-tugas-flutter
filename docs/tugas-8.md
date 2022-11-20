# Tugas 8: Flutter Form

[![Tugas 8](https://img.shields.io/badge/assignment-Tugas%208-blue)](https://pbp-fasilkom-ui.github.io/ganjil-2023/assignments/tugas/tugas-8)

## Checklist

- [x] Menambahkan drawer/hamburger menu pada app yang telah dibuat sebeumnya.
- [x] Menambahkan tiga tombol navigasi pada drawer/hamburger.
  - [x] Navigasi pertama untuk ke halaman counter.
  - [x] Navigasi kedua untuk ke halaman form.
  - [x] Navigasi ketiga untuk ke halaman yang menampilkan data _budget_ yang telah di-_input_ melalui form.
- [x] Menambahkan halaman form
  - [x] Menambahkan elemen input dengan tipe data String berupa judul _budget_.
  - [x] Menambahkan elemen input dengan tipe data int berupa nominal _budget_.
  - [x] Menambahkan elemen dropdown yang berisi tipe _budget_ dengan pilihan pemasukan dan pengeluaran.
  - [x] Menambahkan button untuk menyimpan _budget_.
- [x] Menambahkan halaman data _budget_
  - [x] Menampilkan semua judul, nominal, dan tipe _budget_ yang telah ditambahkan pada form.
- [x] Menjawab beberapa pertanyaan berikut pada `README.md` pada _root folder_ (silakan modifikasi `README.md` yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).
- [x] Melakukan `add`-`commit`-`push` ke GitHub.

### Bonus

- [x] Menambahkan elemen date picker pada halaman form.
- [x] Menampilkan elemen date (format bebas) pada setiap elemen _budget_ yang ada pada halaman data _budget_.
- [x] _Refactor_ widget Drawer ke sebuah file terpisah.

## Jawaban

- Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`.

`Navigator.push` dan `Navigator.pushReplacement` sama-sama membuat aplikasi berganti halaman (atau *route*) ke dalam suatu halaman baru. Bedanya adalah `Navigator.push` akan menambah histori baru pada *stack* histori, sedangkan `Navigator.pushReplacement` hanya akan mengganti histori halaman sebelumnya dengan halaman baru tersebut.

Visualisasinya adalah sebagai berikut. Perhatikan bahwa pada stack ini, *route* yang paling terakhir adalah yang pertama, dan *route* di bawahnya adalah *route* sebelumnya. *Route* yang sekarang ditampilkan adalah `RouteA`, dan kedua fungsi akan beralih ke `RouteB`

```
                          RouteB
RouteA  Navigator.push()  RouteA
Route2  --------------->  Route2
Route1                    Route1

RouteA                               RouteB
Route2  Navigator.pushReplacement()  Route2
Route1  -------------------------->  Route1
```

- Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

1. `Scaffold`: Struktur *layout* sederhana dengan *material design*.
2. `AppBar`: Bar yang berada di atas halaman, yang biasanya mengandung judul, *widget* aksi, dan sebagainya. 
3. `Text`: Tulisan atau teks.
4. `Center`: Untuk menengahkan *widget* yang ada.
5. `Padding`: Untuk membuat *padding* pada sebuah *widget*.
6. `Column`: Agar *widget*-*widget* dapat muncul dalam satu kolom.
7. `Row`: Agar *widget*-*widget* dapat muncul dalam satu baris.
8. `Drawer`: Panel yang muncul dari kiri layar untuk menunjukkan pranala-pranala navigasi
9. `ListTile`: Baris dengan suatu ketinggian yang biasanya memiliki sebuah tulisan dan *icon* pada sebelum dan sesudahnya
10. `SingleChildScrollView`: Untuk membuat suatu *widget* dapat di-*scroll*.
11. `TextFormField`: Bidang formulir yang dapat diisi dengan tulisan.
12. `TextButton`: Tombol yang berisi teks.
13. `Card`: Kartu, atau sebuah kotak dengan sudut melingkar dan bayangan.
14. `DropdownButton`: Tombol untuk memilih salah satu pilihan (item) dari sebuah daftar (item).
15. `DropdownMenuItem`: Pilihan yang ada di dalam daftar `DropdownButton`.
16. `Icon`: Ikon yang berasal dari obyek `Icons` yang terdefinisi.

- Sebutkan jenis-jenis _event_ yang ada pada Flutter (contoh: `onPressed`).

Ada berbagai *event* yang ada di Flutter, yang tersebar dalam berbagai *widget* yang ditawarkan. Hanya beberapa yang akan dijelaskan di sini.

1. `onPressed`: Saat suatu *widget* ditekan.
2. `onChanged`: Saat suatu *widget* diubah isinya.
3. `onSaved`: Saat suatu *widget* (`FormField`) disimpan dengan `save()`.
4. `onEditingComplete`: Saat pengguna menandakan selesainya pengisian, seperti dengan menekan tombol <kbd>ENTER</kbd>,
5. `onSubmitted`: Saat suatu *widget* selesai diubah isinya.
6. `onTap`: Saat suatu widget di-*tap*.

- Jelaskan bagaimana cara kerja `Navigator` dalam "mengganti" halaman dari aplikasi Flutter.

Widget `Navigation` membuat setiap halaman (atau *route*) yang dibutuhkan ke dalam sebuah stack, yang di mana ia dapat mengganti dari satu halaman ke halaman lain di dalam stack dengan menggunakan animasi yang sesuai di *target platform*-nya.

- Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas.

1. Buat halaman-halaman awal (kosong) untuk form dan daftar budget. (`budget_form.dart` dan `budget_list.dart`)
2. Buat kode untuk menangani data budget (`budget_data.dart`)
   1. Buat kelas `BudgetEntry` untuk memudahkan penyusunan data.
   2. Buat variabel `budgetList` untuk menampung datanya. 
3. Buat sebuah drawer yang akan digunakan pada semua halaman.
   1. `Drawer` akan digunakan dan diisi dengan beberapa `ListTile`.
   2. Widget dibuat di dalam sebuah file, agar dapat digunakan beberapa kali.
   3. Impor halaman-halaman dan gunakan `onPressed` dan `Navigator` untuk beralih ke halaman-halaman tersebut saat `ListTile` ditekan.
4. Isi halaman formulir.
   1. Bangun sebuah form dengan menggunakan `TextForm`, `TextButton`, `DropdownButton`, dkk untuk bidang-bidangnya.
   2. Tambah variabel-variabel untuk menampung isi bidang formulir tersebut.
   3. Tambah tombol "Simpan" untuk menambah isi formulir ke dalam daftar yang disiapkan.
5. Isi halaman daftar.
   1. Ambil daftar budget yang telah diisi (atau tidak) (`budgetList`)
   2. Dengan *mapping* (`.map()`), munculkan *widget* kartu-kartu, yang berisi data-data yang ingin ditunjukkan.
6. *Add*, *commit*, dan *push* perubahan yang ada.