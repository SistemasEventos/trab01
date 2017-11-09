/* Consultas com operadores lógicos, aritméticos e campos renomeados */

/* Operadores lógicos */
SELECT nome, userlogin FROM cliente WHERE fk_sexo_idsexo = 2 OR fk_sexo_idsexo = 3; /* Pegando onde o sexo é feminino e empresa */
SELECT iduser, nome, userlogin FROM cliente WHERE data_nascimento_abertura < '1987-01-01' AND fk_sexo_idsexo = 3;
SELECT iduser, nome, data_nascimento_abertura FROM cliente WHERE NOT fk_sexo_idsexo = 3; /* Nao eh empresa */

/* Operadores aritméticos */
SELECT fk_ingresso_idingresso, preco+20 AS "preço multa" FROM lote WHERE fk_ingresso_idingresso = 1;
SELECT fk_ingresso_idingresso, CAST(preco*0.5 AS NUMERIC(5,2)) AS "preço estudante" FROM lote;
SELECT fk_ingresso_idingresso, CAST(preco/3 AS NUMERIC(5,2)) AS "Liquidação" FROM lote;

/* Renomeando colunas */
SELECT descricao AS "Telefone", fk_cliente_iduser AS "ID Cliente" FROM cliente_contato WHERE fk_tipocontato_idtipocontato = 1;
SELECT descricao AS "Twitter", fk_cliente_iduser AS "ID Cliente" FROM cliente_contato WHERE fk_tipocontato_idtipocontato = 4;