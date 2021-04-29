select * from tabela_de_clientes;

select ESTADO, LIMITE_DE_CREDITO from tabela_de_clientes;
# É NECESSARIO CRIAR O APELIDO DA COLUNA NA FUNCAO SUM
select ESTADO, sum(LIMITE_DE_CREDITO) as LIMITE_TOTAL from tabela_de_clientes group by ESTADO;

select EMBALAGEM, PRECO_DE_LISTA from tabela_de_produtos;
select EMBALAGEM, max(PRECO_DE_LISTA) as MAIOR_PRECO from tabela_de_produtos group by EMBALAGEM;

select EMBALAGEM, count(*) as CONTADOR from tabela_de_produtos group by EMBALAGEM;

select BAIRRO, sum(LIMITE_DE_CREDITO) as LIMITE from tabela_de_clientes group by BAIRRO;
# o Group By vai ao final do comando quando não existir Order By // Filtrando Limite de credito total por bairro da cidade do Rio de Janiero
select BAIRRO, sum(LIMITE_DE_CREDITO) as LIMITE from tabela_de_clientes where CIDADE = 'Rio de Janeiro' group by BAIRRO;

select ESTADO, BAIRRO, sum(LIMITE_DE_CREDITO) as LIMITE from tabela_de_clientes group by ESTADO, BAIRRO;
# soma de limite de crédito filtrado por bairros da Cidade do "Rio de Janeiro" ordenados alfabeticamente
select ESTADO, BAIRRO, sum(LIMITE_DE_CREDITO) as LIMITE from tabela_de_clientes where CIDADE = 'Rio de Janeiro' group by ESTADO, BAIRRO order by BAIRRO;