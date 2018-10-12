insert into student(ime, prezime, adresa, telefon) values ('Marko', 'Markovic', 'Kosovska 16, Nis', '063/374-736');
insert into student(ime, prezime, adresa, telefon) values ('Petar', 'Petrovic', 'Daniciceva 13, Nis', '063/124-736');
insert into student(ime, prezime, adresa, telefon) values ('Milan', 'Nikolic', 'Lepenicki Bulevar 2, Kragujevac', '063/374-096');
insert into student(ime, prezime, adresa, telefon) values ('Petar', 'Markovic', 'Neznanih Junaka 16, Zrenjanin', '064/309-456');

insert into profesor(ime, prezime, adresa, telefon) values ('Nenad', 'Kostic', 'Moravska 16, Nis', '063/374-111');
insert into profesor(ime, prezime, adresa, telefon) values ('Predrag', 'Ilic', 'Juzni Bulevar 13, Beograd', '063/222-736');
insert into profesor(ime, prezime, adresa, telefon) values ('Boban', 'Djordjevic', 'Bulevar Kralja Aleksandra 2, Beograd', '063/374-333');
insert into profesor(ime, prezime, adresa, telefon) values ('Marko', 'Nikolic', 'Krusevacka 162, Vrsac', '064/444-456');

insert into predmet(ime, profesorid) values ('Fizika', '1');
insert into predmet(ime, profesorid) values ('Hemija', '2');
insert into predmet(ime, profesorid) values ('Informatika', '3');
insert into predmet(ime, profesorid) values ('Elektronika', '4');

insert into ispit(id, profesorid, predmetid, datum) values (1, 1, 3, '02.07.2018.');

insert into ispit_student(ispitid, studentid) values(1, 3);
insert into ispit_student(ispitid, studentid) values(1, 1);
