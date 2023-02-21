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
values('Combustível', 'D')

insert into transacao(data, valor, historico, planocontaid)
values('20230102 15:00', 562.45, 'IPTU', 10)


--Todas as transações de Despesas no mês de Janeiro
SELECT t.data, t.valor, p.descricao 
FROM transacao t
inner join planoconta p on t.planocontaid = p.id
where p.tipo = 'D' and t.data >='20230101' and t.data <='20230131'

--Todas as transações maiores que 200 reais
select * from transacao where valor > 200

--Somatoria de transações de receitas e despesas de todo o período
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

  --Média de transações por mês
  select 
  avg(valor) as media,
  MONTH(data) as mes 
  from transacao
  group by month(data)

 select year(getdate())

--Transações e seus itens de plano de contas
select t.id, t.data, t.valor, p.descricao, p.tipo
from transacao t join planoconta p
on t.planocontaid = p.id


--SQL


--DQL - Data Query Language (SELECT)
--DML - Data Manipulation Language (INSERT, UPDATEA, DELETE)
--DDL - Data Definition Language (CREATE, ATLER, DROP)
--DCL - Data Create Language (GRANT, REVOKE)
--DTL - Data Transaction Language (BEGIN, COMMIT, ROLLBACK)