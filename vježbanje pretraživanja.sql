
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

 update mjesta set postanskibroj='31431' where naziv = 'Beketinci';

 ------------------------------------------------------------
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


