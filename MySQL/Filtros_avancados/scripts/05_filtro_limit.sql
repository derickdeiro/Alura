select * from tabela_de_clientes;

# limit sempre vai ao final do comando // limita os 5 primeiros
select * from tabela_de_clientes limit 5;
# começa a partir do segundo // Para utilizar a partir do primeiro, começe com 0
select * from tabela_de_clientes limit 2,5;

# EXERCICIO
select * from notas_fiscais where DATA_VENDA = '2017-01-01' LIMIT 10;