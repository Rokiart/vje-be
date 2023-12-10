use master;
go
drop database if exists katalogslika;
go

create database katalogslika;
go
alter database katalogslika collate Croatian_CI_AS;
go
use katalogslika;

create table fotografije(
    sifra int not null primary key identity(1,1),
	fotolokacija varchar(100) 
	);
create table lokacije(
    sifra int not null primary key identity(1,1),
	ime varchar(50),
	prezime varchar(50),
	adresa varchar(50)
	);
create table velicine(
    sifra int not null primary key identity(1,1),
	velicinasaramom decimal(4,2),
	velicinabezrama decimal(4,2)
	);
create table nazivi(
    sifra int not null primary key identity(1,1),
	naziv varchar(50) not null,
	velicina int references velicine(sifra),
	godina int,
    dostupnost bit,
	lokacija int references lokacije(sifra)
	);
create table slike(
    sifra int not null primary key identity(1,1),
	naziv int not null references nazivi(sifra),
	fotografija int references fotografije(sifra)
	);


