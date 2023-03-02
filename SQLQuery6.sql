--create database prodaja_postavka;

use prodaja_postavka

--create table tip_zakaza(
--id_tip_zakaza int identity(1,1) not null primary key,
--tip_zakaza nvarchar(150) not null
--);

--create table tip_prodaj(
--id_tip_prodaj int identity(1,1) not null primary key,
--tip_prodaj nvarchar(150) not null
--);

--create table tip_klienta(
--id_tip_klienta int identity(1,1) not null primary key,
--tip_klienta nvarchar(150) not null
--);

--create table rayon(
--id_rayon int identity(1,1) not null primary key,
--rayon nvarchar(150) not null
--);

--create table tip_kontaktov(
--id_tip_kontaktov int identity(1,1) not null primary key,
--tip_kontaktov nvarchar(150) not null
--);

--create table vid_oplaty(
--id_vid_oplaty int identity(1,1) not null primary key,
--vid_oplaty nvarchar(150) not null
--);

--create table tip_postavki(
--id_tip_postavki int identity(1,1) not null primary key,
--tip_postavki nvarchar(150) not null
--);

--create table tip_postavshika(
--id_tip_postavshika int identity(1,1) not null primary key,
--tip_postavshika nvarchar(150) not null
--);

--create table tip_tovara(
--id_tip_tovara int identity(1,1) not null primary key,
--tip_tovara nvarchar(150) not null
--);

--create table doljnost(
--id_doljnost int identity(1,1) not null primary key,
--doljnost nvarchar(150) not null
--);

--create table sostoyanie(
--id_sostoyanie int identity(1,1) not null primary key,
--sostoyanie nvarchar(150) not null
--);

--create table tip_prodaj(
--id_tip_prodaj int identity(1,1) not null primary key,
--tip_prodaj nvarchar(150) not null
--);

--create table zakaz(
--id_zakaz bigint identity(1,1) not null primary key,
--data_zakaza date,
--nomer_doc nvarchar(60),
--comments nvarchar(60),
--id_klient bigint,
--foreign key (id_klient)references klient(id_klient),
--id_tip_zakaza int,
--foreign key (id_tip_zakaza)references tip_zakaza(id_tip_zakaza),
--id_sostoyanie int,
--foreign key (id_sostoyanie)references sostoyanie(id_sostoyanie),
--id_tip_prodaj int,
--foreign key (id_tip_prodaj)references tip_prodaj(id_tip_prodaj),
--id_sotrudnik bigint,
--foreign key (id_sotrudnik)references sotrudnik(id_sotrudnik)
--);

--create table oplata(
--id_oplata bigint identity(1,1) not null primary key,
--data_oplaty date,
--summa nvarchar(60),
--id_zakaz bigint,
--foreign key (id_zakaz)references zakaz(id_zakaz),
--id_vid_oplaty int,
--foreign key (id_vid_oplaty)references vid_oplaty(id_vid_oplaty)
--);

--create table kontakty(
--id_kontakty bigint identity(1,1) not null primary key,
--kontakty nvarchar(60),
--id_klient bigint,
--foreign key (id_klient)references klient(id_klient),
--id_tip_kontaktov bigint,
--foreign key (id_tip_kontaktov)references tip_kontaktov(id_tip_kontaktov)
--);

--create table spisok_postavki(
--id_spisok_postavki bigint identity(1,1) not null primary key,
--cena nvarchar(60),
--kol_vo int,
--srok_godnosty date
--);

create table postavki(
id_postavki bigint identity(1,1) not null primary key,
nomer_doc nvarchar(60),
ata_postavki date,
comments nvarchar(150),
id_postavshik int,
foreign key (id_postavshik)references postavshik(id_postavshik),
id_tip_postavki int,
foreign key (id_tip_postavki)references tip_postavki(id_tip_postavki)
);

create table oplata(
id_oplata bigint identity(1,1) not null primary key,
data_oplaty date,
summa nvarchar(60),
id_zakaz bigint,
foreign key (id_zakaz)references zakaz(id_zakaz),
id_vid_oplaty int,
foreign key (id_vid_oplaty)references vid_oplaty(id_vid_oplaty)
);

--create table tovar(
--id_tovar bigint identity(1,1) not null primary key,
--tovar nvarchar(100),
--comments nvarchar(150),
--photo nvarchar(150),
--id_tip_tovara int,
--foreign key (id_tip_tovara)references tip_tovara(id_tip_tovara)
--);

--create table price_list(
--id_price_list bigint identity(1,1) not null primary key,
--cena nvarchar(60),
--data_price_list date,
--commnets nvarchar(150),
--id_tovar bigint,
--foreign key (id_tovar)references tovar(id_tovar)
--);

--create table klient(
--id_klient bigint identity(1,1) not null primary key,
--fam nvarchar(60),
--imya nvarchar(60),
--otch nvarchar(60),
--passport nvarchar(60),
--password nvarchar(60),
--login nvarchar(60),
--mesto_raboty nvarchar(60),
--skidka int,
--id_rayon int,
--foreign key (id_rayon)references rayon(id_rayon)
--);

--create table sotrudnik(
--id_sotrudnik bigint identity(1,1) not null primary key,
--fam nvarchar(60),
--imya nvarchar(60),
--otch nvarchar(60),
--id_doljnost int,
--foreign key (id_doljnost)references doljnost(id_doljnost)
--);

select * from postavki where ata_postavki '2011/02/25' and '2011/02/27';
select * from postavki where id_postavshik = 1;
select * from tovar t, tip_tovara tt where t.id_tip_postavki = tt.id_tip_postavki and tt.tip_postavki = 'дополниетльна€';

/*в основном здесь скрипт создани€ базы и селекты. ѕолностью не успел*/