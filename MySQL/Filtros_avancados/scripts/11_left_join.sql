select * from tabela_de_clientes;

select distinct A.CPF, A.NOME, B.CPF from tabela_de_clientes A inner join notas_fiscais B on A.CPF = B.CPF;

select distinct A.CPF, A.NOME, B.CPF from tabela_de_clientes A LEFT join notas_fiscais B on A.CPF = B.CPF;

# Tras todos os CPF da Esquerda e filtra apenas o que é NULL da Direita
select distinct A.CPF, A.NOME, B.CPF from tabela_de_clientes A LEFT join notas_fiscais B on A.CPF = B.CPF
where B.CPF is NULL;