
create user 'admin'@'localhost' identified by 'password';
grant all on pilihape.* to 'admin'@'localhost';

use pilihape;

create table tb_seller_agent (
id int primary key not null auto_increment,
username varchar(20) not null,
phone_no varchar(20) not null,
password varchar(20) not null,
session varchar(30),
store_name varchar(30),
store_id int(5)
);

create table tb_ponsel (
id int primary key not null auto_increment,
phone_id varchar(10) not null,
merk_type varchar(30) not null,
layar_ukuran varchar(30) not null,
layar_resolusi enum('540p','720p','1080p','1440p'),
layar_model enum('konvensional','full view','notch','punch hole','all screen'),
kapasitas_baterai int(5) not null,
kamera_jumlah enum('single','dual','triple','quad'),
kamera_res_depan int(5),
kamera_res_belakang int(5),
prosesor varchar(30) not null,
ranking_prosesor int(5) not null,
kapasitas_penyimpanan enum('16','32','64','128'),
kapasitas_ram enum('2','3','4','6'),
umur enum('<12 bulan','12-24 bulan','>24 bulan'),
software varchar(30) not null,
kondisi_fisik enum('lecet parah','lecet ringan','mulus'),
kelengkapan enum('hanya unit','unit dan charger','fullset'),
harga int(10) not null,
store_id int(5) not null,
image_url varchar(150)
);

create table tb_bobot_kriteria (
id int primary key not null auto_increment,
phone_id varchar(10) not null,
merk_type varchar(30) not null,
layar_ukuran int,
layar_resolusi int,
layar_model int,
kapasitas_baterai int,
kamera_jumlah int,
kamera_res_depan int,
kamera_res_belakang int,
ranking_prosesor int,
kapasitas_penyimpanan int,
kapasitas_ram int,
umur int,
software int,
kondisi_fisik int,
kelengkapan int,
harga int not null,
store_id int(5) not null
);

create table tb_wk (
id int primary key not null auto_increment,
phone_id varchar(10) not null,
merk_type varchar(30) not null,
layar_ukuran float not null,
layar_resolusi float not null,
layar_model float not null,
kapasitas_baterai float not null,
kamera_jumlah float not null,
kamera_res_depan float not null,
kamera_res_belakang float not null,
ranking_prosesor float not null,
kapasitas_penyimpanan float not null,
kapasitas_ram float not null,
umur float not null,
software float not null,
kondisi_fisik float not null,
kelengkapan float not null,
harga float not null,
store_id int(5) not null
);

create table tb_centurionmark (
rank int primary key not null,
prosesor varchar(30) not null,
score int not null
);


ALTER TABLE tb_bobot_kriteria AUTO_INCREMENT = 1;
ALTER TABLE tb_ponsel AUTO_INCREMENT = 1;
ALTER TABLE tb_wk AUTO_INCREMENT = 1;

insert into tb_centurionmark (rank, prosesor, score) values 
(1,'Apple A13 Bionic',152),
(2,'Snapdragon 865',150),
(3,'Exynos 990',148),
(4,'MediaTek Dimensity 1000',147),
(5,'Apple A12 Bionic',146),
(6,'Snapdragon 855+',145),
(7,'Snapdragon 855',144),
(8,'Kirin 990 5G',144),
(9,'Kirin 990 4G',143),
(10,'Exynos 9825',142),
(11,'Exynos 9820',140),
(12,'MediaTek Dimensity 1000L',138),
(13,'Kirin 980',137),
(14,'Exynos 980',135),
(15,'Snapdragon 765G',134),
(16,'Snapdragon 765',133),
(17,'Apple A11 Bionic',130),
(18,'Snapdragon 845',127),
(19,'Exynos 9810',125),
(20,'Snapdragon 730G',124),
(21,'Kirin 810',124),
(22,'Snapdragon 730',123),
(23,'Kirin 970',121),
(24,'Snapdragon 720G',121),
(25,'Helio G90T',119),
(26,'Apple A10 Fusion',118),
(27,'Helio G90',118),
(28,'Snapdragon 835',117),
(29,'Exynos 8895',114),
(30,'Snapdragon 712',114),
(31,'Snapdragon 710',113),
(32,'Snapdragon 675',112),
(33,'Snapdragon 670',111),
(34,'Helio P90',110),
(35,'Helio X30',109),
(36,'Apple A9',109),
(37,'Snapdragon 821',108),
(38,'Snapdragon 820',107),
(39,'Exynos 8890',106),
(40,'Helio G80',104),
(41,'Kirin 960',103),
(42,'Exynos 9611',103),
(43,'Helio G70',103),
(44,'Exynos 9610',102),
(45,'Helio P65',102),
(46,'Snapdragon 660',101),
(47,'Exynos 9609',101),
(48,'Snapdragon 665',100),
(49,'Snapdragon 662',100),
(50,'Helio P70',99),
(51,'Snapdragon 460',99),
(52,'Helio P60',98),
(53,'Exynos 7885',98),
(54,'Kirin 710',98),
(55,'Snapdragon 636',97),
(56,'Exynos 7904',96),
(57,'Snapdragon 632',92),
(58,'Kirin 955',89),
(59,'Snapdragon 630',88),
(60,'Kirin 950',88),
(61,'Exynos 7872',87),
(62,'Helio X27',85),
(63,'Exynos 7420',81),
(64,'Helio P35',81),
(65,'Snapdragon 810',80),
(66,'Helio P30',80),
(67,'Helio X23',79),
(68,'Helio P23',79),
(69,'Helio X25',77),
(70,'Exynos 7880',77),
(71,'Helio X20',75),
(72,'Helio P25',75),
(73,'Snapdragon 653',74),
(74,'Helio P20',74),
(75,'Apple A8',74),
(76,'Snapdragon 626',72),
(77,'Snapdragon 625',71),
(78,'Kirin 659',71),
(79,'Kirin 658',71),
(80,'Snapdragon 650',70),
(81,'Kirin 655',70),
(82,'Kirin 650',70),
(83,'Snapdragon 439',69),
(84,'Helio P22',69),
(85,'Snapdragon 652',69),
(86,'Snapdragon 450',69),
(87,'Snapdragon 808',68),
(88,'Exynos 7870',67),
(89,'Helio A22',66),
(90,'Kirin 935',66),
(91,'Kirin 930',65),
(92,'Apple A7',65),
(93,'Snapdragon 429',65),
(94,'Helio A20',63),
(95,'Exynos 5433',61),
(96,'Helio P18',61),
(97,'Helio P10',59),
(98,'Snapdragon 435',59),
(99,'Helio X10',59),
(100,'Exynos 7580',58),
(101,'Snapdragon 430',57),
(102,'Snapdragon 617',55),
(103,'Exynos 7570',53),
(104,'Snapdragon 616',52),
(105,'Snapdragon 615',51),
(106,'MT6750T',51),
(107,'Snapdragon 427',50),
(108,'MT6739',50),
(109,'Snapdragon 425',49),
(110,'MT6738',49),
(111,'MT6753',49),
(112,'MT6752',48),
(113,'MT6750',48),
(114,'Snapdragon 415',47),
(115,'Kirin 620',47),
(116,'Snapdragon 412',46),
(117,'MT6737T',46),
(118,'Snapdragon 410',45),
(119,'MT6737',45),
(120,'MT6735',42),
(121,'MT6732',41)
;