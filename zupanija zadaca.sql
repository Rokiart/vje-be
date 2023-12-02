use master;
go
drop database if exists zupanija;
go
create database zupanija;
go
alter database zupanija collate Croatian_CI_AS;
go
use zupanija;


create table zupani(
sifra int not null primary key identity(1,1),
ime varchar (50),
prezime varchar(50)
);

create table zupanije(
sifra int not null primary key identity(1,1),
naziv varchar(50),
zupan int references zupani(sifra)
);

create table opcine(
sifra int not null primary key identity(1,1),
zupanija int references zupanije(sifra),
naziv varchar(50)
);

create table mjesta(
opcina int references opcine(sifra),
naziv varchar(50)
);

insert into zupanije(naziv) values
('Osijeckobaranjska'),('VukovarskoSrijemska'),('VirovitickoPodravska');

insert into  opcine(naziv) values
('Osijek','BeliManastir','Vukovar','Vinkovci','Virovitica','Slatina');


