CREATE DATABASE IF NOT EXISTS practic;
USE practic;
ALTER DATABASE practic CHARACTER SET = utf8;
DROP TABLE users;
CREATE TABLE IF NOT EXISTS users(id int not null, username varchar(30) not null,
 lastname varchar(30) not null, data_reg date not null);
 
INSERT INTO users VALUES(1,'Пользователь 1','Иванов','2009-09-09'),
(2,'Пользователь 2','Петров','2009-09-15'),(3,'Пользователь 3','Сидоров','2009-09-17'),
(4,'Пользователь 4','Кузнецов','2009-09-01'),(5,'Пользователь 5','Тайсон','2009-09-25');

UPDATE users SET username='Пользователь';
UPDATE users SET lastname='Сенаторов' WHERE data_reg='2009-09-09';

CREATE TABLE IF NOT EXISTS serials(id int not null, title varchar(30) not null,
 tv_channel varchar(30) not null default '', year_out varchar(4) not null);
 
INSERT INTO serials VALUES(1,'Game of Thrones','HBO','2011'),
							(2,'House, M.D.','FOX','2004');
INSERT INTO serials(id,title,year_out) VALUES(3,'The Vampire Diaries','2009'),
				(4,'Supernatural ','2005'),(5,'The Big Bang Theory','2007');
 
CREATE TABLE IF NOT EXISTS opinions(id int not null, opinion text not null, author varchar(15) default 'anonim');
 
INSERT INTO opinions VALUES(1,'Very interesting','Guru'),(2,'Not bad','Sceptic');
INSERT INTO opinions (id,opinion) VALUES(3,'Boredom'),(4,'Two handsome!'),(5,'Informative');

CREATE TABLE IF NOT EXISTS genres(id int not null, genre text not null, screenplayer varchar(15));
 
INSERT INTO genres VALUES(1,'Фэнтэзи','Дэвид Бениофф'),(2,'Медицинская драма','Дэвид Шор'),
						(3, 'Сверхъестественная драма','Кевин Уильямсон');
INSERT INTO genres (id,genre) VALUES(4,'Темное фэнтэзи'),(5,'Ситуационная комедия');

DELETE FROM genres WHERE id=3;
-- DELETE FROM genres WHERE genre='Фэнтэзи';