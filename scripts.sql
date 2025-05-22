create table cliente (
	idcliente integer not null, --variável inteira que seria o id do cliente que só aceita números inteiros. o Not null serve pra dizer que essa cédula na tabela deve conter alguma coisa
	nome varchar (50) not null, --o vaschar é pra dizer que a quantidade de caracteres deve ser no máximo até 50 carcteres, não necessariamente precisa chegar em 50
	cpf char (11), --nesse caso, é obrigatório ter 11 posições em que todas elas devem ser utilizadas
	rg varchar (15), --o Rg é um campo dinâmico
	data_nascimento date,
	genero char(1), --armazeno apenas "m" ou "f"
	profissao varchar(30),
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar (30),
	uf varchar (30),
	observacoes text, --como é um texto livre, usamos a variável text

	-- pk means Primary key - é um campo único, isto é, não pode ser repetido
	constraint pk_cln_idcliente primary key (idcliente)
);


--Aula Inserção de dados na tabela

--para adicionar dados usamos "insert into 'Nome da tabela criada' "
insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (1,'Manoel', '88828383821','32323','2001-01-30','M','Estudante', 'Brasileira', 'Rua Joaquim Nabuco','23','Casa','Cidade Nova','Porto Uniao','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (2,'Geraldo', '12343299929','56565','1987-01-04','M','Engenheiro', 'Brasileira', 'Rua das Limas','200','Ap','Centro','Poro Uniao','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (3,'Carlos','87732323227','55463','1967-10-01','M','Pedreiro','Brasileira','Rua das Laranjeiras','300','Apart.','Cto.','Canoinhas','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (4,'Adriana','12321222122','98777','1989-09-10','F','Jornalista','Brasileira','Rua das Limas','240','Casa','São Pedro','General Carneiro','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (5,'Amanda','99982838828','28382','1991-03-04','F','Jorn.','Italiana','Av. Central','100',null, 'São Pedro','General Carneiro','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (6, 'Ângelo', '99982828181','12323','2000-01-01','M','Professor','Brasileiro','Av. Beira Mar','300',null, 'Ctr.','São Paulo','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (7,'Anderson',null,null,null,'M','Prof.','Italiano', 'Av. Brasil','100','Apartamento','Santa Rosa','Rio de Janeiro','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (8,'Camila','9998282828',null,'2001-10-10','F','Professora','Norte-Americana','Rua Central','4333',null,'Centro','Porto Alegre','RS');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (9,'Cristiano',null,null,null,'M','Estudante','Alemã','Rua do Centro','877','Casa','Centro','Porto Alegre','RS');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (10, 'Fabricio','8828282828','32323',null,'M','Estudante','Brasileiro',null,null,null,null, 'PU','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (11,'Fernanda',null,null,null,'F',null,'Brasileira',null,null,null,null,'Porto União','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (12,'Gilmar','88881818181','888','2000-02-10','M','Estud.',null,'Rua das Laranjeiras','200',null,'C. Nova','Canoinhas','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (13,'Diego','1010191919','111939',null,'M','Professor','Alemão','Rua Central','455','Casa','Cidade N.','São Paulo','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (14,'Jeferson',null,null,'1983-07-01','M',null,'Brasileiro',null,null, null,null,'União da Vitória','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (15,'Jessica',null,null,null,'F','Estudante', null, null, null, null, null, 'União da Vitória','PR');


--Consultas simples
select * from cliente;    --seleciona toda a tabela criada

select nome, data_nascimento from cliente;    --filtra dados específicos

select nome, data_nascimento as "Data de nascimento" from cliente;   --renomeei uma variável/informação

select ' CPF: ' || cpf || ' RG: ' || rg as "CPF e RG" from cliente;   --concatenar informações e mostrá-las lado a lado

select * from cliente limit 3;    --mostra os três primeiros dados da tabela

select nome, data_nascimento from cliente where data_nascimento > '2000-01-01';  --o comando where traz um filtro condicional em cima dos dados

select nome from cliente where nome like 'C%' --também uma condição do filtro, em que pegamos clientes com nomes que começam com a letra C. O % indica que começa com a lestra c e após isso, pode ter qualquer nome.

select nome from cliente where nome like '%c%';   --aqui executo um comando que o nome tenha a letra c

select nome, data_nascimento from cliente where data_nascimento between '1990-01-01' and '1998-01-01';   --consigo um condição entre datas

select nome, rg from cliente where rg is null;

select nome from cliente order by nome asc;     --torno a visualização da tabela em ordem alfabética ascendente

select nome from cliente order by nome desc;    --em ordem descendente


--Lista de exercícios 1

-- 1.	O nome, o gênero e a profissão de todos os clientes, ordenado pelo nome em ordem decrescente
select nome, genero, profissao from cliente order by nome desc;

-- 2.	Os clientes que tenham a letra “R” no nome
select nome from cliente where nome like '%r%';

-- 3.	Os clientes que o nome inicia com a letra “C”
select nome from cliente where nome like 'C%';

-- 4.	Os clientes que o nome termina com a letra “A”
select nome from cliente where nome like '%a';

-- 5.	Os clientes que moram no bairro “Centro”
select nome, bairro from cliente where bairro = 'Centro' or bairro = 'Cto.' or bairro = 'Ctr.'  --usamos or para acrescentar outras versões de centro

-- 6.	Os clientes que moram em complementos que iniciam com a letra “A”
select nome, complemento from cliente where complemento like 'A%';

-- 7.	Somente os clientes do sexo feminino
select nome, genero from cliente where genero like 'F'

-- 8.	Os clientes que não informaram o CPF
select nome, cpf from cliente where cpf is null;

-- 9.	O nome e a profissão dos clientes, ordenado em ordem crescente pelo nome da profissão
select nome, profissao from cliente order by profissao asc;

-- 10.	Os clientes de nacionalidade “Brasileira”
select nome, nacionalidade from cliente where nacionalidade like 'Brasil%';

-- 11.	Os clientes que informaram o número da residência
select nome, numero from cliente where numero is not null;

-- 12.	Os clientes que moram em Santa Catarina
select nome, uf from cliente where uf like 'SC';

-- 13.	Os clientes que nasceram entre 01/01/2000 e 01/01/2002
select nome, data_nascimento from cliente where data_nascimento between '2000-01-01' and '2002-01-01';

-- 14.	O nome do cliente e o logradouro, número, complemento, bairro, município e UF concatenado de todos os clientes
select nome || ' - ' || logradouro || ' - ' || numero || ' - ' || complemento || ' - ' || bairro || ' - ' || municipio || ' - ' || uf from cliente;

select * from cliente;


--Comandos update e delete
update cliente set nome = 'Teste' where idcliente = 1;  --CUIDADO! Esse é um comando super pergigoso, pois preciso colocar o id do cliente para mudar apenas o do id informado.

update cliente set nome = 'Adriano', genero = 'M', numero = '241' where idcliente = 4;

insert into cliente (idcliente, nome) values (16, 'João');

delete from cliente where idcliente = 16;    -- se eu executar apenas o que tem antes do where eu deleto todos os clientes da tabela



--Segunda lista de exercícios

-- 1.	Insira os dados abaixo na tabela de clientes

-- IdCliente	Nome	CPF	RG	Data_Nascimento	Sexo	Profissão	Nacionalidade	Logradouro	Numero	Complemento	Bairro	Município	UF
-- 16	Maicon	12349596421	1234	10/10/1965	F	Empresário						Florianópolis	PR
-- 17	Getúlio		4631		F	Estudante	Brasileira	Rua Central	343	Apartamento	Centro	Curitiba	SC
-- 18	Sandra				M	Professor	Italiana		12	Bloco A			
insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, municipio, UF)
values (16,'Maicon','12349596421','1234','1965-10-10','F','Empresário', 'Florianópolis','PR');

insert into cliente(idcliente, nome, rg, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (17,'Getúlio','4631','F','Estudante', 'Brasileira', 'Rua Central', '343', 'Apartamento', 'Centro', 'Curitiba','SC');

insert into cliente(idcliente, nome, genero, profissao, nacionalidade, numero, complemento)
values (18,'Sandra','M','Professor', 'Italiana', '12', 'Bloco A');


-- 2.	Altere os dados do cliente Maicon
	-- a.	O CPF para 45390569432
	-- b.	O sexo para M
	-- c.	A nacionalidade para Brasileira
	-- d.	O UF para SC
	
select * from cliente
update cliente set cpf = '45390569432', genero = 'M', nacionalidade = 'Brasileira', uf = 'SC' where id cliente = 16

-- 3.	Altere os dados do cliente Getúlio
	-- a.	A data de nascimento para 01/04/1978
	-- b.	O sexo para M
update cliente set data_nascimento = '1978-04-01', genero = 'M' where idcliente = 17

-- 4.	Altere os dados da cliente Sandra
	-- a.	O sexo para F
	-- b.	A profissão para Professora
	-- c.	O número para 123
update cliente set genero = 'F', profissao = 'Professora', numero = '123' where idcliente = 18;

-- 5.	Apague o cliente Maicon
delete from cliente where idcliente = 16;

-- 6.	Apague a cliente Sandra
delete from cliente where idcliente = 18;



-- Aula Criação de mais tabelas
create table profissao (
	idprofissao integer not null,
	nome varchar(30) not null,

	constraint pk_prf_idprofissao primary key (idprofissao),
	constraint un_prf_nome unique (nome)
);

insert into profissao (idprofissao, nome) values (1, 'Estudante');
insert into profissao (idprofissao, nome) values (2, 'Engenheiro');
insert into profissao (idprofissao, nome) values (3, 'Pedreiro');
insert into profissao (idprofissao, nome) values (4, 'Jornalista');
insert into profissao (idprofissao, nome) values (5, 'Professor');

select * from profissao;   --aqui eu inseri na tabela profissao

create table nacionalidade(
	idnacionalidade integer not null,
	nome varchar(30) not null,

	constraint pk_ncn_idnacionalidade primary key (idnacionalidade),
	constraint un_ncn_nome unique (nome)
);

insert into nacionalidade (idnacionalidade, nome) values (1, 'Brasileira');  --não consigo rodar novamente essa linha, pois viola o idnacionalidade
insert into nacionalidade (idnacionalidade, nome) values (2, 'Italiana');
insert into nacionalidade (idnacionalidade, nome) values (3, 'Norte-americana');
insert into nacionalidade (idnacionalidade, nome) values (4, 'Alemã');

select * from nacionalidade;

create table complemento (
	idcomplemento integer not null,
	nome varchar(30) not null,

	constraint pk_cpl_idcomplemento primary key (idcomplemento),
	constraint un_cpl_nome unique (nome)
);

create table bairro (
	idbairro integer not null,
	nome varchar(30) not null,

	constraint pk_brr_idbairro primary key (idbairro),
	constraint un_brr_nome unique (nome)
);

insert into bairro (idbairro, nome) values (1, 'Cidade Nova');
insert into bairro (idbairro, nome) values (2, 'Centro');
insert into bairro (idbairro, nome) values (3, 'São pedro');
insert into bairro (idbairro, nome) values (4, 'Santa Rosa');

select * from bairro;

--Aula Chaves Estrangeiras 1
select * from cliente;

alter table cliente rename column profissao to idprofissao;
alter table cliente alter column idprofissao type integer;

update cliente set idprofissao = 'Engenheiro' where idcliente = 2;  --tinha alterado sem querer o dado

-- Estudante -> 1, 9, 10, 12, 15, 17
-- Engenheiro -> 2
-- Pedreiro -> 3
-- Jornalista -> 4, 5
-- Professor -> 6, 7, 8, 13
-- Null -> 11, 14

alter table cliente drop idprofissao;  --exclui a coluna idprofissao
alter table cliente add idprofissao integer;   --mudei os dados da coluna para serem números inteiros
alter table cliente add constraint fk_cln_idprofissao foreign key (idprofissao) references profissao (idprofissao); --essa nova coluna que acabamos de criar vai se relacionar com a tabela de profissão

update cliente set idprofissao = 1 where idcliente in (1, 9, 10, 12, 15, 17);
update cliente set idprofissao = 2 where idcliente = 2;
update cliente set idprofissao = 3 where idcliente = 3;
update cliente set idprofissao = 4 where idcliente in (4, 5);
update cliente set idprofissao = 5 where idcliente in (6, 7, 8, 13);

select * from profissao;
delete from profissao where idprofissao = 10;   --dá errado pois viola a chave estrangeira
insert into profissao (idprofissao, nome) values (10, 'Teste');











