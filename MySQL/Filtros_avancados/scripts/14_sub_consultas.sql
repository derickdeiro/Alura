select distinct BAIRRO from tabela_de_vendedores;

# ao colocar algo entre parenteses, se torna uma especie de tabela
select * from tabela_de_clientes WHERE BAIRRO in (select distinct BAIRRO from tabela_de_vendedores);

select X.EMBALAGEM, X.PRECO_MAXIMO from
(select EMBALAGEM, max(PRECO_DE_LISTA) as PRECO_MAXIMO FROM tabela_de_produtos group by EMBALAGEM) X
where x.PRECO_MAXIMO >= 10;