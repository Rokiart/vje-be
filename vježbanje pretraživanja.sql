use svastara;

select count(*) from kupci;

select ime , prezime from kupci 
where ime='Roman';
select count(*) from kupci
where ime='Roman';

select ime,prezime from kupci
where ime='roman' and prezime='zaric';

select ime,prezime from kupci
where ime='roman' or prezime='zaric';

-- ove dvije naredbe imaju isti rezultat !
select distinct ime , prezime
from kupci where ime ='roman';

select ime , prezime from kupci 
where ime='Roman';



select * from  artikli;
-- ponavljanje gradiva sa predavanja 29.11.2023.

select  duginaziv , cijena from artikli;


select count (*) from artikli
where cijena between 1000 and 1100 ; 


select duginaziv , cijena count  from artikli
where cijena between 1000 and 1100 ; 

select * from mjesta ; 

select * from mjesta where naziv='Èepin'; 

select naziv , postanskibroj from mjesta
where postanskibroj like '31%';
-----------------------------------------------
--ove dvije naredbe daju isti rezultat 
 select naziv,postanskibroj,opcina from mjesta 
 where opcina =655;

 select b.*
 from opcine as a inner join mjesta as b
 on a.sifra=b.opcina
 where a.naziv='Èepin';

 ------------------------------
 select naziv from mjesta 
 where naziv ='Èepin';


 --postavljnje beketincima postanski broj 31431

 select sifra,naziv , postanskibroj , opcina from mjesta where
 naziv='beketinci';

 update mjesta set postanskibroj='31431' where sifra = 1945;

-- delete from mjesta where sifra=1945;

select * from mjesta where naziv='beketinci';

-------------------------------------------------
--delete from mjesta where ???????????????????
------------------------------------------------------
update mjesta set postanskibroj=null where naziv='Beketinci';

update mjesta set postanskibroj='31431' where naziv = 'Beketinci';

 ------------------------------------------------------------
 -- Izlistaj imena i prezimena svih kupaca iz mjesta Livana

 select * from kupci;

 select sifra,naziv,postanskibroj,opcina from mjesta 
 where naziv='Livana';

 --ove dvije naredbe daju jednake rezultate 

 select ime,prezime from kupci 
 where mjesto=35777;

 select b.ime,b.prezime
 from mjesta a inner join kupci b
 on b.mjesto=a.sifra
 where a.naziv='Livana';

----------------------------------------------

koliko je bilo primki u 2016

select count (*) from primke where
datum between '2016-01-01' and ' 2016-12-31';

--zašto na kraju reda nema ";" ?
select top 1 * from primke 

select * from artikli;

select cijena from artikli where cijena between 1000 and 1100;

select kratkinaziv ,cijena from artikli 
where cijena between 1000 and 1100;

select count(*) from artikli 
where cijena between 1000 and 1100;

select sum (b.kolicina * b.cijena) as ukupniiznos
from primke a
inner join artiklinaprimci b on a.sifra=b.primka
inner join artikli c on b.artikl=c.sifra
where a.rednibroj='14778/2017';

--iznos na svim primkama 2017-01
select a.rednibroj , sum (b.kolicina * b.cijena) as ukupniiznos
from primke a
inner join artiklinaprimci b on a.sifra=b.primka
inner join artikli c on b.artikl=c.sifra
where a.datum between '2017-01-01' and '2017-01-31'
group by a.rednibroj
order by 2 desc;

dovucen naziv dobavljaca

select a.rednibroj ,d.naziv, 
sum (b.kolicina * b.cijena) as ukupniiznos
from primke a
inner join artiklinaprimci b on a.sifra=b.primka
inner join artikli c on b.artikl=c.sifra
inner join dobavljaci d on a.dobavljac=d.sifra
where a.datum between '2017-01-01' and '2017-01-31'
group by a.rednibroj,d.naziv
order by 3 desc;

--naziv dobavljaca s cijenom vecom od 3000000

select a.rednibroj ,d.naziv, 
sum (b.kolicina * b.cijena) as ukupniiznos,
avg (b.kolicina * b.cijena ) as prosjek,
min (b.kolicina * b.cijena ) as minimalno,
max (b.kolicina * b.cijena ) as maksimalno
from primke a
inner join artiklinaprimci b on a.sifra=b.primka
inner join artikli c on b.artikl=c.sifra
inner join dobavljaci d on a.dobavljac=d.sifra
where a.datum between '2017-01-01' and '2017-12-31'
group by a.rednibroj,d.naziv
having sum(b.kolicina * b.cijena)>3000000
order by 3 desc;

--detaljno pretraživanje

select count(*) from artikli;

select distinct artikl from artiklinaprimci; --jedinstven artikl

select * from artikli where sifra
not in (select distinct artikl from artiklinaprimci); -- pod upit u zagradi

-- brisanje 2 nepotrebnih artikala

delete from artikli where sifra
not in (select distinct artikl from artiklinaprimci);

