/*==============================================================*/
/* Membuat database                                         */
/*==============================================================*/

CREATE DATABASE kampus79;


USE kampus79;



/*==============================================================*/
/* Table: data_nilai                                            */
/*==============================================================*/
create table data_nilai
(
   id                   int not null auto_increment,
   nim                  varchar(32),
   id_mata_kuliah       int,
   id_dosen             int,
   nilai                float,
   keterangan           varchar(128),
   primary key (id)
);

/*==============================================================*/
/* Table: dosen                                                 */
/*==============================================================*/
create table dosen
(
   id                   int not null auto_increment,
   nama                 varchar(64),
   primary key (id)
);

/*==============================================================*/
/* Table: mahasiswa                                             */
/*==============================================================*/
create table mahasiswa
(
   nim                  varchar(32) not null,
   nama                 varchar(64),
   alamat               varchar(256),
   tgl_lahir            date,
   jurusan              varchar(64),
   primary key (nim)
);

/*==============================================================*/
/* Table: mata_kuliah                                           */
/*==============================================================*/
create table mata_kuliah
(
   id                   int not null auto_increment,
   nama                 varchar(64),
   nim                  varchar(32),
   primary key (id)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   id                   int not null auto_increment,
   email                varchar(64),
   password             varchar(256),
   role                 enum("mahasiswa","dosen"),
   primary key (id)
);

alter table data_nilai add constraint FK_nilai_to_dosen foreign key (id_dosen)
      references dosen (id) on delete restrict on update cascade;

alter table data_nilai add constraint FK_nilai_to_mahasiswa foreign key (nim)
      references mahasiswa (nim) on delete restrict on update cascade;

alter table data_nilai add constraint FK_nilai_to_matkul foreign key (id_mata_kuliah)
      references mata_kuliah (id) on delete restrict on update cascade;

