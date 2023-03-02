--create database student;

/* ñîçäàëè áàçó äàííûõ student, äàëåå èñïîëüçóåì èõ */

/*Здесь есть сознание базы данных, его заполнение, таблица обзора таблиц и выборка по параметрам*/

use student

/* ñîçäà¸ì âñå òàáëèöû */

--create table fakultet(
--id_fakultet int identity(1,1) not null primary key,
--fakultet nvarchar(150)
--);

--create table kafedra(
--id_kafedra int identity(1,1) not null primary key,
--kafedra nvarchar(150),
--id_fakultet int,
--foreign key (id_fakultet)references fakultet(id_fakultet)
--);

--create table gruppa(
--id_gruppa int identity(1,1) not null primary key,
--gruppa nvarchar(150),
--id_kafedra int,
--foreign key (id_kafedra)references kafedra(id_kafedra)
--);

--create table grajdanstvo(
--id_grajdanstvo int identity(1,1) not null primary key,
--grajdanstvo nvarchar(150)
--);

--create table natsionalnost(
--id_natsionalnost int identity(1,1) not null primary key,
--natsionalnost nvarchar(150)
--);

--create table pol(
--id_pol int identity(1,1) not null primary key,
--pol nvarchar(50)
--);

--create table tip_nas_punkt(
--id_tip_nas_punkt int identity(1,1) not null primary key,
--tip_nas_punkt nvarchar(50)
--);

--create table oblast(
--id_oblast int identity(1,1) not null primary key,
--oblast nvarchar(50)
--);

--create table rayon(
--id_rayon int identity(1,1) not null primary key,
--rayon nvarchar(150),
--id_oblast int,
--foreign key (id_oblast)references oblast(id_oblast)
--);

--create table nas_punkt(
--id_nas_punkt int identity(1,1) not null primary key,
--nas_punkt nvarchar(150),
--id_tip_nas_punkt int,
--foreign key (id_tip_nas_punkt)references tip_nas_punkt(id_tip_nas_punkt),
--id_rayon int,
--foreign key (id_rayon)references rayon(id_rayon)
--);

--create table student(
--id_student bigint identity(1,1) not null primary key,
--fam nvarchar(150),
--imya nvarchar(150),
--otch nvarchar(150),
--passport nvarchar(60),
--password nvarchar(40),
--red_date date,
--id_gruppa int,
--foreign key (id_gruppa)references gruppa(id_gruppa),
--id_nas_punkt int,
--foreign key (id_nas_punkt)references nas_punkt(id_nas_punkt),
--id_natsionalnost int,
--foreign key (id_natsionalnost)references natsionalnost(id_natsionalnost),
--id_pol int,
--foreign key (id_pol)references pol(id_pol),
--id_grajdanstvo int,
--foreign key (id_grajdanstvo)references grajdanstvo(id_grajdanstvo),
--comments nvarchar(150),
--foto nvarchar(150)
--);

--create table tip_kont(
--id_tip_kont int identity(1,1) not null primary key,
--tip_kont nvarchar(150)
--);

--create table kontakty(
--id_kontakty bigint identity(1,1) not null primary key,
--id_tip_kont int,
--foreign key (id_tip_kont)references tip_kont(id_tip_kont),
--id_student bigint,
--foreign key (id_student)references student(id_student)
--);

--create table sostav(
--id_sostav int identity(1,1) not null primary key,
--sostav nvarchar(150)
--);

--create table zvanie(
--id_zvanie int identity(1,1) not null primary key,
--zvanie nvarchar(50),
--id_sostav int,
--foreign key (id_sostav)references sostav(id_sostav)
--);

--create table voinsk_slujba_sl(
--id_voinsk_slujba_sl bigint identity(1,1) not null primary key,
--data_nachala date,
--data_okonch date,
--nomer_prikaza nvarchar(60),
--comments nvarchar(150),
--id_student bigint,
--foreign key (id_student)references student(id_student),
--id_zvanie int,
--foreign key (id_zvanie)references zvanie(id_zvanie)
--);

--create table tip_prof_kval(
--id_tip_prof_kval int identity(1,1) not null primary key,
--tip_prof_kval nvarchar(50)
--);

--create table prof_kval(
--id_prof_kval int identity(1,1) not null primary key,
--data_pov date,
--nomer_doc nvarchar(50),
--comments nvarchar(150),
--id_tip_prof_kval int,
--foreign key (id_tip_prof_kval)references tip_prof_kval(id_tip_prof_kval),
--id_student bigint,
--foreign key (id_student)references student(id_student)
--);

/* òàáëèöà òàáëèö*/

--CREATE TABLE #TempTable1
--    (
--      Type INT ,
--      ObjName VARCHAR(256) ,
--      Owner VARCHAR(25) ,
--      Sequence INT
--    ); 

--INSERT  INTO #TempTable1
--        EXEC sp_MSdependencies NULL 

--SELECT  *
--FROM     #TempTable1
--WHERE   Type = 8 --Tables 
--ORDER BY Sequence ,
--        ObjName 
--DROP TABLE #TempTable1;

/* äîáàâëÿåì çàïèñè*/

--insert into natsionalnost( natsionalnost) values ('êûðãûç');
--insert into natsionalnost( natsionalnost) values ('Êàçàõ');
--insert into natsionalnost( natsionalnost) values ('Óçáåê');
--insert into natsionalnost( natsionalnost) values ('Òàäæèê');
--insert into natsionalnost( natsionalnost) values ('Ðóññêèé');

--insert into pol( pol) values ('ìóæ÷èíà');
--insert into pol( pol) values ('æåíñêèé');
--insert into pol( pol) values ('òðàíñâèñòèò');
--insert into pol( pol) values ('äðóãîé');


--insert into tip_nas_punkt( tip_nas_punkt) values ('Ñåëî');
--insert into tip_nas_punkt( tip_nas_punkt) values ('Ãîðîä');

--insert into oblast( oblast) values ('Áèøêåê');
--insert into oblast( oblast) values ('Îø');
--insert into oblast( oblast) values ('Áàòêåíñêàÿ îáë.');
--insert into oblast( oblast) values ('Äæàë-Àáàäñêàÿ îáë.');
--insert into oblast( oblast) values ('Íàðûíñêàÿ îáë.');
--insert into oblast( oblast) values ('Îøñêàÿ îáë');
--insert into oblast( oblast) values ('Òàëàññêàÿ îáë.');
--insert into oblast( oblast) values ('×óéñêàÿ îáë.');
--insert into oblast( oblast) values ('Ûñûê-Êóëüñêàÿ îáë.');

--insert into rayon( rayon, id_oblast) values ('Ïåðâîìàéñêèé',1);
--insert into rayon( rayon, id_oblast) values ('Ñâåðäëîâñêèé',1);
--insert into rayon( rayon, id_oblast) values ('Ëåíèíñêèé',1);
--insert into rayon( rayon, id_oblast) values ('Îêòÿáðüñêèé',1);

--insert into nas_punkt( nas_punkt, id_tip_nas_punkt, id_rayon) values ('Àê Îðãî',1,3);
--insert into nas_punkt( nas_punkt, id_tip_nas_punkt, id_rayon) values ('Þæíûå Âîðîòà',1,1);
--insert into nas_punkt( nas_punkt, id_tip_nas_punkt, id_rayon) values ('Çîëîòîé êâàäðàò',1,2);
--insert into nas_punkt( nas_punkt, id_tip_nas_punkt, id_rayon) values ('ÒÝÖ',1,4);

--insert into student( fam, imya, otch, passport, [password], red_date, gruppa, nas_punkt, natsionalnost, pol, grajdanstvo, comments, foto) values (

--insert into tip_kont( tip_kont) values ('Telegram');
--insert into tip_kont( tip_kont) values ('email');
--insert into tip_kont( tip_kont) values ('íîìåð');

--insert into kontakty( tip_kont, student) values (

--insert into sostav( sostav) values ('ÂÂÑ');
--insert into sostav( sostav) values ('ÂÄÂ');
--insert into sostav( sostav) values ('ïåõîòà');

--insert into zvanie( zvanie, id_sostav) values ('Ðÿäîâîé',1);
--insert into zvanie( zvanie, id_sostav) values ('Îôèöåð',2);
--insert into zvanie( zvanie, id_sostav) values ('Ëåéòåíàíò',3);

insert into fakultet( fakultet) values ( 'med');
insert into fakultet( fakultet) values ( 'programs');
insert into kafedra( kafedra, id_fakultet) values ( 'hmed',1);
insert into kafedra( kafedra, id_fakultet) values ( 'xmed',1);
insert into kafedra( kafedra, id_fakultet) values ( 'progy',2);
insert into kafedra( kafedra, id_fakultet) values ( 'progi',2);
insert into gruppa( gruppa, id_kafedra) values ( 'a-11',1);
insert into gruppa( gruppa, id_kafedra) values ( 'a-12',1);
insert into gruppa( gruppa, id_kafedra) values ( 'm-1',1);
insert into gruppa( gruppa, id_kafedra) values ( 'a-14',1);

INSERT into student
VALUES ('Baitikova', 'Bermet', 'Baitikovna', 'ID1485577', '12345678', '2016-12-18', 1, 2, 1, 2, 1, 'no comment', 'foto'),
       ('Arlimova', 'Begaiym', 'Arlimovna', 'ID2485577', '23456789', '2018-10-18',  1, 3, 2, 2, 2, 'no comment', 'foto'),
     ('Kasimov', 'Ramir', 'Kasimovich', 'ID1485577', '34567890', '2018-09-18',    1, 4, 3, 1, 3, 'no comment', 'foto'),
     ('Raserov', 'Kadyr', 'Resorivch', 'ID4485577', '45678901', '2017-11-18',     1, 5, 4, 1, 4, 'no comment', 'foto'),
     ('Temirov', 'Temir', 'Temirovich', 'ID5485577', '56789012', '2017-11-18',    1, 6, 1, 1, 1, 'no comment', 'foto'),
     ('Zambiev', 'Khali', 'Zambievich', 'ID6485577', '67890123', '2017-12-18',    1, 7, 2, 1, 2, 'no comment', 'foto'),
     ('Polatova', 'Ramira', 'Polatovna', 'ID7485577', '78901234', '2018-01-18',   1, 8, 3, 2, 1, 'no comment', 'foto'),
     ('Choibekov', 'Marat', 'Choibekov', 'ID8485577', '89012345', '2019-02-18',   1, 5, 4, 1, 1, 'no comment', 'foto'),
     ('Lomanov', 'Kiril', 'Lomanovich', 'ID9485577', '90123456', '2019-03-18',    1, 2, 1, 1, 1, 'no comment', 'foto'),
     ('Chambyrov', 'Batar', 'Chambyrovich', 'ID7885577', '11234567', '2019-01-18',1, 4, 2, 1, 3, 'no comment', 'foto'),
	('Saitikova', 'Jermet', 'Baitikovna', 'ID1185577', '11345678', '2016-12-18', 1, 2, 1, 2, 1, 'no comment', 'foto'),
       ('Orlimova', 'Legaiym', 'Arlimovna', 'ID2425577', '23156789', '2018-10-18',  1, 3, 2, 2, 2, 'no comment', 'foto'),
     ('Tasimov', 'Pamir', 'Kasimovich', 'ID1485377', '34561890', '2018-09-18',    1, 4, 3, 1, 3, 'no comment', 'foto'),
     ('Waserov', 'Tadyr', 'Resorivch', 'ID4485547', '45678101', '2017-11-18',     1, 5, 4, 1, 4, 'no comment', 'foto'),
     ('Qemirov', 'Kemir', 'Temirovich', 'ID5485577', '56781012', '2017-11-18',    1, 6, 1, 1, 1, 'no comment', 'foto'),
     ('Zambiev', 'Chali', 'Zambievich', 'ID6485677', '67891123', '2017-12-18',    1, 7, 2, 1, 2, 'no comment', 'foto'),
     ('Colatova', 'Pamira', 'Polatovna', 'ID7485777', '78901234', '2018-01-18',   1, 8, 3, 2, 1, 'no comment', 'foto'),
     ('Khoibekov', 'Larat', 'Choibekov', 'ID8488577', '89012345', '2019-02-18',   1, 5, 4, 1, 1, 'no comment', 'foto'),
     ('Pomanov', 'Miril', 'Lomanovich', 'ID9485977', '90121456', '2019-03-18',    1, 2, 1, 1, 1, 'no comment', 'foto'),
     ('Lambyrov', 'Watar', 'Chambyrovich', 'ID7222577', '00234567', '2019-01-18', 1, 4, 2, 1, 3, 'no comment', 'foto')


--insert into voinsk_slujba_sl( data_nachala, data_okonch, nomer_prikaza, comments, student, zvanie) values (
--insert into tip_prof_kval( tip_prof_kval) values (
--insert into prof_kval( data_pov, nomer_doc, comments, tip_prof_kval, student) values (

INSERT into kontakty(kontakty,id_tip_kont,id_student)
VALUES ('0551555555', 1, 4),
       ('0552555555', 1, 5),
     ('0553555555', 1, 6),
       ('0554555555', 1, 7),
     ('0555555555', 1, 8),
       ('0556555555', 1, 9),
     ('0557555555', 1, 10),
       ('0558555555', 1, 11),
     ('0559555555', 1, 12),
       ('0550555555', 1, 13),
     ('0555155555', 1, 14),
       ('0555255555', 1, 15),
     ('0555355555', 1, 16),
       ('0555455555', 1, 17),
     ('0555515555', 1, 18),
       ('0555655555', 1, 19),
     ('0555755555', 1, 20),
       ('0555855555', 1, 21),
     ('0555955555', 1, 22),
       ('0555055555', 1, 23),
     ('Aexamp.le@gmail.com', 2, 4),
       ('BexamplVEe@gmail.com', 2, 5),
       ('Cexample@gmail.com', 2, 6),
       ('Dexampdle@gmail.com', 2, 7),
       ('Eexamplwdse@gmail.com', 2, 8),
       ('Fexampdsfle@gmail.com', 2, 9),
       ('Gexampldsfe@gmail.com', 2, 10),
       ('Hexampldsfe@gmail.com', 2, 11),
       ('Kexampldfse@gmail.com', 2, 12),
       ('Lexampdsfle@gmail.com', 2, 13),
       ('Mexampldsfe@gmail.com', 2, 14),
       ('Nexampldse@gmail.com', 2, 15),
       ('Oexampdsfle@gmail.com', 2, 16),
       ('Pexamplfeewe@gmail.com', 2, 17),
       ('Uexampddle@gmail.com', 2, 18),
       ('Rexamdfsple@gmail.com', 2, 19),
       ('Sexampleds@gmail.com', 2, 20),
       ('Texampdsfle@gmail.com', 2, 21),
       ('Uexampsdfle@gmail.com', 2, 22),
       ('Vexampdfsle@gmail.com', 2, 23),
       ('Maldybaeva 34b', 3, 4),
       ('Kaldybaeva 35b', 3, 5),
       ('Paldybaeva 36b', 3, 6),
       ('Valdybaeva 37b', 3, 7),
       ('Baldybaeva 38b', 3, 8),
       ('Naldybaeva 39b', 3, 9),
       ('Taldybaeva 40b', 3, 10),
       ('Ialdybaeva 41b', 3, 11),
       ('Aldybaeva 42b', 3, 12),
       ('Waldybaeva 43b', 3, 13),
       ('Raldybaeva 44b', 3, 14),
       ('Haldybaeva 45b', 3, 15),
       ('Weraldybaeva 46b', 3, 16),
       ('Polkildybaeva 47b', 3, 17),
       ('Makolldybaeva 48b', 3, 18),
       ('Malllldybaeva 49b', 3, 19),
       ('Malddaybaeva 50b', 3, 20),
       ('Daldybaeva 51b', 3, 21),
       ('Waarehaldybaeva 52b', 3, 22),
       ('Maldybaeva 53b', 3, 23)

	   /*ñåëåêòèì âñ¸*/

--SELECT id_student, fam, imya, fakultet, kafedra, gruppa, pol, natsionalnost, grajdanstvo, oblast, rayon, nas_punkt, tip_nas_punkt
--FROM student,
--     fakultet, kafedra, gruppa, 
--   pol, natsionalnost, grajdanstvo, 
--   oblast, rayon, nas_punkt, tip_nas_punkt
--WHERE student.id_gruppa = gruppa.id_gruppa 
--      AND student.id_gruppa = gruppa.id_gruppa 
--      AND student.id_nas_punkt = nas_punkt.id_nas_punkt 
--    AND student.id_pol = pol.id_pol
--    AND student.id_natsionalnost = natsionalnost.id_natsionalnost
--    AND student.id_grajdanstvo = grajdanstvo.id_grajdanstvo 
--    AND fakultet.id_fakultet = kafedra.id_fakultet
--    AND kafedra.id_kafedra = gruppa.id_kafedra
--    AND oblast.id_oblast = rayon.id_oblast
--    AND rayon.id_rayon = nas_punkt.id_rayon
--    AND nas_punkt.id_tip_nas_punkt = tip_nas_punkt.id_tip_nas_punkt
