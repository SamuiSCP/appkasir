
-- Database Backup --
-- Ver. : 1.0.1
-- Host : Server Host
-- Generating Time : Jan 30, 2024 at 13:38:40:PM


CREATE TABLE `detailpenjualan` (
  `DetailID` int(11) NOT NULL AUTO_INCREMENT,
  `PenjualanID` int(11) NOT NULL,
  `ProdukID` int(11) NOT NULL,
  `JumlahProduk` int(11) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  PRIMARY KEY (`DetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO detailpenjualan VALUES
("1","1","1","4","12000.00"),
("2","2","2","5","48000.00"),
("3","3","5","4","5000.00"),
("4","4","7","10","5000.00"),
("5","5","10","4","10000.00"),
("7","7","9","1","40000.00"),
("8","7","8","1","20000.00"),
("9","7","11","1","20000.00");

CREATE TABLE `keranjang` (
  `KeranjangID` int(10) NOT NULL AUTO_INCREMENT,
  `ProdukID` int(10) NOT NULL,
  `Jumlah` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  PRIMARY KEY (`KeranjangID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `pelanggan` (
  `PelangganID` int(11) NOT NULL AUTO_INCREMENT,
  `NamaPelanggan` varchar(255) NOT NULL,
  `Alamat` text NOT NULL,
  `NomorTelepon` varchar(15) NOT NULL,
  PRIMARY KEY (`PelangganID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO pelanggan VALUES
("1","Umum","Umum","000000"),
("2","Zaid Assya Yudah","Denpasar","085738910245"),
("3","Dewa Made Martha Abimayu","Jl. Arjuna","085738014582"),
("4","Bezaliel Cahya Yehuda","Jl. Gunung Andakasa","085738055323"),
("5","Gede Andi Perayoga","Jl.  Kerobokan","087860635630"),
("6","William Jacobus Felanuel","Dalung Permai","081917913625");

CREATE TABLE `penjualan` (
  `PenjualanID` int(11) NOT NULL AUTO_INCREMENT,
  `TanggalPenjualan` date NOT NULL,
  `TotalHarga` decimal(10,2) NOT NULL,
  `PelangganID` int(11) NOT NULL,
  PRIMARY KEY (`PenjualanID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO penjualan VALUES
("1","2024-01-18","48000.00","4"),
("2","2024-01-18","240000.00","2"),
("3","2024-01-18","20000.00","3"),
("4","2024-01-18","50000.00","5"),
("5","2024-01-18","40000.00","6"),
("7","2024-01-23","80000.00","1");

CREATE TABLE `produk` (
  `ProdukID` int(11) NOT NULL AUTO_INCREMENT,
  `Barcode` varchar(25) NOT NULL,
  `NamaProduk` varchar(255) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL,
  PRIMARY KEY (`ProdukID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO produk VALUES
("1","89686598476","CHITATO AYAM BUMBU 68G","12000.00","60"),
("2","89686596564","LAYS BBQ 75G","48000.00","40"),
("3","8886008101053 ","AQUA Botol 600mL","5000.00","70"),
("4","8992770033192 ","MASAKO AYAM PCK 6x11g","2000.00","800"),
("5","8994755020265 ","NYAM-NYAM FNTASY STICK BLUEBERRY","5000.00","50"),
("6","8999999002503","BANGO KECAP MANIS Botol 275mL","24000.00","40"),
("7","8996001355756 ","BENG-BENG MAXX 32g","5000.00","50"),
("8","8992843100301 ","BETADINE Botol 30mL","20000.00","30"),
("9","8992628032155 ","BIMOLI SPECIAL PCH 2000mL","40000.00","20"),
("10","9556182023241 ","CADBURY DAIRY MILK CASHEW&COO PCK 30g","10000.00","50"),
("11","8993176110074 ","CAP LANG KAYU PUTIHBTL 60mL","20000.00","25"),
("12","8993560026011 "," DETTOL BODY WASH ANTISEPTIC FRESH PCH 250mL","27000.00","50"),
("13","89686010947 ","INDOMIE GORENG PLUS SPECIAL 80g","3500.00","120"),
("14","8992702000179 "," KREMER KENTAL MANIS KALENG 375g","16000.00","60"),
("15","8992760223015 ","KRAFT SANDWICH OREO COKLAT VA PCK 137g","12000.00","120"),
("16","8992772195089 "," KISPRAY PELICIN PAKAIAN VIOLET BTL 318mL","18000.00","60"),
("17","8991002104914 ","KAPAL API KOPI SUSU MOCHA PCK 10x30g","14000.00","50"),
("18","8993007000086 ","INDOMILK COKLAT TPK 1000mL","22000.00","60"),
("19","89686910704 ","INDOMIE GORENG RENDANG 91g","3500.00","120"),
("20","711844120150 ","ABC SAMBAL AYAM GORENG 335ML","14000.00","50"),
("21","8999909096004 "," SAMPOERNA MILD FILTER 16","20000.00","20");

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` int(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO user VALUES
("1","Samui Yehuda","SamuiSCP","samui","1"),
("3","Bezaliel Cahya","Samui N1","bebek","2"),
("4","JMK48","JMK48","jmkscp","1");