
-- a linha abaixo cria um banco de dados
create database dbinfox;
-- a linha abaixo escolhe o banco de dados
use dbinfox;
-- o bloco de instruções abaixo cria uma tabela
create table tbusuarios(
iduser int primary key, 
usuario varchar(50) not null,
fone varchar(15),
login varchar(15)not null unique,
senha varchar(15) not null
);
-- o comando abaixo descreve a tabela
describe tbusuarios;

-- a linha abaixo insere dados na tabela (crud)
-- create -> equivale ao insert
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(1,'willian de aquino', '9999-9999','willianaquino','123456');
-- a linha abaixo exibe os dados da tabela (CRUD)
-- read -> equivale ao select
select * from tbusuarios;

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(2,'Administrador', '9999-9999','admin','admin');

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(3,'stive jobs', '9999-9999','jobs','123456');

-- a linha baixo modifica dados na tabela(CRUD)
-- update -> update
update tbusuarios set fone='8888-8888' where iduser=2;

-- a linha abaixo apaga um registro da tabela(CRUD)
-- delete -> delete
delete from tbusuarios where iduser=3;

create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50)
);

describe tbclientes;

insert into tbclientes(nomecli, endcli,fonecli,emailcli)
values('linus Torvalds', 'rua tux, 2015','9999-9999', 'linus@hotmail.com');

select * from tbclientes;