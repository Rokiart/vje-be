use master;
go
drop database if exists terminzubar;
go

create database terminzubar;
go
alter database terminzubar collate Croatian_CI_AS;
go
use terminzubar;


create table pacijenti(
   sifra int not null primary key identity(1,1),
   ime varchar(50),
   prezime varchar(50),
   brojtelefona varchar(30)
   );
create table termini(
   sifra int not null primary key identity(1,1),
   pacijent int references pacijenti(sifra) ,
   datumnarudjbe datetime
   );

