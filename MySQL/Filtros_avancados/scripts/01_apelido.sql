use sucos_vendas;

select * from tabela_de_clientes;

select CPF as IDENTIFICADOR, NOME as CLIENTE from tabela_de_clientes;

select * from tabela_de_produtos;

select * from tabela_de_produtos where EMBALAGEM <> 'PET';