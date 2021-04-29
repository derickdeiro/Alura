select * from tabela_de_produtos;

select * from tabela_de_produtos order by PRECO_DE_LISTA;
select * from tabela_de_produtos order by PRECO_DE_LISTA DESC;
select * from tabela_de_produtos order by NOME_DO_PRODUTO;
select * from tabela_de_produtos order by EMBALAGEM, NOME_DO_PRODUTO;

# ORDENADO EMBALAGEM DE FORMA DESCRESCENTE E NOME DO PRODUTO DE FORMA CRESCENTE
select * from tabela_de_produtos order by EMBALAGEM DESC, NOME_DO_PRODUTO ASC;

# EXERCICIO
select * from tabela_de_produtos where NOME_DO_PRODUTO = 'Linha Refrescante - 1 Litro - Morango/Limão';
select * from itens_notas_fiscais WHERE CODIGO_DO_PRODUTO = '1101035' ORDER BY QUANTIDADE desc, PRECO desc;