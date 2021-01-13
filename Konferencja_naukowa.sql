Create database Konferencja_naukowa;
use Konferencja_naukowa;

Create table Uczestnicy ( 
id_uczestnik int(10)  PRIMARY KEY NOT NULL AUTO_INCREMENT,
imie varchar(20) NOT NULL,
nazswiko varchar(20) NOT NULL,
tytul_zawodowy varchar(30),
telefone  varchar(20) ,
email  varchar(40)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

show tables ;
-- wstawianie danych do tabeli uczestników 

insert into Uczestnicy (id_uczestnik,imie,nazswiko,tytul_zawodowy,telefone,email) values (1 ,"Joao Pedro da","Silva","Programista PHP","733756213","joaopedro2020@hotmail.com");
insert into Uczestnicy (id_uczestnik,imie,nazswiko,tytul_zawodowy,telefone,email) values (2 ,"Anna ","Kominek","Nauczycielka","697145236","anna@gmail.com");
insert into Uczestnicy (id_uczestnik,imie,nazswiko,tytul_zawodowy,telefone,email) values (3 ,"Pawel ","Wuwuzela","Policja","578941236","pawel@gmail.com");
insert into Uczestnicy (id_uczestnik,imie,nazswiko,tytul_zawodowy,telefone,email) values (4 ,"Tomek","Kaczmarek","Doktor","935412876","tomek@hotmail.com");
insert into Uczestnicy (id_uczestnik,imie,nazswiko,tytul_zawodowy,telefone,email) values (5 ,"Sylwester","Kitala","Programista PLS","541236984","sylwester@yahoo.com");



select*from Uczestnicy;

Alter table Uczestnicy drop column telefone;
alter table Uczestnicy add telefone int (20) ;


create table Uczelnia (
id_uczelni  int(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
id_uczestnik  int(10) NOT NULL,
nazwauczelni varchar(30) NOT NULL,
adres varchar(20) NOT NULL,
miasto varchar(20) NOT NULL,
kod_pocztowe varchar(20) NOT NULL,
kraj varchar(20) NOT NULL,
FOREIGN KEY(id_uczestnik  ) REFERENCES Uczestnicy(id_uczestnik)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


drop table Uczelnia;
select*from Uczelnia;
-- wstawianie danych do tabeli Uczelni 

insert into Uczelnia (id_uczelni,id_uczestnik,nazwauczelni,adres,miasto,kod_pocztowe,kraj) values (1,1,"Politechnika Lodzka","Stefana zeromskiego","lodz",90924,"Polska");
insert into Uczelnia (id_uczelni,id_uczestnik,nazwauczelni,adres,miasto,kod_pocztowe,kraj) values (2,2,"Politechnika Gdanska","Gabriela Narutowicza","Gdanska",80233,"Polska");
insert into Uczelnia (id_uczelni,id_uczestnik,nazwauczelni,adres,miasto,kod_pocztowe,kraj) values (3,3,"Politechnika Wroclawska","wybrzeze Stanislawa Wyspianskiego","Wroclaw",50370,"Polska");
insert into Uczelnia (id_uczelni,id_uczestnik,nazwauczelni,adres,miasto,kod_pocztowe,kraj) values (4,4,"Politechnika Warszawska","plac Politechniki 1","Warszawa",00661,"Polska");
insert into Uczelnia (id_uczelni,id_uczestnik,nazwauczelni,adres,miasto,kod_pocztowe,kraj) values (5,5,"Politechnika Lubelska","ul. Nadbystrzycka ","Lublin",20618,"Polska");

select*from Uczelnia;

update Uczelnia set kod_pocztowe="90-924" where id_uczelni=1 ;
update Uczelnia set kod_pocztowe="80-233" where id_uczelni=2 ;
update Uczelnia set kod_pocztowe="50-370" where id_uczelni=3 ;
update Uczelnia set kod_pocztowe="00-661" where id_uczelni=4 ;
update Uczelnia set kod_pocztowe="20-618" where id_uczelni=5 ;

create table wydzial (
id_wydzial int(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
id_uczelni  int(10) NOT NULL,
nazwa_wydzial varchar(20) NOT NULL,
   FOREIGN KEY(id_uczelni) REFERENCES Uczelnia(id_uczelni)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- wstawianie danych do tabeli wydzial

insert into wydzial (id_wydzial,nazwa_wydzial,id_uczelni) values (1,"Informatyka",1);
insert into wydzial (id_wydzial,nazwa_wydzial,id_uczelni) values (2,"	Automatyka",2);
insert into wydzial (id_wydzial,nazwa_wydzial,id_uczelni) values (3,"Elektronika",3);
insert into wydzial (id_wydzial,nazwa_wydzial,id_uczelni) values (4,"Robotyka",4);
insert into wydzial (id_wydzial,nazwa_wydzial,id_uczelni) values (5,"Chemia",5);

select*from wydzial;

create table referaty (
id_referat  int(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
id_uczestnik  int(20) NOT NULL,
tytul_referat  varchar(50) NOT NULL,
streszczenie varchar(100) NOT NULL,
dzien_rezerwacja varchar(20) NOT NULL,
FOREIGN KEY(id_uczestnik) REFERENCES Uczestnicy (id_uczestnik)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

select*from referaty;
drop table referaty;

-- wstawianie danych do tabeli referaty 
 insert into referaty (id_referat,id_uczestnik,tytul_referat,streszczenie,dzien_rezerwacja) values (1,1,"Baza danych","zbior danych zapisanych zgodnie z okreslonymi regulami.. ","Poniedzialek");
insert into referaty (id_referat,id_uczestnik,tytul_referat,streszczenie,dzien_rezerwacja) values (2,2,"Automatyka przemyslowa","W chwili obecnej najszybciej...","Wtorek");
 insert into referaty (id_referat,id_uczestnik,tytul_referat,streszczenie,dzien_rezerwacja) values (3,3,"Automatyka domowa","Mozliwosc wszechstronnego sterowania urzadzeniami domowymi","Sroda");
 insert into referaty (id_referat,id_uczestnik,tytul_referat,streszczenie,dzien_rezerwacja) values (4,4,"Elekttronika"," dziedzina techniki i nauki zajmujaca sie wytwarzaniem ...","Czwartek");
 insert into referaty (id_referat,id_uczestnik,tytul_referat,streszczenie,dzien_rezerwacja) values (5,5,"Chemia Weglowa","pierwiastek chemiczny o liczbie atomowej ","Piatek");
 
 
 
Create table obiadow (
id_obiad  int(10) NOT NULL,
id_uczestnik  int(10) NOT NULL,
typ_obiad varchar(20) NOT NULL,
dzien_rezerwacja varchar(20) NOT NULL,
ilosc int(10) NOT NULL,
   FOREIGN KEY(id_uczestnik) REFERENCES Uczestnicy(id_uczestnik)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- wstawianie danych do tabeli Obiadow

insert into obiadow (id_obiad, id_uczestnik, typ_obiad, dzien_rezerwacja, ilosc) values (1,1,"Lunch","Ponidzialek",1);
insert into obiadow (id_obiad, id_uczestnik, typ_obiad, dzien_rezerwacja, ilosc) values (2,2,"sniadanie","Wtorek",2);
insert into obiadow (id_obiad, id_uczestnik, typ_obiad, dzien_rezerwacja, ilosc) values (3,3,"Lunch","Sroda",3);
insert into obiadow (id_obiad, id_uczestnik, typ_obiad, dzien_rezerwacja, ilosc) values (4,4,"Obiad","Czwarte",4);
insert into obiadow (id_obiad, id_uczestnik, typ_obiad, dzien_rezerwacja, ilosc) values (5,5,"Sniadanie","Piatek",5);

select*from obiadow;
drop table obiadow;


/*
-- wstawianie danych do tabeli Pokoj_dwuosobowe
create table Pokoj_dwuosobowe (
   id_Pokoj_dwuosobowe int(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
   id_uczestnik  int(10) NOT NULL,
   Przyjaciel  varchar(20) NOT NULL,
   dzien_rezerwacja  varchar(20) NOT NULL,
   FOREIGN KEY(id_uczestnik) REFERENCES Uczestnicy(id_uczestnik)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert into Pokoj_dwuosobowe (id_Pokoj_dwuosobowe,id_uczestnik,Przyjaciel,dzien_rezerwacja) values (1,1,"Szymon","Ponidzialek");
insert into Pokoj_dwuosobowe (id_Pokoj_dwuosobowe,id_uczestnik,Przyjaciel,dzien_rezerwacja) values (2,2,"Kamil","Wtorek");
insert into Pokoj_dwuosobowe (id_Pokoj_dwuosobowe,id_uczestnik,Przyjaciel,dzien_rezerwacja) values (3,3,"Michal","Sroda");
insert into Pokoj_dwuosobowe (id_Pokoj_dwuosobowe,id_uczestnik,Przyjaciel,dzien_rezerwacja) values (4,4,"Daniel","Czwartek");
insert into Pokoj_dwuosobowe (id_Pokoj_dwuosobowe,id_uczestnik,Przyjaciel,dzien_rezerwacja) values (5,5,"Adam","Piatek");


ALTER TABLE Pokoj CHANGE Pokoj rodzaj_pokoj varchar (20);
select*from Pokoj_dwuosobowe;
drop table Pokoj_dwuosobowe;
*/
CREATE TABLE  Pokoj  (
   id_Pokoj int(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
   id_uczestnik int(10) NOT NULL,
   dzien_rezerwacja_rezerwacja  varchar(20) NOT NULL,
   rodzaj_pokoj varchar (20) not null,
   FOREIGN KEY(id_uczestnik) REFERENCES Uczestnicy(id_uczestnik)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

alter table Pokoj add column zarezerwowany_przez  varchar (20) ;

select * from Pokoj;
drop table Pokoj;

ALTER TABLE Pokoj CHANGE dzien_rezerwacja_rezerwacja dzien_rezerwacja varchar (20);

-- wstawianie danych do tabeli Pokoj

insert into Pokoj (id_Pokoj,id_uczestnik,dzien_rezerwacja,rodzaj_pokoj) values (1,1,"Ponidzialek", "Jedno_osobowe");
insert into Pokoj (id_Pokoj,id_uczestnik,dzien_rezerwacja,rodzaj_pokoj) values (2,2,"Wtorek","dwuosobowe");
insert into Pokoj (id_Pokoj,id_uczestnik,dzien_rezerwacja,rodzaj_pokoj) values (3,3,"Sroda","Jedno_osobowe");
insert into Pokoj (id_Pokoj,id_uczestnik,dzien_rezerwacja,rodzaj_pokoj) values (4,4,"Cwartek","dwuosobowe");
insert into Pokoj (id_Pokoj,id_uczestnik,dzien_rezerwacja,rodzaj_pokoj) values (5,5,"Piatek","dwuosobowe");

-- insert into Pokoj(rodzaj_pokoj ) values ("pokoj jedno osobowe");

Update Pokoj set zarezerwowany_przez ="Anna"
 where id_uczestnik = '2' ;

UPDATE Pokoj SET rodzaj_pokoj = "pokoj  osobowe"
where id_Pokoj = 2 and id_uczestnik = '2';




-- •	Wyświetlenie wszystkich tytułów referatów z czwartku

select count(tytul_referat) from referaty where dzien_rezerwacja ="Czwartek";
-- •	Policzenie wszystkich referatów
select count(id_uczestnik) from referaty;

-- •	Wyświetlenie uczelni, w których pracują uczestnicy nocujący w środę

select nazwauczelni 
from Uczelnia 
inner join Uczestnicy on Uczelnia.id_uczestnik=Uczestnicy.id_uczestnik 
inner join referaty on Uczestnicy.id_uczestnik=referaty.id_uczestnik
where referaty.dzien_rezerwacja = "Sroda"; 

-- Uczestnicy,  Pokoj_dwuosobowe,Pokoj
select * from 
pokoj;

select * from
Uczestnicy; 

SELECT Uczestnicy.imie, Uczestnicy.nazswiko, Uczestnicy.id_uczestnik, Pokoj.dzien_rezerwacja, Pokoj.rodzaj_pokoj
FROM Uczestnicy JOIN Pokoj ON Uczestnicy.id_uczestnik = Pokoj.id_Pokoj
WHERE Uczestnicy.id_uczestnik NOT IN (2,3,4,5);

SELECT Uczestnicy.imie, Uczestnicy.nazswiko, Uczestnicy.id_uczestnik, Pokoj.dzien_rezerwacja, Pokoj.rodzaj_pokoj,Pokoj.zarezerwowany_przez,Pokoj.id_uczestnik
FROM Uczestnicy JOIN Pokoj ON Uczestnicy.id_uczestnik = Pokoj.id_Pokoj
 where Pokoj.id_uczestnik= 5;


-- •	Policzenie wszystkich obiadów na poniedzialek  
select count(id_uczestnik) from obiadow where dzien_rezerwacja = "Ponidzialek";

-- •	Policzenie wszystkich obiadów na wtorek  
select count(id_uczestnik) from obiadow where dzien_rezerwacja = "Wtorek";

-- •	Policzenie wszystkich obiadów na piatek
select count(id_uczestnik) from obiadow where dzien_rezerwacja = "Piatek";


-- 5 
/* procedura składowana ,stored procedure */
/*
DELIMITER //
create procedure koszt (namee varchar(20) , nickname varchar(20))

BEGIN
SET @biad = 20.00;
SET @Jedno_osobowe = 200.00;
SET @dwuosobowe = 150.00;
SET @oplaty_konferencyjnej = 500.00; -- osoba bez stopnia zawodowego, czyli np. student 
SET @osoba_ze_stopniem_zawodowym = 800.00;
END //
DELIMITER ;

CALL koszt( );*/









 






