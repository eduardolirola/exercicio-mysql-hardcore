create database midiasocial
default character set utf8
default collate utf8_general_ci;

use midiasocial;
create table pessoas (
id int NOT NULL AUTO_INCREMENT,
nome varchar (30) not null,
sexo enum('M','F'),
datacriacao datetime,
primary key (id)
) default charset = utf8;

ALTER TABLE `midiasocial`.`pessoas` 
ADD COLUMN `nascimento` DATE NULL AFTER `sexo`;

INSERT INTO pessoas VALUES
('1','Godofredo', 'M' , '1991-02-20', '2018-07-04');

INSERT INTO pessoas VALUES
('2','Flavia', 'F' , '1991-05-30', '2018-07-04');

INSERT INTO pessoas VALUES
('3','Paulo', 'M' , '1997-05-25', '2018-07-04');

INSERT INTO pessoas VALUES
('4','Maria', 'F' , '1989-02-20', '2018-07-04');

select * from pessoas;

create table postagens (
id int NOT NULL AUTO_INCREMENT,
postagem varchar (45),
conteudo varchar (55),
primary key (id)
);

create table likes (
id int NOT NULL AUTO_INCREMENT,
likes int,
datalike datetime,
primary key (id)
);

create table compartilhamentos(
id int NOT NULL AUTO_INCREMENT,
conteudo varchar (45),
datacompartilhamento datetime,
primary key (id)
);

create table comentarios (
id int NOT NULL AUTO_INCREMENT,
conteudo varchar(50),
datacomentario datetime,
primary key (id)
);


INSERT INTO postagens VALUES
('1', 'MINHA PRIMEIRA POSTAGEM NA REDE CLIQUE EM CURTIR','2');

INSERT INTO postagens VALUES
('2', 'OLÁ EU SOU O PAULO QUAL SERIA O PLACAR DO JOGO DE HOJE ?','3');

UPDATE `midiasocial`.`postagens` 
SET `conteudo`='OLÁ SOU A FLAVIA VOCES PRATICAM ESPORTES, QUAL?' WHERE `id`='1';

ALTER TABLE `midiasocial`.`postagens` 
CHANGE COLUMN `conteudo` `conteudo` VARCHAR(90) NULL DEFAULT NULL ;

ALTER TABLE `midiasocial`.`postagens` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL ;

ALTER TABLE `midiasocial`.`pessoas` 
CHANGE COLUMN `datacriacao` `datacriacao` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ;

ALTER TABLE `midiasocial`.`comentarios` 
CHANGE COLUMN `datacomentario` `datacomentario` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ;

ALTER TABLE `midiasocial`.`compartilhamentos` 
CHANGE COLUMN `datacompartilhamento` `datacompartilhamento` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ;

ALTER TABLE `midiasocial`.`likes` 
CHANGE COLUMN `datalike` `datalike` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ;

INSERT INTO comentarios VALUES 
('1','EU GOSTO DE FUTEBOL','1','1');

INSERT INTO comentarios VALUES 
('2','OLÁ EU GOSTO DE HANDBOL','3','1');

INSERT INTO comentarios VALUES 
('4','Oi eu aposto em 3X0 para o Brasil','1','2');

INSERT INTO comentarios VALUES 
('5','vou ser radical e churas 1X0 Argentina','4','2');

INSERT INTO comentarios VALUES 
('6','chuto em 1X0 para o brasil','2','2');

INSERT INTO comentarios VALUES 
('7','TODOS ERRARAM O PALPITE KKK','3','2');

INSERT INTO comentarios VALUES 
('3','OLÁ GOSTO E JOGO VOLEI','4','1');

INSERT INTO likes VALUES
('1','1','2018-07-06 12:05:04','1','1');

INSERT INTO likes VALUES
('2','1','2018-07-06 12:06:04','3','1');

INSERT INTO likes VALUES
('3','1','2018-07-06 12:08:04','4','1');

INSERT INTO likes VALUES
('4','1','2018-07-06 13:26:04','1','2');

INSERT INTO likes VALUES
('5','1','2018-07-06 13:38:04','2','2');

INSERT INTO likes VALUES
('6','1','2018-07-06 13:48:04','4','2');

INSERT INTO compartilhamentos VALUES
('1','Iai meus amigos voces também gosta','2018-07-06 14:25:04','3','1');
INSERT INTO compartilhamentos VALUES
('2','EU GOSTO MUITO E VOCES ?','2018-07-06 14:25:04','4','1');

INSERT INTO compartilhamentos VALUES
('3','Olha so estes chutes kkk','2018-07-07 11:25:04','1','2');

INSERT INTO compartilhamentos VALUES
('4','Não acredito que errei este placar ','2018-07-06 14:25:04','2','2');

select * from compartilhamentos;

ALTER TABLE `midiasocial`.`postagens` 
CHANGE COLUMN `conteudo` `postagen` VARCHAR(90) NULL DEFAULT NULL ;

ALTER TABLE `midiasocial`.`comentarios` 
CHANGE COLUMN `conteudo` `comentario` VARCHAR(50) NULL DEFAULT NULL ;

ALTER TABLE `midiasocial`.`compartilhamentos` 
CHANGE COLUMN `conteudo` `compartilhamento` VARCHAR(45) NULL DEFAULT NULL ;

select * from postagens;

select pessoas.nome, postagens.postagem, likes.likes, comentarios.comentario, compartilhamentos.compartilhamento
from pessoas join postagens join likes join comentarios join compartilhamentos

on pessoas.id = postagens.pessoas_id = likes.pessoas_id = comentarios.pessoas_id = compartilhamentos.pessoas_id
order by pessoas.nome;

select pessoas.nome, postagens.postagem, likes.likes, comentarios.comentario, compartilhamentos.compartilhamento
from pessoas join postagens join likes join comentarios join compartilhamentos

on pessoas.id = postagens.pessoas_id = likes.pessoas_id = comentarios.postagens_id = compartilhamentos.postagens_id
order by pessoas.nome;



