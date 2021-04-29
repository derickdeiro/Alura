select * from tabela_de_vendedores;
select * from notas_fiscais;

select * from tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON a.MATRICULA = b.MATRICULA;