use master;
go
drop database if exist Ide_Oda;
go 
create database Ide_Oda collate Croatian_CI_AS;
go  
use Ide_Oda;
go
creatae database korisnici(

korisnik_id int not null primary key identity(1,1),
ime varchar(50)not null ,
prezime varchar(50)not null,
adresa varchar(50),
brojtelefona int not null,
email varchar(50),
oib char(11)

);


create table agencija(

agencija_id not null primary key identity(1,1),
naziv varchar(50) not null,
adresa varchar(50),
brojtelefona int not null,
oib char(11) not null,
iban varchar(50) not null,
email varchar(50) not null,
informacije varchar (400)

);

create table atrakcije(

atrakcija_id not null primary key identity(1,1),
naziv varchar(50)not null,
vrstaatrakcije varchar(50) not null,
mjestoatrakcije varchar(50) not null,
cijena decimal(6,2) not null,

)

create table vlasnici(

vlasnik_id not null primary key identity(1,1),
ime varchar(50)not null,
prezime varchar(50) not null,
brojtelefona int not null,
email varchar(50) not null,
oib char(11) not null,
iban varchar(50) not null

);













