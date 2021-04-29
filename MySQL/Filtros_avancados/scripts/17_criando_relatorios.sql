select * from itens_notas_fiscais;
select * from notas_fiscais;

select * from notas_fiscais NF
inner join itens_notas_fiscais INF
on NF.NUMERO = INF.NUMERO;

select NF.CPF, NF.DATA_VENDA, INF.QUANTIDADE from notas_fiscais NF
inner join itens_notas_fiscais INF
on NF.NUMERO = INF.NUMERO;

# CONSULTA COM VENDAS DE CLIENTES POR MES 
select NF.CPF, date_format(NF.DATA_VENDA, '%Y-%m') as MES_ANO, 
SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDAS from notas_fiscais NF
inner join itens_notas_fiscais INF
on NF.NUMERO = INF.NUMERO
GROUP by NF.CPF, date_format(NF.DATA_VENDA, '%Y-%m');

# LIMITE DE COMPRA POR CLIENTE
select * from tabela_de_clientes TC;

select TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA AS QUANTIDADE_LIMITE from tabela_de_clientes TC;

select NF.CPF, TC.NOME, date_format(NF.DATA_VENDA, '%Y-%m') as MES_ANO, 
SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDAS, MAX(TC.VOLUME_DE_COMPRA) AS QUANTIDADE_LIMITE 
from notas_fiscais NF inner join itens_notas_fiscais INF
on NF.NUMERO = INF.NUMERO
inner join TABELA_DE_CLIENTES TC
on TC.CPF = NF.CPF
GROUP by NF.CPF, TC.NOME, date_format(NF.DATA_VENDA, '%Y-%m');

select X.CPF, X.NOME, X.MES_ANO, X.QUANTIDADE_VENDAS, X.QUANTIDADE_LIMITE,
X.QUANTIDADE_LIMITE - X.QUANTIDADE_VENDAS AS DIFERENCA
FROM(
select NF.CPF, TC.NOME, date_format(NF.DATA_VENDA, '%Y-%m') as MES_ANO, 
SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDAS, MAX(TC.VOLUME_DE_COMPRA) AS QUANTIDADE_LIMITE 
from notas_fiscais NF inner join itens_notas_fiscais INF
on NF.NUMERO = INF.NUMERO
inner join TABELA_DE_CLIENTES TC
on TC.CPF = NF.CPF
GROUP by NF.CPF, TC.NOME, date_format(NF.DATA_VENDA, '%Y-%m')) X;

select X.CPF, X.NOME, X.MES_ANO, X.QUANTIDADE_VENDAS, X.QUANTIDADE_LIMITE,
X.QUANTIDADE_LIMITE - X.QUANTIDADE_VENDAS AS DIFERENCA,
CASE 
	WHEN (X.QUANTIDADE_LIMITE - X.QUANTIDADE_VENDAS) < 0 THEN 'INVÁLIDA'
    ELSE 'VÁLIDA'
END AS STATUS_VENDA
FROM(
select NF.CPF, TC.NOME, date_format(NF.DATA_VENDA, '%Y-%m') as MES_ANO, 
SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDAS, MAX(TC.VOLUME_DE_COMPRA) AS QUANTIDADE_LIMITE 
from notas_fiscais NF inner join itens_notas_fiscais INF
on NF.NUMERO = INF.NUMERO
inner join TABELA_DE_CLIENTES TC
on TC.CPF = NF.CPF
GROUP by NF.CPF, TC.NOME, date_format(NF.DATA_VENDA, '%Y-%m')) X;