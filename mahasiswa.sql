CREATE DATABASE fakultas;
CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(11) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum('laki-laki', 'perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
);

-- insert jurusan
insert into jurusan(kode, nama) values ("IS", "Ilmu Sejarah");

-- insert mahasiswa
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) value (1, "20417141026", "Alamsyah", "laki-laki", "Yogyakarta", "2001-12-21", "Jl. Bantul 90");

-- update mahasiswa
 update mahasiswa set id_jurusan = "2" where id = 2;

-- delete mahasiswa
delete from mahasiswa where id = 2;