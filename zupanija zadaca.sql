use master;
go
drop database if exists zupanijasql;
go
create database zupanijasql;
go
alter database zupanijasql collate Croatian_CI_AS;
go
use zupanijasql;


create table zupani(
sifra int not null primary key identity(1,1),
ime varchar (50),
prezime varchar(50)
);

create table zupanije(
sifra int not null primary key identity(1,1),
naziv varchar(50),
FKzupan int references zupani(sifra)
);

create table opcine(
sifra int not null primary key identity(1,1),
FKzupanija int references zupanije(sifra),
naziv varchar(50)
);

create table mjesta(
sifra int not null primary key identity(1,1),
FKopcina int references opcine(sifra),
naziv varchar(50)
);

insert into zupanije(naziv) values
('Osijeckobaranjska'),('VukovarskoSrijemska'),('VirovitickoPodravska');

insert into  opcine(naziv) values
('Osijek'),('BeliManastir'),('Vukovar'),('Vinkovci'),('Virovitica'),('Slatina');

insert into mjesta(naziv) values
('Antunovac'),('Èepin'),('Bilje'),('Bizovac'),
('BabibaGreda'),('Borovo'),('Nustar'),('Privlaka'),
('Sopje'),('Suhopolje'),('Zdenci'),('Crnac');

insert into zupani(ime,prezime) values
('Mato','Lukic'),('Damir','Dekanic'),('Igor','Androvic');

select * from mjesta ;
--select * from  opcine;

select  a.naziv as mjesto,b.naziv as opcine,c.naziv as zupanije,d.ime,prezime
from mjesta a inner join opcine b
on b.sifra=a.fkopcina
inner join zupanije c
on c.sifra=b.fkzupanija
inner join zupani d
on d.sifra=c.FKzupan;






