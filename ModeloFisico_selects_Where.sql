/* Consultas (select) com filtros (where) */ 
SELECT * FROM cliente WHERE iduser > 10;
SELECT nome, data_nascimento_abertura FROM cliente WHERE fk_sexo_idsexo = 1; /* 1 = masculino */
SELECT nome, userlogin FROM cliente WHERE fk_conta_idconta = 1; /* Usuarios de conta normal */
SELECT fk_premium_fk_cliente_iduser, datainicial FROM contrato WHERE fk_periodo_idperiodo = 4; /* Clientes que assinam por três anos */
SELECT * FROM evento WHERE data_divulgacao > '2017-10-01';
SELECT numero, cep, rua FROM localizacao WHERE fk_cidade_idcidade = 2; /* locais situados em Vitória */
SELECT fk_pontovenda_idpontovenda, descricao FROM contatos_pontosvenda_tem WHERE fk_contato_idtipocontato = 2; /* Contatos que tem facebook */
SELECT fk_pontovenda_idpontovenda, descricao FROM contatos_pontosvenda_tem WHERE fk_contato_idtipocontato = 1; /* Contatos que tem telefone */


