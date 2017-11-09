/* Consultas com operador LIKE */
SELECT nome, userlogin FROM cliente WHERE nome LIKE 'C%';
SELECT nome, userlogin FROM cliente WHERE userlogin ILIKE '%t%';
SELECT nome, userlogin, iduser FROM cliente WHERE userlogin LIKE '______' AND nome ILIKE '%a';
SELECT nome AS "Nome do evento", fk_premium_fk_cliente_iduser AS "ID Cliente Premium Responsável" FROM evento
WHERE nome LIKE 'A%' AND nome NOT ILIKE '%S';
SELECT descricao AS "gmail", fk_cliente_iduser AS "ID Cliente" FROM cliente_contato
WHERE fk_tipocontato_idtipocontato = 3 AND descricao LIKE '%@gmail%';
SELECT descricao AS "hotmail ou outlook", fk_pontovenda_idpontovenda AS "ID Ponto de Venda" FROM pontovenda_contato
WHERE fk_tipocontato_idtipocontato = 3 AND descricao ILIKE '%@hotmail%' OR descricao ILIKE '%@outlook%';



