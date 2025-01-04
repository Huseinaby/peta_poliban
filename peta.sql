-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 04 Des 2024 pada 01.41
-- Versi server: 8.0.30
-- Versi PHP: 8.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: peta_kampus_poliban
--

-- --------------------------------------------------------

--
-- Struktur dari tabel buildings
--

CREATE TABLE buildings (
  id int NOT NULL,
  nama_gedung varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  nama_jurusan varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  deskripsi text COLLATE utf8mb4_unicode_ci,
  foto varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  koordinat json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel buildings
--

INSERT INTO buildings (id, nama_gedung, nama_jurusan, deskripsi, foto, koordinat) VALUES
(1, 'Gedung A (Kantor Pusat Poliban)', 'Umum', 'Merupakan gedung Utama di Politeknik Negeri Banjarmasin yang berisi ruang direktur dan sejenisnya serta juga ruang Multimedia yang digunakan untuk acara/rapat', './images/A.jpg', '[[-3.2963436, 114.582046], [-3.2964427, 114.5821562], [-3.2964199, 114.5821761], [-3.2965203, 114.5822914], [-3.2965449, 114.5822699], [-3.2966582, 114.582396], [-3.2968051, 114.5822635], [-3.2964905, 114.5819135], [-3.2963436, 114.582046]]'),
(2, 'Gedung B (Jurusan Teknik Sipil)', 'Teknik Sipil dan Kebumian', 'Merupakan salah satu gedung jurusan untuk Teknik Sipil dan Kebumian yang berisi ruang dosen dan admin. Juga memiliki loket jurusan yang difungsikan untuk mahasiswa melakukan urusan administrasi perkuliahan. ', './images/B.jpg', '[[-3.2970066, 114.5814793], [-3.2969912, 114.5814524], [-3.2969035, 114.5815091], [-3.2969259, 114.5815424], [-3.296864, 114.5815799], [-3.2969201, 114.5816783], [-3.2971263, 114.5815454], [-3.2970617, 114.5814428], [-3.2970066, 114.5814793]]'),
(3, 'Gedung C (Gedung Teori Teknik Mesin)', 'Teknik Mesin', 'Merupakan salah satu gedung pelaksanaan kegiatan belajar mengajar teori bagi mahasiswa Jurusan Teknik Mesin.', './images/C.jpg', '[[-3.2969956, 114.5819615], [-3.2970161, 114.581985], [-3.2969916, 114.5820071], [-3.297091, 114.5821177], [-3.2971138, 114.5820972], [-3.2971357, 114.5821223], [-3.2973208, 114.5819606], [-3.2971808, 114.5817998], [-3.2969956, 114.5819615]]'),
(4, 'Gedung D (Jurusan Teknik Elektro)', 'Teknik Elektro', 'Merupakan salah satu gedung jurusan untuk Teknik Elektro yang berisi ruang dosen dan admin serta lab. Juga memiliki loket jurusan yang difungsikan untuk mahasiswa melakukan urusan administrasi perkuliahan.', './images/D.jpg', '[[-3.2968277, 114.5815203], [-3.2967267, 114.5814792], [-3.2968324, 114.5812339], [-3.2969332, 114.5812722], [-3.2968277, 114.5815203]]'),
(5, 'Gedung E (Gedung Teori Administrasi Bisnis)', 'Administrasi Bisnis', 'Merupakan salah satu gedung tempat kegiatan belajar mengajar teori bagi Mahasiswa Jurusan Administrasi Bisnis.', './images/E.jpg', '[[-3.2944484, 114.58251], [-3.2942852, 114.5826299], [-3.2944619, 114.5828713], [-3.2946252, 114.5827514], [-3.2944484, 114.58251]]'),
(6, 'Gedung F (Jurusan Administrasi Bisnis)', 'Administrasi Bisnis', 'Merupakan salah satu gedung jurusan untuk Administrasi Bisnis yang berisi ruang dosen dan admin. Juga memiliki loket jurusan yang difungsikan untuk mahasiswa melakukan urusan administrasi perkuliahan.', './images/F.jpg', '[[-3.294476, 114.582277], [-3.294294, 114.582385], [-3.294364, 114.582508], [-3.294549, 114.5824], [-3.294476, 114.582277]]'),
(7, 'Gedung G (Gedung Teori Teknik Sipil)', 'Teknik Sipil dan Kebumian', 'Merupakan salah satu gedung tempat kegiatan belajar mengajar teori bagi Mahasiswa Jurusan Sipil dan Kebumian.', './images/G.jpg', '[[-3.295986, 114.581727], [-3.295844, 114.581856], [-3.296018, 114.582059], [-3.296162, 114.581936], [-3.295986, 114.581727]]'),
(8, 'Gedung H (Gedung Teori Teknik Elektro)', 'Teknik Elektro', 'Merupakan salah satu gedung pelaksanaan kegiatan belajar mengajar teori bagi mahasiswa Jurusan Teknik Elektro.', './images/H.jpg', '[[-3.2957451, 114.5814478], [-3.2955297, 114.5816487], [-3.2956743, 114.5818043], [-3.2958897, 114.5816034], [-3.2957451, 114.5814478]]'),
(9, 'Gedung I (Bengkel Teknik Sipil)', 'Teknik Sipil dan Kebumian', 'Merupakan salah satu gedung tempat kegiatan belajar mengajar bagi Mahasiswa Jurusan Sipil dan Kebumian. Sering disebut juga sebagai bengkel Teknik Sipil dikarenakan menjadi tempat untuk melakukan praktik.', './images/I.jpg', '[[-3.296007, 114.582408], [-3.295831, 114.58255], [-3.296114, 114.58288], [-3.296285, 114.582735], [-3.296007, 114.582408]]'),
(10, 'Gedung J (Bengkel Teknik Mesin Produksi)', 'Teknik Mesin', 'Merupakan gedung workshop Prodi Teknik Mesin yang mendukung pelaksanaan kegiatan belajar mengajar bagi mahasiswa Jurusan Teknik Mesin.', './images/J.jpg', '[[-3.2954613, 114.5823343], [-3.2952817, 114.5824947], [-3.2957115, 114.5829775], [-3.2958911, 114.5828171], [-3.2954613, 114.5823343]]'),
(11, 'Gedung K (Laboratorium Teknik Elektro)', 'Teknik Elektro', 'Merupakan salah satu gedung laboratorium tempat kegiatan belajar mengajar dan praktek bagi Mahasiswa Jurusan Teknik Elektro', './images/K.jpg', '[[-3.2955148, 114.5820487], [-3.2957224, 114.5822901], [-3.2958859, 114.582149], [-3.2956784, 114.5819076], [-3.2955148, 114.5820487]]'),
(12, 'Gedung L (Bengkel Teknik Elektro)', 'Teknik Elektro', 'Merupakan salah satu gedung tempat kegiatan belajar mengajar bagi Mahasiswa Jurusan Teknik Elektro. Sering disebut sebagai bengkel listrik dikarenakan lebih sering digunakan untuk melakukan praktik dan memiliki fasilitas peralatan penunjang kegiatan belajar mengajar.', './images/L.jpg', '[[-3.2954479, 114.581708], [-3.2952353, 114.5819041], [-3.2953906, 114.5820731], [-3.2956032, 114.581877], [-3.2954479, 114.581708]]'),
(13, 'Gedung M (Bengkel Teknik Hidrolika Sipil)', 'Teknik Sipil dan Kebumian', 'Merupakan salah satu gedung tempat kegiatan belajar mengajar bagi Mahasiswa Jurusan Sipil dan Kebumian.', './images/M.jpg', '[[-3.2951567, 114.5819669], [-3.2949978, 114.5821051], [-3.2951745, 114.5823089], [-3.2953334, 114.5821707], [-3.2951567, 114.5819669]]'),
(14, 'Gedung N (Teknik Pertambangan)', 'Teknik Sipil dan Kebumian', 'Merupakan salah satu gedung tempat kegiatan belajar mengajar bagi Mahasiswa Prodi Teknik Pertambangan sekaligus menjadi tempat uji LSP Teknik Pertambangan', './images/N.jpg', '[[-3.2949487, 114.582483], [-3.2950028, 114.5825493], [-3.2951241, 114.5824501], [-3.2950701, 114.5823838], [-3.2949487, 114.582483]]'),
(15, 'Gedung O (Teknik Otomotif)', 'Teknik Mesin', 'Merupakan gedung workshop Prodi Teknologi Rekayasa Otomotif yang mendukung pelaksanaan kegiatan belajar mengajar bagi mahasiswa Jurusan Teknik Mesin.', './images/O.jpg', '[[-3.295615, 114.5831645], [-3.2956855, 114.583249], [-3.2956219, 114.5833044], [-3.2956524, 114.5833515], [-3.2953828, 114.5835841], [-3.2952404, 114.5834138], [-3.2955058, 114.5831908], [-3.2955431, 114.5832282], [-3.295615, 114.5831645]]'),
(16, 'Gedung P (Teknik Alat Berat)', 'Teknik Mesin', 'Merupakan gedung workshop Prodi Alat Berat yang mendukung pelaksanaan kegiatan belajar mengajar bagi mahasiswa Jurusan Teknik Mesin.', './images/P.jpg', '[[-3.2946861, 114.5823363], [-3.2945394, 114.5824538], [-3.2947322, 114.5826952], [-3.2948789, 114.5825777], [-3.2946861, 114.5823363]]'),
(17, 'Gedung Q (Gedung Serba Guna)', 'Umum', 'Merupakan gedung Serbaguna di Politeknik Negeri Banjarmasin yang biasa digunakan untuk mengadakan acara besar kampus maupun himpunan atau komunitas.', './images/Q.jpg', '[[-3.2945627, 114.5831617], [-3.2948084, 114.5834614], [-3.2949804, 114.5833199], [-3.2948875, 114.5832065], [-3.2949418, 114.5831618], [-3.2948767, 114.5830824], [-3.2948224, 114.5831271], [-3.2947347, 114.5830202], [-3.2945627, 114.5831617]]'),
(18, 'Gedung R (Gedung Pusat Penelitian dan Pengabdian kepada Masyarakat ) P3M', 'Akademik', 'Merupakan gedung yang dimanfaatkan untuk melaksanakan Penelitian dan Pengabdian Kepada Masyarakat sebagai bagian dari Tri Dharma Perguruan Tinggi.', './images/R.jpg', '[[-3.2961361, 114.5817214], [-3.2961977, 114.5817898], [-3.2963112, 114.5816872], [-3.2962496, 114.5816188], [-3.2961361, 114.5817214]]'),
(19, 'Gedung S (UPT PP, Lab ALKS)', 'Akuntansi', 'Merupakan salah satu gedung jurusan untuk Akuntansi yang berisi ruang dosen serta lab.', './images/S.jpg', '[[-3.296421, 114.581563], [-3.296356, 114.58163], [-3.296531, 114.581833], [-3.296609, 114.581766], [-3.296421, 114.581563]]'),
(20, 'Gedung T (UPT Lab Bahasa)', 'Umum', 'Unit pelayanan terpadu yang menyediakan fasilitas laboratorium bahasa untuk mendukung pembelajaran bahasa bagi mahasiswa', './images/T.jpg', '[[-3.2972146, 114.5810765], [-3.2971318, 114.5811473], [-3.2972027, 114.5812305], [-3.2971179, 114.581303], [-3.2971695, 114.5813635], [-3.2973371, 114.5812203], [-3.2972146, 114.5810765]]'),
(21, 'Gedung U (Jurusan Teknik Mesin)', 'Teknik Mesin', 'Merupakan salah satu gedung jurusan untuk Teknik Mesin yang berisi ruang dosen dan admin serta lab. Juga memiliki loket jurusan yang difungsikan untuk mahasiswa melakukan urusan administrasi perkuliahan.', './images/U.jpg', '[[-3.297113, 114.5809878], [-3.2969762, 114.581189], [-3.2970545, 114.581238], [-3.2971926, 114.5810368], [-3.297113, 114.5809878]]'),
(22, 'Gedung V (Bengkel Otomotif Modifikasi)', 'Teknik Mesin', 'Merupakan gedung praktikum sekaligus teori dari jurusan Teknik Mesin.', './images/V.jpg', '[[-3.295009, 114.5835639], [-3.2950901, 114.5836593], [-3.2950288, 114.5837116], [-3.2950834, 114.5837758], [-3.2952965, 114.5835938], [-3.2951608, 114.5834343], [-3.295009, 114.5835639]]'),
(23, 'Gedung W (Jurusan Akuntansi)', 'Akuntansi', 'Merupakan gedung Jurusan Akuntansi yang berisi ruang dosen serta lab.', './images/W.jpg', '[[-3.2944658, 114.5829197], [-3.2945594, 114.5830532], [-3.2947348, 114.5829298], [-3.2946412, 114.5827963], [-3.2944658, 114.5829197]]'),
(24, 'Gedung X (UPT TIK)', 'Umum', 'Merupakan gedung Unit Penunjang Akademik Teknologi Informasi dan Komunikasi di Politeknik Negeri Banjarmasin yang memiliki lab-lab.', './images/X.jpg', '[[-3.2953832, 114.5821849], [-3.2956121, 114.5824444], [-3.2957332, 114.5823351], [-3.2955042, 114.5820757], [-3.2953832, 114.5821849]]'),
(25, 'Gedung Y (Perpustakaan)', 'Umum', 'Merupakan gedung Perpustakaan di Politeknik Negeri Banjarmasin yang biasa digunakan untuk mencari referensi buku ataupun laporan TA.', './images/Y.jpg', '[[-3.2963061, 114.5817514], [-3.296285, 114.5817296], [-3.2962087, 114.5818036], [-3.296222, 114.5818174], [-3.2961891, 114.5818493], [-3.2962437, 114.5819058], [-3.2962758, 114.5818747], [-3.296308, 114.581908], [-3.2963844, 114.581834], [-3.2963555, 114.581804], [-3.2963776, 114.5817826], [-3.2963274, 114.5817308], [-3.2963061, 114.5817514]]'),
(26, 'Gedung Z (Sekretariat UKM)', 'Umum', 'Merupakan sebuah sekretariat UKM Poliban yang digunakan untuk melakukan kegiatan yang berhubungan seperti rapat dan lainnya.', './images/GedZ.jpg', '[[-3.2950122, 114.583598], [-3.294865, 114.5837358], [-3.2950355, 114.583941], [-3.2950744, 114.583908], [-3.2949531, 114.5837613], [-3.2950639, 114.5836594], [-3.2950122, 114.583598]]'),
(27, 'ETU', 'Umum', 'ETU adalah tempat berkumpulnya mahasiswa untuk menikmati makanan, minuman, dan bersosialisasi selama jam istirahat.', './images/ETU.jpg', '[[-3.2965361, 114.5818341], [-3.2965743, 114.5818798], [-3.2966522, 114.5818171], [-3.2966075, 114.5817687], [-3.2965361, 114.5818341]]'),
(28, 'Mushola', 'Umum', 'Tempat ibadah yang disediakan bagi mahasiswa dan staf kampus untuk melaksanakan shalat dan kegiatan keagamaan lainnya.', './images/Mushola.jpg', '[[-3.2962626, 114.5814271], [-3.29633, 114.5815861], [-3.2964303, 114.5815434], [-3.2963628, 114.5813844], [-3.2962626, 114.5814271]]'),
(29, 'Gedung Olahraga', 'Akademik', 'Tempat sarana olahraga yang disediakan bagi mahasiswa dan staf kampus untuk melaksanakan kegiatan olahraga.', './images/GedOlga.jpg', '[[-3.2973571, 114.581645], [-3.297207, 114.5817717], [-3.2973503, 114.581942], [-3.2975004, 114.5818153], [-3.2973571, 114.581645]]'),
(30, 'Sekretariat Pramuka', 'UKM', 'Merupakan sebuah sekretariat untuk Racana Pramuka Poliban yang digunakan untuk melakukan kegiatan yang berhubungan dengan Racana Pramuka seperti rapat dan lainnya.', './images/Pramuka.jpg', '[[-3.2972629, 114.5816542], [-3.297216, 114.5816947], [-3.297245, 114.5817249], [-3.2972994, 114.5816812], [-3.2972629, 114.5816542]]'),
(31, 'Sekretariat LPM Lensa Poliban', 'UKM', 'Merupakan sebuah sekretariat untuk LPM Lensa Poliban yang digunakan untuk melakukan kegiatan yang berhubungan dengan LPM Lensa seperti rapat dan lainnya.', './images/LPM.jpg', '[[-3.296426, 114.581906], [-3.296383, 114.581949], [-3.296408, 114.581978], [-3.296456, 114.581938], [-3.296426, 114.581906]]'),
(32, 'Sekretariat KSR PMI', 'UKM', 'Merupakan sebuah sekretariat untuk KSR PMI Unit Poliban yang digunakan untuk melakukan kegiatan yang berhubungan dengan KSR PMI seperti rapat dan lainnya.', './images/KSR.jpg', '[[-3.2969192, 114.5818527], [-3.2969947, 114.5819375], [-3.2969655, 114.5819656], [-3.2968899, 114.581882], [-3.2969192, 114.5818527]]'),
(33, 'Lapangan Basket', 'Umum', 'Ruang terbuka yang digunakan untuk bermain basket, selain itu bisa digunakan untuk melaksanakan beberapa kegiatan', './images/Lapangan.jpg', '[[-3.296314, 114.582252], [-3.296198, 114.582351], [-3.296365, 114.582549], [-3.29648, 114.58245], [-3.296314, 114.582252]]'),
(34, 'Pos Satpam', 'Akademik', 'Tempat petugas keamanan kampus yang siap membantu menjaga keamanan dan memberikan informasi bagi pengunjung di Politeknik Negeri Banjarmasin.', './images/Pos.jpg', '[[-3.2964457, 114.5826155], [-3.2964679, 114.5826409], [-3.2964403, 114.582665], [-3.2964168, 114.5826402], [-3.2964457, 114.5826155]]'),
(35, 'Gudang 1', 'Teknik Elektro', 'Merupakan tempat untuk menyimpan peralatan-peralatan praktikum.', './images/GudangH.jpg', '[[-3.295613, 114.581762], [-3.295575, 114.581799], [-3.295618, 114.581853], [-3.295662, 114.581821], [-3.295613, 114.581762]]'),
(36, 'LSP', 'Akademik', 'Merupakan gedung tempat dilakukannya uji kompetensi untuk membantu mahasiswa memperoleh sertifikasi keahlian di Politeknik Negeri Banjarmasin.', './images/LSP.jpg', '[[-3.2959031, 114.5822684], [-3.2959758, 114.5823522], [-3.2958941, 114.5824233], [-3.2958214, 114.5823394], [-3.2959031, 114.5822684]]'),
(37, 'Sekretariat HME', 'Teknik Elektro', 'Merupakan sebuah sekretariat untuk Himpunan Mahasiswa jurusan Teknik Elektro yang digunakan oleh HMJ-E untuk melakukan kegiatan yang berhubungan dengan jurusan Teknik Elektro seperti rapat, pertemuan antar HMJ/UKM dan lainnya.', './images/HME.jpg', '[[-3.2958467, 114.5824045], [-3.2958784, 114.5824393], [-3.2958447, 114.5824701], [-3.295813, 114.5824353], [-3.2958467, 114.5824045]]'),
(38, 'Sekretariat HMM', 'Teknik Mesin', 'Merupakan sebuah sekretariat untuk Himpunan Mahasiswa jurusan Teknik Mesin yang digunakan oleh HMJ-M untuk melakukan kegiatan yang berhubungan dengan jurusan Teknik Mesin seperti rapat, pertemuan antar HMJ/UKM dan lainnya.', './images/HMM.jpg', '[[-3.2957639, 114.582959], [-3.2957933, 114.5829946], [-3.2958429, 114.5829485], [-3.295813, 114.5829143], [-3.2957639, 114.582959]]'),
(39, 'Ruang Genset', 'Akademik', 'Merupakan ruangan yang menghasilkan daya listrik alternatif ketika pasokan listrik dari pembangkit listrik umum mati atau saat diperlukan tambahan pasokan listrik di wilayah tertentu.', './images/Genset.jpg', '[[-3.2958121, 114.5830578], [-3.2958844, 114.583141], [-3.2959322, 114.5830992], [-3.2958599, 114.5830161], [-3.2958121, 114.5830578]]'),
(40, 'Gudang 2', 'Teknik Sipil dan Kebumian', 'Merupakan tempat untuk menyimpan peralatan-peralatan praktikum.', './images/GudangJ.jpg', '[[-3.2952337, 114.5823477], [-3.2952805, 114.5824065], [-3.295413, 114.5823005], [-3.2953662, 114.5822418], [-3.2952337, 114.5823477]]'),
(41, 'Kantin', 'Umum', 'Kantin kampus adalah tempat berkumpulnya mahasiswa untuk menikmati makanan, minuman, dan bersosialisasi selama jam istirahat', './images/Kantin.jpg', '[[-3.294917, 114.5823028], [-3.2948806, 114.5823326], [-3.2949733, 114.5824463], [-3.2950097, 114.5824165], [-3.294917, 114.5823028]]'),
(42, 'Sekretariat HMB', 'Administrasi Bisnis', '\r\nMerupakan sebuah sekretariat untuk Himpunan Mahasiswa jurusan Bisnis yang digunakan oleh HMJ-B untuk melakukan kegiatan yang berhubungan dengan jurusan Bisnis seperti rapat, pertemuan antar HMJ/UKM dan lainnya.', './images/HMB.jpg', '[[-3.2941452, 114.5824848], [-3.294187, 114.5825499], [-3.2942568, 114.5825048], [-3.294215, 114.5824398], [-3.2941452, 114.5824848]]'),
(43, 'Parkiran Elektro', 'Parkiran', 'Area parkir yang disediakan bagi mahasiswa jurusan teknik', './images/ParkiranElektro.jpg', '[[-3.297651, 114.581724], [-3.296717, 114.582547], [-3.296799, 114.582644], [-3.297738, 114.581821], [-3.297651, 114.581724]]'),
(44, 'Parkiran GSG depan', 'Parkiran', 'Area parkir yang terleletak di depan Gedung Serba Guna, biasa digunakan sebagai tempat parkir saat ada kegiatan berlangsung', './images/ParkiranGSGDepan.jpg', '[[-3.295354, 114.582847], [-3.294962, 114.583195], [-3.295085, 114.583335], [-3.295474, 114.582987], [-3.295354, 114.582847]]'),
(45, 'Parkiran GSG belakang', 'Parkiran', 'Area parkir yang terleletak di belakang Gedung Serba Guna, biasa digunakan sebagai tempat parkir saat ada kegiatan berlangsung', './images/ParkiranGSGBelakang.jpg', '[[-3.294533, 114.583226], [-3.294488, 114.583263], [-3.294734, 114.583561], [-3.294785, 114.583515], [-3.294533, 114.583226]]'),
(46, 'Parkiran GSG samping', 'Parkiran', 'Area parkir yang terleletak di samping Gedung Serba Guna, biasa digunakan sebagai tempat parkir saat ada kegiatan berlangsung', './images/ParkiranGSGSamping.jpg', '[[-3.294997, 114.583389], [-3.29479, 114.583563], [-3.294833, 114.583617], [-3.295039, 114.58344], [-3.294997, 114.583389]]'),
(47, 'Parkiran Bisnis', 'Parkiran', 'Area parkir yang disediakan bagi mahasiswa jurusan Administrasi Bisnis dan Akuntansi', './images/ParkiranBisnis.jpg', '[[-3.2962373, 114.5829485], [-3.2963272, 114.5830477], [-3.2958294, 114.5834725], [-3.2957395, 114.583364], [-3.2962373, 114.5829485]]'),
(48, 'Parkiran UKM', 'Parkiran', 'Area parkir khusus yang disediakan bagi Mahasiswa/i UKM Politeknik Negeri Banjarmasin.', './images/ParkiranGedZ.jpg', '[[-3.2949834, 114.5837622], [-3.2950945, 114.583892], [-3.2953467, 114.5836779], [-3.2953202, 114.5836461], [-3.2951041, 114.5838299], [-3.2950174, 114.5837318], [-3.2949834, 114.5837622]]'),
(49, 'Parkiran 1 Gedung Pusat', 'Parkiran', 'Area parkir khusus yang disediakan bagi staf kampus Politeknik Negeri Banjarmasin.', './images/ParkiranAkademik1.jpg', '[[-3.2967836, 114.5820099], [-3.2968711, 114.5821134], [-3.2969003, 114.5820886], [-3.2968127, 114.5819852], [-3.2967836, 114.5820099]]'),
(50, 'Parkiran 2 Gedung Pusat', 'Parkiran', 'Area parkir khusus yang disediakan bagi staf kampus Politeknik Negeri Banjarmasin.', './images/ParkiranAkademik2.jpg', '[[-3.296751, 114.582038], [-3.296718, 114.582067], [-3.296809, 114.582172], [-3.296847, 114.582139], [-3.296751, 114.582038]]'),
(51, 'Parkiran Dosen Mesin', 'Parkiran', 'Area parkir khusus yang disediakan bagi dosen dan staf kampus Politeknik Negeri Banjarmasin.', './images/ParkiranDosenMesin.jpg', '[[-3.296973, 114.58119], [-3.296932, 114.581273], [-3.296994, 114.581321], [-3.297056, 114.581235], [-3.296973, 114.58119]]'),
(52, 'Parkiran Dosen Elektro', 'Parkiran', 'Area parkir khusus yang disediakan bagi dosen dan staf kampus Politeknik Negeri Banjarmasin.', './images/ParkiranDosenElektro.jpg', '[[-3.2970211, 114.5813875], [-3.2970617, 114.5814428], [-3.2971527, 114.5813757], [-3.2971121, 114.5813204], [-3.2970211, 114.5813875]]'),
(53, 'Teaching Factory', 'Akademik', 'Merupakan pengembangan dari unit produksi di sekolah vokasi, yang dirancang untuk mempersiapkan lulusan agar menjadi pekerja dan wirausaha.', './images/TeFa.jpg', '[[-3.2968062, 114.5817985], [-3.2968738, 114.5818709], [-3.2969049, 114.5818418], [-3.2968373, 114.5817694], [-3.2968062, 114.5817985]]'),
(54, 'Gedung Administrasi Bisnis', 'Administrasi Bisnis', 'Merupakan salah satu gedung tempat kegiatan belajar mengajar teori sekaligus praktik bagi Mahasiswa Jurusan Administrasi Bisnis.', './images/GedungBaru.jpg', '[[-3.2944821, 114.5822199], [-3.294583, 114.5823482], [-3.2946767, 114.5822784], [-3.2945785, 114.5821501], [-3.2944821, 114.5822199]]');

-- --------------------------------------------------------

--
-- Struktur dari tabel building_details
--

CREATE TABLE building_details (
  id int NOT NULL,
  building_id int NOT NULL,
  lantai int NOT NULL,
  ruang_teori enum('Ada','Tidak Ada') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tidak Ada',
  ruang_lab enum('Ada','Tidak Ada') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tidak Ada',
  ruang_rapat enum('Ada','Tidak Ada') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tidak Ada',
  ruang_sholat enum('Ada','Tidak Ada') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tidak Ada',
  toilet enum('Ada','Tidak Ada') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tidak Ada',
  jumlah_ruangan int NOT NULL,
  akses_wifi enum('Ada','Tidak Ada') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tidak Ada',
  jam_operasional_a text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  jam_operasional_b text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel building_details
--

INSERT INTO building_details (id, building_id, lantai, ruang_teori, ruang_lab, ruang_rapat, ruang_sholat, toilet, jumlah_ruangan, akses_wifi, jam_operasional_a, jam_operasional_b) VALUES
(1, 1, 2, 'Tidak Ada', 'Tidak Ada', 'Ada', 'Ada', 'Ada', 17, 'Ada', '07.00-18.00', '07.00-18.00'),
(2, 2, 2, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Ada', 'Ada', 4, 'Ada', '07.00-17.00', 'Tutup'),
(3, 3, 2, 'Ada', 'Ada', 'Tidak Ada', 'Ada', 'Ada', 13, 'Ada', '07.00-17.00', 'Tutup'),
(4, 4, 2, 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 16, 'Ada', '07.00-17.00', 'Tutup'),
(5, 5, 2, 'Ada', 'Ada', 'Tidak Ada', 'Ada', 'Ada', 15, 'Ada', '07.00-17.00', 'Tutup'),
(6, 6, 1, 'Tidak Ada', 'Tidak Ada', 'Ada', 'Tidak Ada', 'Ada', 7, 'Ada', '07.00-17.00', 'Tutup'),
(7, 7, 2, 'Ada', 'Ada', 'Ada', 'Tidak Ada', 'Ada', 16, 'Ada', '07.00-17.00', 'Tutup'),
(8, 8, 2, 'Ada', 'Ada', 'Tidak Ada', 'Tidak Ada', 'Ada', 15, 'Ada', '07.00-17.00', 'Tutup'),
(9, 9, 1, 'Ada', 'Ada', 'Tidak Ada', 'Tidak Ada', 'Ada', 5, 'Ada', '07.00-17.00', 'Tutup'),
(10, 10, 1, 'Ada', 'Ada', 'Tidak Ada', 'Tidak Ada', 'Ada', 3, 'Ada', '07.00-17.00', 'Tutup'),
(11, 11, 1, 'Ada', 'Ada', 'Tidak Ada', 'Tidak Ada', 'Ada', 12, 'Ada', '07.00-17.00', 'Tutup'),
(12, 12, 2, 'Ada', 'Ada', 'Tidak Ada', 'Tidak Ada', 'Ada', 7, 'Ada', '07.00-18.00', '07.00-18.00'),
(13, 13, 1, 'Ada', 'Ada', 'Tidak Ada', 'Tidak Ada', 'Ada', 4, 'Ada', '07.00-17.00', 'Tutup'),
(14, 14, 1, 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 5, 'Ada', '07.00-18.00', '07.00-18.00'),
(15, 15, 2, 'Ada', 'Ada', 'Tidak Ada', 'Tidak Ada', 'Ada', 5, 'Ada', '07.00-17.00', 'Tutup'),
(16, 16, 2, 'Ada', 'Ada', 'Tidak Ada', 'Tidak Ada', 'Ada', 4, 'Ada', '07.00-17.00', 'Tutup'),
(17, 17, 1, 'Ada', 'Tidak Ada', 'Ada', 'Tidak Ada', 'Ada', 4, 'Ada', '07.00-18.00', '07.00-18.00'),
(18, 18, 1, 'Tidak Ada', 'Ada', 'Ada', 'Ada', 'Ada', 2, 'Ada', '07.00-17.00', 'Tutup'),
(19, 19, 1, 'Ada', 'Ada', 'Tidak Ada', 'Tidak Ada', 'Ada', 5, 'Ada', '07.00-17.00', 'Tutup'),
(20, 20, 2, 'Ada', 'Ada', 'Ada', 'Tidak Ada', 'Ada', 7, 'Ada', '07.00-17.00', 'Tutup'),
(21, 21, 2, 'Tidak Ada', 'Tidak Ada', 'Ada', 'Tidak Ada', 'Ada', 4, 'Ada', '07.00-17.00', 'Tutup'),
(22, 22, 1, 'Ada', 'Ada', 'Tidak Ada', 'Tidak Ada', 'Ada', 2, 'Ada', '07.00-17.00', 'Tutup'),
(23, 23, 3, 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 11, 'Ada', '07.00-17.00', 'Tutup'),
(24, 24, 3, 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 14, 'Ada', '07.00-17.00', 'Tutup'),
(25, 25, 2, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Ada', 0, 'Ada', '08.30-15.30', 'Tutup'),
(26, 26, 1, 'Tidak Ada', 'Tidak Ada', 'Ada', 'Ada', 'Tidak Ada', 8, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(27, 27, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 0, 'Ada', '08.30-15.30', 'Tutup'),
(28, 28, 2, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Ada', 'Tidak Ada', 2, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(29, 29, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 0, 'Tidak Ada', 'Tutup', 'Tutup'),
(30, 30, 1, 'Tidak Ada', 'Tidak Ada', 'Ada', 'Ada', 'Tidak Ada', 1, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(31, 31, 1, 'Tidak Ada', 'Tidak Ada', 'Ada', 'Ada', 'Tidak Ada', 1, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(32, 32, 1, 'Tidak Ada', 'Tidak Ada', 'Ada', 'Ada', 'Tidak Ada', 2, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(33, 33, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 0, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(34, 34, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 1, 'Ada', '24 jam', '24 jam'),
(35, 35, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 2, 'Tidak Ada', 'Tutup', 'Tutup'),
(36, 36, 1, 'Tidak Ada', 'Tidak Ada', 'Ada', 'Ada', 'Ada', 4, 'Ada', '09.00-15.00', 'Tutup'),
(37, 37, 1, 'Tidak Ada', 'Tidak Ada', 'Ada', 'Ada', 'Tidak Ada', 1, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(38, 38, 1, 'Tidak Ada', 'Tidak Ada', 'Ada', 'Ada', 'Tidak Ada', 1, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(39, 39, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 2, 'Tidak Ada', 'Tutup', 'Tutup'),
(40, 40, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 3, 'Tidak Ada', 'Tutup', 'Tutup'),
(41, 41, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 0, 'Tidak Ada', '07.00-16.00', 'Tutup'),
(42, 42, 1, 'Tidak Ada', 'Tidak Ada', 'Ada', 'Ada', 'Tidak Ada', 1, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(43, 43, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 0, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(44, 44, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 0, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(45, 45, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 0, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(46, 46, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 0, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(47, 47, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 0, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(48, 48, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 0, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(49, 49, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 0, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(50, 50, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 0, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(51, 51, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 0, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(52, 52, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 0, 'Tidak Ada', '07.00-18.00', '07.00-18.00'),
(53, 53, 1, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 3, 'Tidak Ada', 'Tutup', 'Tutup'),
(54, 54, 2, 'Ada', 'Ada', 'Tidak Ada', 'Ada', 'Ada', 8, 'Tidak Ada', '07.00-17.00', 'Tutup');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel buildings
--
ALTER TABLE buildings
  ADD PRIMARY KEY (id);

--
-- Indeks untuk tabel building_details
--
ALTER TABLE building_details
  ADD PRIMARY KEY (id),
  ADD KEY building_id (building_id);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel buildings
--
ALTER TABLE buildings
  MODIFY id int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel building_details
--
ALTER TABLE building_details
  MODIFY id int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel building_details
--
ALTER TABLE building_details
  ADD CONSTRAINT building_details_ibfk_1 FOREIGN KEY (building_id) REFERENCES buildings (id) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;