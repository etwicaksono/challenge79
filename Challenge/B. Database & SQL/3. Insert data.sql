
/*==============================================================*/
/* SQL untuk insert data                                            */
/*==============================================================*/

-- insert ke tabel user
INSERT INTO user (email,password,role) VALUES
("user1@gmail.com","passworddefault","dosen"),
("user2@gmail.com","passworddefault","dosen"),
("user3@gmail.com","passworddefault","dosen"),
("user4@gmail.com","passworddefault","mahasiswa"),
("user5@gmail.com","passworddefault","mahasiswa"),
("user6@gmail.com","passworddefault","mahasiswa"),
("user7@gmail.com","passworddefault","mahasiswa"),
("user8@gmail.com","passworddefault","mahasiswa"),
("user9@gmail.com","passworddefault","mahasiswa"),
("user10@gmail.com","passworddefault","mahasiswa");

-- insert ke tabel dosen
INSERT INTO dosen (nama) VALUES
("dosen1"),
("dosen2"),
("dosen3");

-- insert ke tabel mahasiswa
INSERT INTO mahasiswa (nim,nama,alamat,tgl_lahir,jurusan) VALUES
("17104410001","mahasiswa1","Blitar","1997-03-23","Teknik Informatika"),
("17104410002","mahasiswa2","Blitar","1998-04-24","Teknik Informatika"),
("17104410003","mahasiswa3","Malang","1998-05-25","Teknik Elektro"),
("17104410004","mahasiswa4","Malang","1999-06-26","Teknik Elektro"),
("17104410005","mahasiswa5","Surabaya","1999-07-27","Teknik Sipil"),
("17104410006","mahasiswa6","Surabaya","1999-08-28","Teknik Sipil"),
("17104410007","mahasiswa7","Blitar","1997-09-29","Teknik Informatika");

-- insert ke tabel mata_kuliah
INSERT INTO mata_kuliah (nama, nim) VALUES
("Desain Database","17104410001"),
("Desain Database","17104410002"),
("Desain Database","17104410003"),
("Desain Database","17104410004"),
("Desain Database","17104410005"),
("Desain Database","17104410006"),
("Desain Database","17104410007"),
("Pemrograman Mobile","17104410001"),
("Pemrograman Mobile","17104410002"),
("Pemrograman Mobile","17104410003"),
("Pemrograman Mobile","17104410004"),
("Pemrograman Mobile","17104410005"),
("Pemrograman Mobile","17104410006"),
("Pemrograman Mobile","17104410007"),
("Desain UI/UX","17104410001"),
("Desain UI/UX","17104410002"),
("Desain UI/UX","17104410003"),
("Desain UI/UX","17104410004"),
("Desain UI/UX","17104410005"),
("Desain UI/UX","17104410006"),
("Desain UI/UX","17104410007");

-- insert ke tabel data_nilai
INSERT INTO data_nilai (nim, id_mata_kuliah, id_dosen, nilai, keterangan) VALUES
("17104410001",1,1,50,"Tidak Lulus"),
("17104410002",2,1,55,"Tidak Lulus"),
("17104410003",3,1,62,"Tidak Lulus"),
("17104410004",4,1,68,"Tidak Lulus"),
("17104410005",5,1,70,"Lulus"),
("17104410006",6,1,75,"Lulus"),
("17104410007",7,1,80,"Lulus"),
("17104410001",8,2,85,"Lulus"),
("17104410002",9,2,50,"Tidak Lulus"),
("17104410003",10,2,55,"Tidak Lulus"),
("17104410004",11,2,62,"Tidak Lulus"),
("17104410005",12,2,68,"Tidak Lulus"),
("17104410006",13,2,70,"Lulus"),
("17104410007",14,2,50,"Tidak Lulus"),
("17104410001",15,3,55,"Tidak Lulus"),
("17104410002",16,3,62,"Tidak Lulus"),
("17104410003",17,3,68,"Tidak Lulus"),
("17104410004",18,3,70,"Lulus"),
("17104410005",19,3,75,"Lulus"),
("17104410006",20,3,80,"Lulus"),
("17104410007",21,3,85,"Lulus");