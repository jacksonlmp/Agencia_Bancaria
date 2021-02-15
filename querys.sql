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

SELECT c.nome_cliente
FROM cliente c 
WHERE (SELECT count(distinct(a1.nome_agencia)) FROM cliente c1 
JOIN tomador t1 on t1.nome_cliente = c1.nome_cliente
JOIN emprestimo e1 on e1.num_emprestimo = t1.num_emprestimo
JOIN agencia a1 on e1.nome_agencia = a1.nome_agencia 
WHERE a1.cidade_agencia = 'Brooklyn'
AND c1.nome_cliente = c.nome_cliente) = (SELECT count(*) 
FROM agencia WHERE cidade_agencia = 'Brooklyn');


#Ache o cliente que tem a conta com maior saldo.

SELECT cc.nome_cliente
FROM conta c 
JOIN depositante d on d.num_conta = c.num_conta
JOIN cliente cc on cc.nome_cliente = d.nome_cliente
WHERE c.saldo = (SELECT MAX(c1.saldo) FROM conta c1);


#Ache o cliente que tem o maior valor de soma de empréstimos.

SELECT distinct (t.nome_cliente) as nome, (SELECT sum(e1.valor) 
FROM emprestimo e1 
JOIN tomador t1 on e1.num_empre = t1.num_empre 
WHERE t.nome_cliente = t1.nome_cliente) as soma
FROM emprestimo e
JOIN tomador t on e.num_empre = t.num_empre order by soma DESC LIMIT 1;

