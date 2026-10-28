Nama: Nayli Ghassaniy Latifatun Nida

NIM: H1D024058

SHIFT KRS: E

# Tugas Praktikum: Implementasi Class Queue di Dart

Program ini mengimplementasikan struktur data antrean (**Queue**) dengan metode `enqueue` dan `pop` menggunakan bahasa pemrograman Dart, sesuai dengan materi **Modul 1: Bahasa Pemrograman Dart**.

---

## 📌 Konsep Queue (Antrean)
Queue merupakan struktur data linear yang bekerja dengan prinsip **FIFO (*First In, First Out*)**:
- **`enqueue(element)`**: Memasukkan data baru ke posisi paling belakang (*rear/tail*) antrean.
- **`pop()`**: Mengeluarkan dan mengembalikan data yang berada di posisi paling depan (*front/head*) antrean (data yang paling awal masuk).

---

## 📖 Analisis Keterkaitan dengan Modul 1
Program ini menerapkan konsep-konsep penting dari modul praktikum:
1. **Kelas dan Objek (Halaman 5-6)**:
   - Dibuat `class Queue<T>` sebagai cetak biru (*blueprint*) antrean.
   - Menggunakan enkapsulasi atribut privat `_items` agar isi list antrean tidak dapat dimanipulasi langsung secara sembarangan dari luar kelas.
2. **Tipe Data & Generics (Halaman 3)**:
   - Menggunakan fitur Generic Dart `<T>` sehingga antrean bersifat fleksibel (bisa menampung `String`, `int`, `double`, dsb.) dengan tetap menjamin keamanan tipe data (*type safety*).
3. **Struktur Kontrol & Kondisional (Halaman 4)**:
   - Menggunakan `if (isEmpty)` untuk memvalidasi antrean sebelum dilakukan operasi `pop`, mencegah terjadinya kesalahan (*index out of range*).
4. **Fungsi & Metode (Halaman 5)**:
   - Fungsi modular seperti `enqueue`, `pop`, `peek`, dan `display` untuk memisahkan logika kerja antrean.

---

## 🚀 Cara Menjalankan Program

### 1. Menggunakan DartPad (Online)
1. Buka browser dan kunjungi [https://dartpad.dev](https://dartpad.dev).
2. Salin seluruh isi kode dari file `queue.dart`.
3. Tempelkan ke editor DartPad, lalu klik tombol **Run**.

### 2. Menggunakan Terminal / Dart SDK (Lokal)
Jika Dart SDK sudah terpasang di komputer Anda:
```bash
dart run queue.dart
```

