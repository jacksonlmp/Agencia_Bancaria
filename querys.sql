#Ache os nomes de todas as agências que possuem ativos maiores do que
#aqueles de pelo menos uma agência localizada no Brooklyn.

SELECT nome_agencia
FROM agencia
WHERE ativos > ANY (SELECT ativos FROM agencia WHERE cidade_agencia = 'Brooklyn');

#Ache a soma de todos os empréstimos do cliente Peter em todas as agências. 

select sum(e.valor)
from emprestimo e, tomador t
where e.num_empre = t.num_empre and t.nome_cliente = 'Peter';

#Ache todos os clientes que possuem uma conta com empréstimo em todas as
#agências localizadas em Brooklyn.

select DISTINCT nome_cliente
from tomador
where nome_cliente in
(select t.nome_cliente
from emprestimo e, agencia a, tomador t
where e.nome_agencia = a.nome_agencia and a.cidade_agencia = 'Brooklyn' and t.num_empre = e.num_empre)
and nome_cliente in 
(select d.nome_cliente
from conta c, depositante d, agencia a
where c.nome_agencia = a.nome_agencia and c.num_conta = d.num_conta and a.cidade_agencia = 'Brooklyn');
