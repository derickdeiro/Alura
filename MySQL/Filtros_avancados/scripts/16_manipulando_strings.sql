select * from tabela_de_clientes;

select concat(NOME, ' - ', ENDERECO_1, ', ', BAIRRO, ' - ', CIDADE, ' - ', ESTADO ) as DADOS
FROM tabela_de_clientes;

SELECT YEAR(DATA_VENDA), FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRECO))) as RESULTADO
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY YEAR(DATA_VENDA);

SELECT CONCAT('O dia de hoje é : ', current_timestamp()) as RESULTADO;
SELECT CONCAT('O dia de hoje é : ', DATE_FORMAT(current_timestamp(), '%d/%m/%Y')) as RESULTADO;



