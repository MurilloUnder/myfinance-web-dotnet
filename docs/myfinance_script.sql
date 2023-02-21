CREATE DATABASE myfinance


create table planoconta(
Id int identity (1,1) not null,
descricao varchar (50) not null,
tipo char(1) not null,
primary key (id)
);

create table transacao(
id int identity(1,1)not null,
data datetime not null,
valor decimal(9,2),
historico text,
planocontaid int not null,
primary key(id),
foreign key(planocontaid) references planoconta(id)
);

SELECT * FROM planoconta


insert into planoconta(descricao, tipo)
values('Combust�vel', 'D')

insert into transacao(data, valor, historico, planocontaid)
values('20230102 15:00', 562.45, 'IPTU', 10)


--Todas as transa��es de Despesas no m�s de Janeiro
SELECT t.data, t.valor, p.descricao 
FROM transacao t
inner join planoconta p on t.planocontaid = p.id
where p.tipo = 'D' and t.data >='20230101' and t.data <='20230131'

--Todas as transa��es maiores que 200 reais
select * from transacao where valor > 200

--Somatoria de transa��es de receitas e despesas de todo o per�odo
select sum(valor) as total_despesas from transacao t join planoconta p on p.id = t.planocontaid
where p.tipo = 'D'
union all
select sum(valor) as total_receitas from transacao t join planoconta p on p.id = t.planocontaid
where p.tipo = 'R'

select 
  d.total_despesas, 
  r.total_receitas 
from
  (select sum(valor) as total_despesas 
  from transacao t join planoconta p on p.id = t.planocontaid
  where p.tipo = 'D') as d,
  (select sum(valor) as total_receitas 
from 
  transacao t join planoconta p on p.id = t.planocontaid
  where p.tipo = 'R') as r

  --M�dia de transa��es por m�s
  select 
  avg(valor) as media,
  MONTH(data) as mes 
  from transacao
  group by month(data)

 select year(getdate())

--Transa��es e seus itens de plano de contas
select t.id, t.data, t.valor, p.descricao, p.tipo
from transacao t join planoconta p
on t.planocontaid = p.id


--SQL


--DQL - Data Query Language (SELECT)
--DML - Data Manipulation Language (INSERT, UPDATEA, DELETE)
--DDL - Data Definition Language (CREATE, ATLER, DROP)
--DCL - Data Create Language (GRANT, REVOKE)
--DTL - Data Transaction Language (BEGIN, COMMIT, ROLLBACK)