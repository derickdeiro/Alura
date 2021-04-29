select distinct BAIRRO, NOME from tabela_de_clientes
union
select distinct BAIRRO, NOME from tabela_de_vendedores;

select distinct BAIRRO, NOME, 'Cliente' as TIPO from tabela_de_clientes
union
select distinct BAIRRO, NOME, 'Vendedor' as TIPO from tabela_de_vendedores;

select distinct BAIRRO, NOME, 'Cliente' as TIPO, CPF as IDENTIFICADOR from tabela_de_clientes
union
select distinct BAIRRO, NOME, 'Vendedor' as TIPO, MATRICULA as IDENTIFICADOR from tabela_de_vendedores;
