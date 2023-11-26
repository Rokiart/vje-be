use master;
go
drop database if exists Ide_Oda;
go 
create database Ide_Oda collate Croatian_CI_AS;
go  
use Ide_Oda;
go




create table agencija(

agencija_id int not null primary key identity(1,1),
naziv varchar(50) not null,
adresa varchar(50),
brojtelefona int not null,
oib char(11) not null,
iban varchar(50) not null,
email varchar(50) not null,
informacije varchar (400)

);

create table atrakcije(

atrakcija_id int not null primary key identity(1,1),
naziv varchar(50)not null,
vrstaatrakcije varchar(50) not null,
mjestoatrakcije varchar(50) not null,
cijena decimal(6,2) not null

);

create table korisnici(
korisnik_id int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
brojtelefona int not null,
email varchar(50),
oib char(11) not null


);

create table vlasnici(

vlasnik_id int not null primary key identity(1,1),
ime varchar(50)not null,
prezime varchar(50) not null,
brojtelefona int not null,
email varchar(50) not null,
oib char(11) not null,
iban varchar(50) not null

<<<<<<< Updated upstream
=======
);

create table smjestaji(
smjestaj_id int not null primary key identity(1,1),
ulica varchar(50) not null,
kucnibroj int not null,
drzava varchar(50) not null 
 default('HRVATSKA') ,
cijena decimal(6,2)

>>>>>>> Stashed changes
);


create table rezervacije(
rezervacija_id int not null primary key identity(1,1),
smjestaj int references smjestaji(smjestaj_id),
vrijemekorištenjasmjestaja datetime not null,
atrakcija int null references atrakcije(atrakcija_id),
vrijemekoristenjaatrakcije datetime null,
korisnik int not null references korisnici(korisnik_id),

);

--create table racuni(
--racun_id int not null primary key identity(1,1),
--smjestaj int not null references smjestaji(cijena),
--atrakcija int null references atrakcije(cijena),

--);












