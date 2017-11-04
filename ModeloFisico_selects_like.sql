/* Consultas com operador LIKE */
SELECT nome, userlogin FROM cliente WHERE nome LIKE 'C%';
SELECT nome, userlogin FROM cliente WHERE userlogin ILIKE '%t%';
SELECT nome, userlogin, iduser FROM cliente WHERE userlogin LIKE '______' AND nome ILIKE '%a';
SELECT nome, fk_premium_fk_cliente_iduser AS "Cliente Premium Responsável" FROM evento
WHERE nome LIKE 'A%' AND nome NOT ILIKE '%S';
SELECT descricao AS "gmail", fk_cliente_iduser AS "ID Cliente" FROM contatos_cliente_tem 
WHERE fk_contato_idtipocontato = 3 AND descricao LIKE '%@gmail%';
SELECT descricao AS "hotmail ou outlook", fk_pontovenda_idpontovenda AS "ID Ponto de Venda" FROM contatos_pontosvenda_tem
WHERE fk_contato_idtipocontato = 3 AND descricao ILIKE '%@hotmail%' OR descricao ILIKE '%@outlook%';


