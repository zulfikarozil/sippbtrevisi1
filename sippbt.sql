-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jan 2021 pada 14.34
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sippbt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama_dokter` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `umur` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telpon` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nip` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `deleted_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `jenis_kelamin`, `umur`, `alamat`, `no_telpon`, `tempat_lahir`, `tanggal_lahir`, `nip`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 'Wahyudi', 'laki-laki', 0, 'Mangunrejo', '085537263812', 'Blitar', '1995-05-05', '199505052020030005', '0000-00-00', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(20) NOT NULL,
  `id_pendaftaran` int(20) NOT NULL,
  `no_pendaftaran` int(20) NOT NULL,
  `id_pasien` int(16) NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `id_ruangan` int(20) NOT NULL,
  `nama_ruangan` varchar(20) NOT NULL,
  `pelayanan` varchar(255) NOT NULL,
  `poli` varchar(255) NOT NULL,
  `id_dokter` int(20) NOT NULL,
  `nama_dokter` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `hasil_diagnosa` text NOT NULL,
  `no_jamkes` varchar(255) DEFAULT NULL,
  `nama_jamkes` varchar(255) DEFAULT NULL,
  `id_obat` int(11) DEFAULT NULL,
  `nama_obat` varchar(255) DEFAULT NULL,
  `dosis_obat` varchar(10) DEFAULT NULL,
  `satuan_dosis` varchar(10) DEFAULT NULL,
  `harga_obat` int(10) DEFAULT NULL,
  `id_rekam_medis` int(20) DEFAULT NULL,
  `no_rekam_medis` int(20) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `deleted_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(255) NOT NULL,
  `golongan_obat` varchar(255) NOT NULL,
  `jenis_obat` varchar(255) NOT NULL,
  `dosis_obat` varchar(255) NOT NULL,
  `satuan_dosis` varchar(10) NOT NULL,
  `satuan_obat` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `sisa_obat` int(11) NOT NULL,
  `harga_obat` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `golongan_obat`, `jenis_obat`, `dosis_obat`, `satuan_dosis`, `satuan_obat`, `harga_beli`, `sisa_obat`, `harga_obat`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, 'Amoxicilin', 'Ringan', 'Tablet', '1', ' Kapsul', 'Tablet', '1000', 1, '2000', '2021-01-12', '2021-01-12', NULL),
(15, 'Antacida', 'Ringan', 'Kapsul', '1 ', 'Tablet ', 'Butir', '3000', 1, '6000', '2021-01-16', '2021-01-16', NULL),
(16, 'Sianida', 'Berat', 'Kapsul', '1', 'Puyer', 'Puyer', '10000', 1, '15000', '2021-01-16', '2021-01-16', NULL),
(17, 'CTM', 'Ringan', 'Tablet', '1', 'Kapsul', 'Tablet', '500', 1, '1000', '2021-01-16', '2021-01-16', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `gol_darah` varchar(2) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `deleted_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nik`, `nama_pasien`, `jenis_kelamin`, `alamat`, `pekerjaan`, `status`, `tempat_lahir`, `tanggal_lahir`, `gol_darah`, `created_at`, `updated_at`, `deleted_at`) VALUES
(28, '8127986128764919', 'Yudi', 'laki-laki', 'Segara Sari', 'Guru', 'belum_kawin', 'Samarinda', '1996-10-07', 'a', '2021-01-13', '2021-01-13', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemeriksaan`
--

CREATE TABLE `pemeriksaan` (
  `id_pemeriksaan` int(11) NOT NULL,
  `id_pendaftaran` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `poli` varchar(255) NOT NULL,
  `id_ruangan` varchar(255) DEFAULT NULL,
  `id_rekam_medis` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemeriksaan`
--

INSERT INTO `pemeriksaan` (`id_pemeriksaan`, `id_pendaftaran`, `id_dokter`, `id_pasien`, `poli`, `id_ruangan`, `id_rekam_medis`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 10, 28, 'umum', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00'),
(2, 1, 10, 28, 'umum', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendaftaran` int(11) NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nik` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `gol_darah` varchar(1) NOT NULL,
  `pelayanan` varchar(255) NOT NULL,
  `poli` varchar(255) DEFAULT NULL,
  `no_jamkes` varchar(255) DEFAULT NULL,
  `nama_jamkes` varchar(20) DEFAULT NULL,
  `no_rekam_medis` varchar(255) DEFAULT NULL,
  `keluhan` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `deleted_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_pendaftaran`, `nama_pasien`, `tempat_lahir`, `tanggal_lahir`, `nik`, `jenis_kelamin`, `alamat`, `pekerjaan`, `status`, `gol_darah`, `pelayanan`, `poli`, `no_jamkes`, `nama_jamkes`, `no_rekam_medis`, `keluhan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Alexander', 'Blitar', '1995-05-05', '2147483648928900', 'laki-laki', 'Mertojoyo', 'Mahasiswa', 'belum_kawin', 'o', 'bpjs', 'poli_umum', NULL, 'bpjs_kesehatan', NULL, 'Sakit kepala', '2021-01-06', '2021-01-12', '0000-00-00'),
(2, 'Rafif', 'Banjarmasin', '1996-02-24', '2147483647', 'laki-laki', 'Sengkaling', 'Mahasiswa', 'belum_kawin', 'b', 'umum', 'poli_gigi', NULL, '-', NULL, 'Sakit Gigi', '2021-01-09', '2021-01-09', '0000-00-00'),
(3, 'Tama', 'Banjarbaru', '1996-07-18', '2147483647', 'laki-laki', 'Joyo Utomo', 'Musisi', 'belum_kawin', 'a', 'umum', 'poli_umum', NULL, '-', NULL, 'Maag', '2021-01-09', '2021-01-09', '0000-00-00'),
(4, 'Zul', 'Samarinda', '1996-10-12', '8916754718238146', 'laki-laki', 'MT Haryono', 'PNS', 'belum_kawin', 'o', 'umum', 'poli_gigi', NULL, '-', NULL, 'Nyeri tenggorokan', '2021-01-09', '2021-01-09', '0000-00-00'),
(5, 'Riadi', 'Palangkaraya', '1995-11-04', '9872169386881234', 'laki-laki', 'Slamet Riadi', 'BUMN', 'kawin', 'a', 'bpjs', 'poli_gigi', '71826498737189369', 'bpjs_kesehatan', NULL, 'Pembersihan karang gigi', '2021-01-12', '2021-01-12', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekam medis`
--

CREATE TABLE `rekam medis` (
  `id_rekam_medis` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `diagnosa_dokter` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `resep`
--

CREATE TABLE `resep` (
  `id_resep` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_ambil` date NOT NULL,
  `nama_obat` varchar(255) NOT NULL,
  `jenis_obat` varchar(255) NOT NULL,
  `gol_obat` varchar(255) NOT NULL,
  `dosis_obat` int(11) NOT NULL,
  `dosis_satuan` int(11) NOT NULL,
  `harga_obat` int(11) NOT NULL,
  `no_rekam_medis` int(11) NOT NULL,
  `diagnosa_dokter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE `ruangan` (
  `id_ruangan` int(11) NOT NULL,
  `nama_ruangan` varchar(255) NOT NULL,
  `jumlah_ruangan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indeks untuk tabel `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD PRIMARY KEY (`id_pemeriksaan`),
  ADD KEY `id_pendaftaran` (`id_pendaftaran`),
  ADD KEY `INDEX` (`id_dokter`,`id_pasien`),
  ADD KEY `relasi pasien` (`id_pasien`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indeks untuk tabel `rekam medis`
--
ALTER TABLE `rekam medis`
  ADD PRIMARY KEY (`id_rekam_medis`);

--
-- Indeks untuk tabel `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`id_resep`);

--
-- Indeks untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id_ruangan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  MODIFY `id_pemeriksaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `rekam medis`
--
ALTER TABLE `rekam medis`
  MODIFY `id_rekam_medis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `resep`
--
ALTER TABLE `resep`
  MODIFY `id_resep` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id_ruangan` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD CONSTRAINT `relasi dokter` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relasi pasien` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relasi pendaftaran` FOREIGN KEY (`id_pendaftaran`) REFERENCES `pendaftaran` (`id_pendaftaran`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
