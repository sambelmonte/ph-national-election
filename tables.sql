create table if not exists Political_Parties(
  PolPartyID int auto_increment not null,
  Name varchar(255) not null,
  Shorthand varchar(20),
  Primary Key(PolPartyID)
);

create table if not exists Presidentiables(
  PresID int auto_increment not null,
  VoteNum int not null,
  Name varchar(255) not null,
  PresParty int,
  votes int default 0,
  Primary Key(PresID),
  foreign key (PresParty) references Political_Parties(PolPartyID)
);

create table if not exists Vice_Presidentiables(
  VPresID int auto_increment not null,
  VoteNum int not null,
  Name varchar(255) not null,
  VPresParty int,
  votes int default 0,
  Primary Key(VPresID),
  foreign key (VPresParty) references Political_Parties(PolPartyID)
);

create table if not exists Senatoriables(
  SenID int auto_increment not null,
  VoteNum int not null,
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

insert into Presidentiables (Name, PresParty, VoteNum)
values ('Rodrigo Duterte', (select PolPartyID from Political_Parties where Shorthand='PDP-Laban'), 3);
insert into Presidentiables (Name, PresParty, VoteNum)
values ('Mar Roxas', (select PolPartyID from Political_Parties where Shorthand='LP'), 5);
insert into Presidentiables (Name, PresParty, VoteNum)
values ('Grace Poe', (select PolPartyID from Political_Parties where Shorthand is null), 4);
insert into Presidentiables (Name, PresParty, VoteNum)
values ('Jejomar Binay', (select PolPartyID from Political_Parties where Shorthand='UNA'), 1);
insert into Presidentiables (Name, PresParty, VoteNum)
values ('Miriam Defensor Santiago', (select PolPartyID from Political_Parties where Shorthand='PRP'), 2);
insert into Presidentiables (Name, PresParty, VoteNum)
values ('Roy Señeres', (select PolPartyID from Political_Parties where Shorthand='PMM'), 6);

insert into Vice_Presidentiables (Name, VPresParty, VoteNum)
values ('Leni Robredo', (select PolPartyID from Political_Parties where Shorthand='LP'), 5);
insert into Vice_Presidentiables (Name, VPresParty, VoteNum)
values ('Bongbong Marcos', (select PolPartyID from Political_Parties where Shorthand is null), 4);
insert into Vice_Presidentiables (Name, VPresParty, VoteNum)
values ('Alan Peter Cayetano', (select PolPartyID from Political_Parties where Shorthand is null), 1);
insert into Vice_Presidentiables (Name, VPresParty, VoteNum)
values ('Francis Escudero', (select PolPartyID from Political_Parties where Shorthand is null), 2);
insert into Vice_Presidentiables (Name, VPresParty, VoteNum)
values ('Antonio Trillanes', (select PolPartyID from Political_Parties where Shorthand is null), 6);
insert into Vice_Presidentiables (Name, VPresParty, VoteNum)
values ('Gregorio Honasan', (select PolPartyID from Political_Parties where Shorthand='UNA'), 3);


insert into Senatoriables (Name, SenParty, VoteNum)
values ('Risa Hontiveros', (select PolPartyID from Political_Parties where Shorthand='Akbayan'), 20);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Lorna Kapunan', (select PolPartyID from Political_Parties where Shorthand='Aksyon'), 22);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Mark Lapid', (select PolPartyID from Political_Parties where Shorthand='Aksyon'), 27);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Larry Gadon', (select PolPartyID from Political_Parties where Shorthand='KBL'), 16);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Romeo Maganto', (select PolPartyID from Political_Parties where Shorthand='Lakas-CMD'), 29);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Martin Romualdez', (select PolPartyID from Political_Parties where Shorthand='Lakas-CMD'), 43);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Ina Ambolodto', (select PolPartyID from Political_Parties where Shorthand='LP'), 4);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Leila de Lima', (select PolPartyID from Political_Parties where Shorthand='LP'), 12);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Franklin Drilon', (select PolPartyID from Political_Parties where Shorthand='LP'), 15);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('TG Guingona', (select PolPartyID from Political_Parties where Shorthand='LP'), 19);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Francis Pangilinan', (select PolPartyID from Political_Parties where Shorthand='LP'), 40);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Jericho Petilla', (select PolPartyID from Political_Parties where Shorthand='LP'), 41);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Ralph Recto', (select PolPartyID from Political_Parties where Shorthand='LP'), 42);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Joel Villanueva', (select PolPartyID from Political_Parties where Shorthand='LP'), 49);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Neri Colmenares', (select PolPartyID from Political_Parties where Shorthand='Makabayan'), 11);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Susan Ople', (select PolPartyID from Political_Parties where Shorthand='NP'), 34);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Win Gatchalian', (select PolPartyID from Political_Parties where Shorthand='NPC'), 17);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Tito Sotto', (select PolPartyID from Political_Parties where Shorthand='NPC'), 46);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Aldin Ali', (select PolPartyID from Political_Parties where Shorthand='PMM'), 2);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Melchor Chavez', (select PolPartyID from Political_Parties where Shorthand='PMM'), 10);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Sandra Cam', (select PolPartyID from Political_Parties where Shorthand='PMP'), 9);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Isko Moreno', (select PolPartyID from Political_Parties where Shorthand='PMP'), 13);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Jacel Kiram', (select PolPartyID from Political_Parties where Shorthand='UNA'), 23);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Alma Moreno', (select PolPartyID from Political_Parties where Shorthand='UNA'), 24);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Rey Langit', (select PolPartyID from Political_Parties where Shorthand='UNA'), 26);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Allan Montano', (select PolPartyID from Political_Parties where Shorthand='UNA'), 31);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Getulio Napeñas', (select PolPartyID from Political_Parties where Shorthand='UNA'), 33);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Manny Pacquiao', (select PolPartyID from Political_Parties where Shorthand='UNA'), 36);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Shariff Albani', (select PolPartyID from Political_Parties where Shorthand is null), 1);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Rafael Alunan', (select PolPartyID from Political_Parties where Shorthand is null), 3);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Godofredo Arquiza', (select PolPartyID from Political_Parties where Shorthand is null), 5);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Levito Baligod', (select PolPartyID from Political_Parties where Shorthand is null), 6);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Greco Belgica', (select PolPartyID from Political_Parties where Shorthand is null), 7);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Walden Bello', (select PolPartyID from Political_Parties where Shorthand is null), 8);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Ray Dorona', (select PolPartyID from Political_Parties where Shorthand is null), 14);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Richard J. Gordon', (select PolPartyID from Political_Parties where Shorthand is null), 18);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Eid Kabalu', (select PolPartyID from Political_Parties where Shorthand is null), 21);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Panfilo Lacson', (select PolPartyID from Political_Parties where Shorthand is null), 25);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Dante Liban', (select PolPartyID from Political_Parties where Shorthand is null), 28);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Edu Manzano', (select PolPartyID from Political_Parties where Shorthand is null), 30);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Ramon Montaño', (select PolPartyID from Political_Parties where Shorthand is null), 32);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Sergio Osmeña III', (select PolPartyID from Political_Parties where Shorthand is null), 35);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Cresente Paez', (select PolPartyID from Political_Parties where Shorthand is null), 37);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Samuel Pagdilao', (select PolPartyID from Political_Parties where Shorthand is null), 38);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Jovito Palparan', (select PolPartyID from Political_Parties where Shorthand is null), 39);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Roman Romulo', (select PolPartyID from Political_Parties where Shorthand is null), 44);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Dionisio Santiago', (select PolPartyID from Political_Parties where Shorthand is null), 45);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Francis Tolentino', (select PolPartyID from Political_Parties where Shorthand is null), 47);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Diosdado Valeroso', (select PolPartyID from Political_Parties where Shorthand is null), 48);
insert into Senatoriables (Name, SenParty, VoteNum)
values ('Juan Miguel Zubiri', (select PolPartyID from Political_Parties where Shorthand is null), 50);
