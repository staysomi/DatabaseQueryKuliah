CREATE DATABASE buku_tamu;

-- NO 1
CREATE TABLE pegawai (
    id_pegawai INT AUTO_INCREMENT PRIMARY KEY,
    nama_pegawai VARCHAR(100) NOT NULL,
    alamat_email VARCHAR(100) NOT NULL,
    username VARCHAR(50),
    password VARCHAR(50),
    no_hp VARCHAR(50) NOT NULL,
    alamat VARCHAR(200) NOT NULL,
    status VARCHAR(50) NOT NULL,
    id_jabatan INT
);

CREATE TABLE jabatan (
    id_jabatan INT AUTO_INCREMENT PRIMARY KEY,
    jabatan VARCHAR(100) NOT NULL,
    keterangan VARCHAR(200) NOT NULL
);

CREATE TABLE bagian (
    id_bagian INT AUTO_INCREMENT PRIMARY KEY,
    nama_bagian VARCHAR(100) NOT NULL
);

CREATE TABLE ruang (
    id_ruang INT AUTO_INCREMENT PRIMARY KEY,
    nama_ruang VARCHAR(50) NOT NULL
);

CREATE TABLE sigma (
    id_sigma INT AUTO_INCREMENT PRIMARY KEY,
    id_pegawai INT,
    id_bagian INT,
    id_ruang INT,
    id_tamu INT
);

CREATE TABLE tamu (
    id_tamu INT AUTO_INCREMENT PRIMARY KEY,
    nama_tamu VARCHAR(50) NOT NULL,
    jumlah_tamu INT,
    jenis_instansi VARCHAR(50),
    nama_instansi VARCHAR(50),
    keperluan VARCHAR(50) NOT NULL,
    detail_keperluan VARCHAR(200) NOT NULL,
    notulen VARCHAR(50) NOT NULL,
    respon VARCHAR(50) NOT NULL,
    tanggal_berkunjung DATE
);
-- NO 1

-- NO 2
INSERT INTO jabatan VALUES
(1, 'Supervisor', 'SUPERVISOR'),
(2, 'Manager', 'MANAGER'),
(3, 'COMMON', 'COMMON'),
(4, 'Human Resource', 'HRD'),
(5, 'Direktur', 'DIREKTUR');

-- NO 3
INSERT INTO pegawai VALUES
('1', 'popo', 'popo@gmail.com', 'popopo', 'popopopo', '8973263762', 'Banten', 'Single', '1'),
('2', 'Rudi', 'popoas@gmail.com', 'popoas', 'popopoas', '89678327837', 'Banten', 'Single', '2'),
('3', 'Salim', 'popos@gmail.com', 'spopopo', 'spopopopo', '8973263878', 'Banten', 'Single', '3'),
('4', 'Salimin', 'poposaa@gmail.com', 'spopopoa', 'spopopopoa', '8973263834', 'Banten', 'Single', '1'),
('5', 'Salimun', 'poposa@gmail.com', 'spopopos', 'spopopopos', '8973262345', 'Banten', 'Single', '3'),
('6', 'Sutris', 'popaso@gmail.com', 'popdsfopo', 'popopodsfpo', '8973343762', 'Jakarta', 'Married', '5'),
('7', 'Ridho', 'popdsoas@gmail.com', 'poposdfas', 'popopoadsfs', '8963457837', 'Bandung', 'Married', '2'),
('8', 'Lesti', 'popfdgs@gmail.com', 'spopdsfopo', 'spopopodsfpo', '8973263458', 'Bekasi', 'Single', '4'),
('9', 'Karin', 'popofdsaa@gmail.com', 'spopdsfopoa', 'spopodsfpopoa', '8973234834', 'Bogor', 'Married', '1'),
('10', 'Lola', 'popsdfsa@gmail.com', 'spopsdfopos', 'spopopdsfopos', '89735662345', 'Depok', 'Single', '5');

-- NO 4
INSERT INTO sigma VALUES
(1,4,1,2,3),
(2,3,1,5,2),
(3,5,6,1,3),
(4,2,6,3,1),
(13,1,6,4,5);

-- NO 4
INSERT INTO ruang VALUES
(1, 'RUANG A'),
(2, 'RUANG B'),
(3, 'RUANG C'),
(4, 'RUANG D'),
(5, 'RUANG E');

-- NO 4
INSERT INTO bagian VALUES
('1', 'Database'),
('2', 'Software'),
('3', 'Hardware'),
('4', 'Design'),
('5', 'Security'),
('6', 'Finance');

-- NO 5
INSERT INTO tamu VALUES 
(1, 'spewafpes', 51, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(2, 'spadsadepes', 51, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(3, 'aapepeswadwa', 21, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(4, 'ddfpepwdwaes', 11, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(5, 'peasfpawdsaes', 54, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(6, 'pepsadsadwes', 21, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(7, 'pepefwsadwaefs', 5, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(8, 'pepeqwsadwadsars', 7, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(9, 'spepaawdsasaes', 5, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(10, 'aaaspewadasdpes', 1, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(11, 'spewafpes', 51, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(12, 'spadsadepes', 51, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(13, 'aapepeswadwa', 21, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(14, 'ddfpepwdwaes', 11, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(15, 'peasfpawdsaes', 54, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(16, 'pepsadsadwes', 21, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(17, 'pepefwsadwaefs', 5, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(18, 'pepeqwsadwadsars', 7, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(19, 'spepaawdsasaes', 5, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(20, 'aaaspewadasdpes', 45, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 30) DAY),
(21, 'spewafasapes', 090, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 365) DAY),
(22, 'spaddwqsadepes', 231, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 365) DAY),
(23, 'aapepesadswadwa', 211, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 365) DAY),
(24, 'ddfpepwZxdwaes', 11, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 365) DAY),
(25, 'peasfpasdawdsaes', 54, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 365) DAY),
(26, 'pepsadsaasddwes', 24, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 365) DAY),
(27, 'pepefzxcwsadwaefs', 23, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 365) DAY),
(28, 'pepeqwsasaddwadsars', 2, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 365) DAY),
(29, 'spepaawsaddsasaes', 43, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 365) DAY),
(30, 'aaaspewasdadasdpes', 345, 'Keuangan', 'Bank DKI', 'Laporan Keuangan', 'Laporan Bulanan', 'p', 'oke', current_timestamp() - INTERVAL FLOOR( RAND() * 365) DAY);

-- NO 6
UPDATE pegawai SET pegawai.id_jabatan = 2
WHERE pegawai.id_pegawai = 2;

SELECT 
    pegawai.id_pegawai, pegawai.nama_pegawai, jabatan.nama_jabatan
FROM
    pegawai
        INNER JOIN
    jabatan ON pegawai.id_jabatan = jabatan.id_jabatan;
-- NO 6

-- NO 7
SELECT bagian.id_bagian, SUM(tamu.jumlah_tamu), bagian.nama_bagian FROM sigma
INNER JOIN
    tamu ON sigma.id_tamu = tamu.id_tamu
INNER JOIN
    bagian ON sigma.id_bagian = bagian.id_bagian
WHERE tanggal_berkunjung > DATE_SUB(NOW(), INTERVAL 1 MONTH)
GROUP BY bagian.id_bagian 
ORDER BY bagian.id_bagian ASC;

SELECT bagian.id_bagian, COUNT(sigma.id_bagian), bagian.nama_bagian FROM sigma
INNER JOIN
    tamu ON sigma.id_tamu = tamu.id_tamu
INNER JOIN
    bagian ON sigma.id_bagian = bagian.id_bagian
WHERE tanggal_berkunjung > DATE_SUB(NOW(), INTERVAL 1 MONTH)
GROUP BY bagian.id_bagian 
ORDER BY bagian.id_bagian ASC;
 -- NO 7
 
SELECT * FROM tamu;

SELECT 
    *
FROM
    tamu
WHERE
    tanggal_berkunjung > DATE_SUB(NOW(), INTERVAL 1 MONTH)
ORDER BY tanggal_berkunjung DESC;

SELECT 
	sigma.id_sigma, tamu.jumlah_tamu, tamu.nama_tamu, tamu.tanggal_berkunjung, bagian.id_bagian, bagian.nama_bagian, ruang.nama_ruang
FROM
    sigma
        INNER JOIN tamu ON sigma.id_tamu = tamu.id_tamu
        INNER JOIN bagian ON sigma.id_bagian = bagian.id_bagian
        INNER JOIN ruang ON sigma.id_ruang = ruang.id_ruang
WHERE tanggal_berkunjung > DATE_SUB(NOW(), INTERVAL 1 MONTH);

DELETE FROM sigma WHERE id_sigma > 0;

ALTER TABLE jabatan RENAME TO jabatan;

ALTER TABLE pegawai RENAME COLUMN id_level TO id_jabatan;

ALTER TABLE sigma ADD id_tamu INT;

UPDATE sigma SET sigma.id_tamu = 2
WHERE sigma.id_sigma = 1;

SHOW FULL TABLES;

use buku_tamu;

select * from jabatan where id_jabatan > 5;

INSERT INTO `Pegawai` (`id_pegawai`, `nama_pegawai`, `alamat_email`, `username`,
`password`, `no_hp`, `alamat`, `status`, `id_jabatan`) 
VALUES 
(NULL, 'Erik Lazuardi', 'Jakarta', 'jhsd9u', 'd912u', '0823231241', 'Jakarta', 'Tetap',  '1'), 
(NULL, 'Iis Suryati', 'Jakarta', 'uhef89','u280f2', '086362171', 'Jakarta', 'Tetap',  '1'),
(NULL, 'Tubagus Ekantara', 'Jakarta', 'idjijd','82ud8j2', '0862637274', 'Jakarta', 'Tetap',  '1'), 
(NULL, 'Eko Santoso', 'Jakarta', 'uhsd98u2','309ud029', '08726774232', 'Jakarta', 'Tetap',  '2'),
(NULL, 'Endang Koswara', 'Jakarta', 'sjdhijd9','3u2f92j3', '0862675412', 'Jakarta', 'Tetap', '2'), 
(NULL, 'Melinda Ayudia', 'Jakarta', 'ujshd', 'ij2089', '08647124712', 'Jakarta', 'Tetap', '4'),
(NULL, 'Ari Kurniawan', 'Jakarta', '8du89','1u9eu', '08726341723', 'Jakarta', 'Tetap', '3'), 
(NULL, 'Melani Saputri', 'Jakarta', 'hnjdffy','h29784h2', '086623712', 'Jakarta', 'Tetap', '4'), 
(NULL, 'Rudi Eka Purnama', 'Jakarta', '93842i','jd82jff', '08776236712', 'Jakarta', 'Tetap', '4'), 
(NULL, 'Agus Saputra', 'Manado', 'isdhjf9','3u2ru2f', '0899283241',  'Jakarta', 'Kontrak', '5');

INSERT INTO `Jabatan` (`id_jabatan`, `nama_jabatan`, `keterangan`) 
VALUES (NULL, 'Direktur', 'Direktur'), 
(NULL, 'Manager', 'Manager'),
(NULL, 'Supervisor', 'Supervisor'),
(NULL, 'Staff', 'Staff'), 
(NULL, 'Magang', 'Magang');
