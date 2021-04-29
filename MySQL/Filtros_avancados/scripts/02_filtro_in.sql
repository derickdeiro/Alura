select * from tabela_de_produtos where SABOR = 'manga' or TAMANHO = '470 ml';
select * from tabela_de_produtos where SABOR = 'manga' and TAMANHO = '470 ml';
select * from tabela_de_produtos where NOT (SABOR = 'manga' and TAMANHO = '470 ml');
select * from tabela_de_produtos where NOT (SABOR = 'manga' OR TAMANHO = '470 ml');
select * from tabela_de_produtos where SABOR = 'manga' OR not (TAMANHO = '470 ml');

select * from tabela_de_produtos where SABOR IN ('manga', 'laranja');

select * from tabela_de_clientes where CIDADE in ('Rio de Janeiro','São Paulo') and IDADE >= 20;
select * from tabela_de_clientes where CIDADE in ('Rio de Janeiro','São Paulo') and (IDADE >= 20 and IDADE <= 22);