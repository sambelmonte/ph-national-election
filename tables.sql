create table if not exists Political_Parties(
  PolPartyID int auto_increment not null,
  Name varchar(255) not null,
  Shorthand varchar(20),
  Primary Key(PolPartyID)
);

create table if not exists Presidentiables(
  PresID int auto_increment not null,
  Name varchar(255) not null,
  PresParty int,
  votes int default 0,
  Primary Key(PresID),
  foreign key (PresParty) references Political_Parties(PolPartyID)
);

create table if not exists Vice_Presidentiables(
  VPresID int auto_increment not null,
  Name varchar(255) not null,
  VPresParty int,
  votes int default 0,
  Primary Key(VPresID),
  foreign key (VPresParty) references Political_Parties(PolPartyID)
);

create table if not exists Senatoriables(
  SenID int auto_increment not null,
  Name varchar(255) not null,
  SenParty int,
  votes int default 0,
  Primary Key(SenID),
  foreign key (SenParty) references Political_Parties(PolPartyID)
);

insert into Political_Parties (Name) values ('Independent');
insert into Political_Parties (Name, Shorthand)
values ('Partido Demokratiko Pilipino-Lakas ng Bayan', 'PDP-Laban');
insert into Political_Parties (Name, Shorthand)
values ('Liberal Party', 'LP');
insert into Political_Parties (Name, Shorthand)
values ('United Nationalist Alliance', 'UNA');
insert into Political_Parties (Name, Shorthand)
values ('People\'s Reform Party', 'PRP');
insert into Political_Parties (Name, Shorthand)
values ('Partido ng Manggagawa at Magsasaka', 'PMM');
insert into Political_Parties (Name, Shorthand)
values ('Laban ng Demokratikong Pilipino', 'LDP');
insert into Political_Parties (Name, Shorthand)
values ('Pwersa ng Masang Pilipino', 'PMP');
insert into Political_Parties (Name, Shorthand)
values ('Nationalist People\'s Coalition', 'NPC');
insert into Political_Parties (Name, Shorthand)
values ('Nacionalista Party', 'NP');
insert into Political_Parties (Name, Shorthand)
values ('Akbayan Citizens\' Action Party', 'Akbayan');
insert into Political_Parties (Name, Shorthand)
values ('Lakas-Christian Muslim Democracy', 'Lakas-CMD');
insert into Political_Parties (Name, Shorthand)
values ('Aksyon Demokratiko', 'Aksyon');
insert into Political_Parties (Name, Shorthand)
values ('Kilusang Bagong Lipunan', 'KBL');
insert into Political_Parties (Name, Shorthand)
values ('Makabayang Koalisyon ng Mamamayan', 'Makabayan');

insert into Presidentiables (Name, PresParty)
values ('Rodrigo Duterte', (select PolPartyID from Political_Parties where Shorthand='PDP-Laban'));
insert into Presidentiables (Name, PresParty)
values ('Mar Roxas', (select PolPartyID from Political_Parties where Shorthand='LP'));
insert into Presidentiables (Name, PresParty)
values ('Grace Poe', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Presidentiables (Name, PresParty)
values ('Jejomar Binay', (select PolPartyID from Political_Parties where Shorthand='UNA'));
insert into Presidentiables (Name, PresParty)
values ('Miriam Defensor Santiago', (select PolPartyID from Political_Parties where Shorthand='PRP'));
insert into Presidentiables (Name, PresParty)
values ('Roy Señeres', (select PolPartyID from Political_Parties where Shorthand='PMM'));

insert into Vice_Presidentiables (Name, VPresParty)
values ('Leni Robredo', (select PolPartyID from Political_Parties where Shorthand='LP'));
insert into Vice_Presidentiables (Name, VPresParty)
values ('Bongbong Marcos', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Vice_Presidentiables (Name, VPresParty)
values ('Alan Peter Cayetano', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Vice_Presidentiables (Name, VPresParty)
values ('Francis Escudero', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Vice_Presidentiables (Name, VPresParty)
values ('Antonio Trillanes', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Vice_Presidentiables (Name, VPresParty)
values ('Gregorio Honasan', (select PolPartyID from Political_Parties where Shorthand='UNA'));


insert into Senatoriables (Name, SenParty)
values ('Risa Hontiveros', (select PolPartyID from Political_Parties where Shorthand='Akbayan'));
insert into Senatoriables (Name, SenParty)
values ('Lorna Kapunan', (select PolPartyID from Political_Parties where Shorthand='Aksyon'));
insert into Senatoriables (Name, SenParty)
values ('Mark Lapid', (select PolPartyID from Political_Parties where Shorthand='Aksyon'));
insert into Senatoriables (Name, SenParty)
values ('Larry Gadon', (select PolPartyID from Political_Parties where Shorthand='KBL'));
insert into Senatoriables (Name, SenParty)
values ('Romeo Maganto', (select PolPartyID from Political_Parties where Shorthand='Lakas-CMD'));
insert into Senatoriables (Name, SenParty)
values ('Martin Romualdez', (select PolPartyID from Political_Parties where Shorthand='Lakas-CMD'));
insert into Senatoriables (Name, SenParty)
values ('Ina Ambolodto', (select PolPartyID from Political_Parties where Shorthand='LP'));
insert into Senatoriables (Name, SenParty)
values ('Leila de Lima', (select PolPartyID from Political_Parties where Shorthand='LP'));
insert into Senatoriables (Name, SenParty)
values ('Franklin Drilon', (select PolPartyID from Political_Parties where Shorthand='LP'));
insert into Senatoriables (Name, SenParty)
values ('TG Guingona', (select PolPartyID from Political_Parties where Shorthand='LP'));
insert into Senatoriables (Name, SenParty)
values ('Francis Pangilinan', (select PolPartyID from Political_Parties where Shorthand='LP'));
insert into Senatoriables (Name, SenParty)
values ('Jericho Petilla', (select PolPartyID from Political_Parties where Shorthand='LP'));
insert into Senatoriables (Name, SenParty)
values ('Ralph Recto', (select PolPartyID from Political_Parties where Shorthand='LP'));
insert into Senatoriables (Name, SenParty)
values ('Joel Villanueva', (select PolPartyID from Political_Parties where Shorthand='LP'));
insert into Senatoriables (Name, SenParty)
values ('Neri Colmenares', (select PolPartyID from Political_Parties where Shorthand='Makabayan'));
insert into Senatoriables (Name, SenParty)
values ('Susan Ople', (select PolPartyID from Political_Parties where Shorthand='NP'));
insert into Senatoriables (Name, SenParty)
values ('Win Gatchalian', (select PolPartyID from Political_Parties where Shorthand='NPC'));
insert into Senatoriables (Name, SenParty)
values ('Tito Sotto', (select PolPartyID from Political_Parties where Shorthand='NPC'));
insert into Senatoriables (Name, SenParty)
values ('Aldin Ali', (select PolPartyID from Political_Parties where Shorthand='PMM'));
insert into Senatoriables (Name, SenParty)
values ('Melchor Chavez', (select PolPartyID from Political_Parties where Shorthand='PMM'));
insert into Senatoriables (Name, SenParty)
values ('Sandra Cam', (select PolPartyID from Political_Parties where Shorthand='PMP'));
insert into Senatoriables (Name, SenParty)
values ('Isko Moreno', (select PolPartyID from Political_Parties where Shorthand='PMP'));
insert into Senatoriables (Name, SenParty)
values ('Jacel Kiram', (select PolPartyID from Political_Parties where Shorthand='UNA'));
insert into Senatoriables (Name, SenParty)
values ('Alma Moreno', (select PolPartyID from Political_Parties where Shorthand='UNA'));
insert into Senatoriables (Name, SenParty)
values ('Rey Langit', (select PolPartyID from Political_Parties where Shorthand='UNA'));
insert into Senatoriables (Name, SenParty)
values ('Allan Montano', (select PolPartyID from Political_Parties where Shorthand='UNA'));
insert into Senatoriables (Name, SenParty)
values ('Getulio Napeñas', (select PolPartyID from Political_Parties where Shorthand='UNA'));
insert into Senatoriables (Name, SenParty)
values ('Manny Pacquiao', (select PolPartyID from Political_Parties where Shorthand='UNA'));
insert into Senatoriables (Name, SenParty)
values ('Shariff Albani', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Rafael Alunan', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Godofredo Arquiza', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Levito Baligod', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Greco Belgica', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Walden Bello', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Ray Dorona', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Richard J. Gordon', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Eid Kabalu', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Panfilo Lacson', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Dante Liban', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Edu Manzano', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Ramon Montaño', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Sergio Osmeña III', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Cresente Paez', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Samuel Pagdilao', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Jovito Palparan', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Roman Romulo', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Dionisio Santiago', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Francis Tolentino', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Diosdado Valeroso', (select PolPartyID from Political_Parties where Shorthand is null));
insert into Senatoriables (Name, SenParty)
values ('Juan Miguel Zubiri', (select PolPartyID from Political_Parties where Shorthand is null));
