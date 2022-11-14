# Tugas 7: Elemen Dasar Flutter

[![Tugas 7](https://img.shields.io/badge/assignment-Tugas%207-blue)](https://pbp-fasilkom-ui.github.io/ganjil-2023/assignments/tugas/tugas-7)

## Checklist

- [x] Membuat sebuah program Flutter baru dengan nama `counter_7`.
- [x] Mengubah tampilan program menjadi seperti berikut.
- [x] Mengimplementasikan logika berikut pada program.
  - [x] Tombol + menambahkan angka sebanyak satu satuan.
  - [x] Tombol - mengurangi angka sebanyak satu satuan. Apabila _counter_ bernilai 0, maka tombol - tidak memiliki efek apapun pada _counter_.
  - [x] Apabila _counter_ bernilai ganjil, maka teks indikator berubah menjadi "GANJIL" dengan warna biru.
  - [x] Apabila _counter_ bernilai genap, maka teks indikator berubah menjadi "GENAP" dengan warna merah.
  - [x] Angka 0 dianggap sebagai angka genap.
- [x] Menjawab beberapa pertanyaan berikut pada `README.md` pada _root folder_.
- [x] Melakukan `add`-`commit`-`push` ke suatu repositori baru di GitHub. Kamu dapat menamai repositori barumu dengan nama `pbp-flutter-lab`.

### Bonus

- [x] Menyembunyikan/menghilangkan tombol - apabila _counter_ bernilai 0.

## Jawaban

- Jelaskan apa yang dimaksud dengan _stateless widget_ dan _stateful widget_ dan jelaskan perbedaan dari keduanya.

Sebuah *widget* yang bersifat *stateless* tidak memiliki sebuah *state*, yang berarti tidak ada yang akan berubah dari widget tersebut; bersifat statik, tergantung dengan bagaimana *parent*-nya dibentuk.

Sebuah *widget* yang bersifat *stateful* memiliki sebuah *state*, yang dengan sendirinya akan berubah sesuai dengan *state* widget tersebut dari interaksi yang dilakukan.

- Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

1. `Scaffold`: Struktur *layout* sederhana dengan *material design*
2. `AppBar`: Bar yang berada di atas layar (yang ada tulisan judul aplikasi, "Program Counter")
3. `Text`: Tulisan atau teks
4. `Center`: Untuk menengahkan *widget*-*widget* yang ada.
5. `Padding`: Untuk membuat *inset*/*padding* pada sebuah widget
6. `Column`: Agar *widget*-*widget* muncul dalam satu kolom.
7. `Row`: Agar *widget*-*widget* muncul dalam satu baris.
8. `FloatingActionButton`: Tombol aksi melayang yang biasanya muncul di bawah (atau kanan bawah)

- Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

`setState()` digunakan untuk memberitahu *framework* bahwa keadaan obyeknya telah berubah, yang biasanya dikarenakan ada bagian dari interfasenya yang perlu diperbarui. Ini akan membuat *framework* mem-*build* interfasenya.

- Jelaskan perbedaan antara `const` dengan `final`.

Keduanya menandakan sebuah variabel yang konstan; tidak akan/dapat berubah. Bedanya adalah isi `const` terdefinisi setelah program di-*compile* (*compile-time*); sudah terdefinsi di program yang telah di-*compile*, sedangkan isi `final` terdefinsi saat progran dijalankan (*runtime*).

- Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas.

- Tambah tombol decrement.
  - Pada `floatingActionButton`, dibandingkan menggunakan `FloatingActionButton` secara langsung, `Column` dan `Padding` digunakan agar dua tombol dapat dimunculkan dengan elok.
  - Definisikan fungsi baru, `_decrementCounter()`, yang mengurangi counter.
- Buat teks atas dinamis.
  - *Ternary operator* digunakan untuk mengubah tulisan dan warnanya (`_counter % 2 == 1 ? "..." : "..."`).
- Sembunyikan tombol *decrement* saat counter bernilai.
  - *If-else* digunakan di sini (`if (_counter > 0)`).
  - Penyesuaian di *widget* `Row` perlu dilakukan lagi.
- Ubah judul halaman.
  - Nama judul halaman terdefinisi di *widget* pada `MyApp`.
- *Add*, *commit*, dan *push* perubahan yang ada.