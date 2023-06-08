
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

create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp, -- gera data e hora
equipamento varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal (10,2),
idcli int not null, -- chave estrangeira, campos responsavel por unir as duas tabelas
foreign key(idcli) references tbclientes(idcli) -- essa linha empedi que haja um equipamento sem um cliente veinculado.
);

describe tbos;

insert into tbos(equipamento, defeito,servico,tecnico,valor,idcli)
values ('notbook', 'não liga', 'troca da fonte', 'willian',87.50,1);

select * from tbos;

-- o codigo abaixo traz informações de duas tabelas
select 
O.os,equipamento,defeito,servico,valor,
C.nomecli,fonecli
from tbos as O 
inner join tbclientes as C
on (O.idcli = C.idcli);


describe tbusuarios;
select * from tbusuarios;
-- a linha abaixo adiciona um campo a tabela
alter table tbusuarios add column perfil varchar(20) not null;
-- a linha abaixo remove um campo de uma tabela
alter table tbusuarios drop column perfil;
update tbusuarios set perfil='admin' where iduser=2; 
update tbusuarios set perfil='user' where iduser=1; 



