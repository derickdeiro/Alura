select EMBALAGEM, TAMANHO from tabela_de_produtos;
# DISTINCT NÃO MOSTRA VALORES REPETIDOS
select distinct EMBALAGEM, TAMANHO FROM tabela_de_produtos;
select distinct EMBALAGEM, TAMANHO FROM tabela_de_produtos where SABOR = 'Laranja';

select distinct BAIRRO from tabela_de_clientes where CIDADE = 'Rio de Janeiro';