# 🌟 Kuis PAM - Aplikasi Mobile

Kuis PAM adalah aplikasi mobile yang dikembangkan menggunakan **Flutter** untuk mendukung pembelajaran dan latihan Kuis pada mata kuliah **Pemrograman Aplikasi Mobile (PAM)**. Aplikasi ini dirancang untuk membantu mahasiswa memahami materi PAM melalui kuis interaktif dan responsif.

📦 **Instalasi & Deployment**

Sebelum memulai, pastikan Anda telah menginstal perangkat lunak berikut:

* **Git** – untuk meng-clone repository dari GitHub
* **Flutter SDK** – untuk membangun dan menjalankan aplikasi Flutter
* **Code Editor** – disarankan menggunakan Visual Studio Code
* **Android Studio / Emulator / Device** – untuk menjalankan aplikasi di Android/iOS

---

## 1. Clone Repository

Clone repository proyek ke komputer lokal Anda:

```bash
git clone https://github.com/username/kuis-pam.git
cd kuis-pam
```

Buka folder proyek menggunakan **Visual Studio Code** atau editor favorit Anda.

---

## 2. Instalasi Dependency

Instal semua dependency Flutter dengan menjalankan:

```bash
flutter pub get
```

Perintah ini akan mengunduh semua package yang dibutuhkan oleh proyek.

---

## 3. Menjalankan Aplikasi

Jalankan aplikasi di emulator atau device fisik dengan perintah:

```bash
flutter run
```

Jika Anda memiliki lebih dari satu device atau emulator, Anda dapat menentukan device tertentu dengan:

```bash
flutter run -d <device_id>
```

---

## 4. Struktur Proyek

* **lib/** – folder utama berisi semua source code Flutter
* **assets/** – folder untuk menyimpan gambar, ikon, dan file statis lain
* **pubspec.yaml** – file konfigurasi dependency Flutter

---

## 5. Catatan

* Pastikan **Flutter SDK** sudah terpasang dengan benar dan path sudah diatur di environment variable.
* Jalankan **flutter doctor** untuk memeriksa apakah semua requirement sudah terpenuhi.
