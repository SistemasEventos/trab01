-- Atualização de informações do database criado
UPDATE cliente_contato SET descricao = 'julianlimabarbosa@hotmail.com' WHERE idcontatocliente = 2;
UPDATE cliente_contato SET descricao = 'julianlimabarbosa@yahoo.com.br' WHERE idcontatocliente = 101;
UPDATE cliente_contato SET descricao = '27999562314' WHERE idcontatocliente = 81;
UPDATE realizacao SET data = '2017-12-20' WHERE fk_evento_local_acontece_ideventolocal = 10;
UPDATE cliente SET nome = 'Gabriele Souza Carvalho' WHERE iduser = 4;
UPDATE genero SET tipo = 'Bellezza' WHERE idgenero = 11;

-- SELECTS DOS UPDATES CRIADOS
SELECT * FROM cliente_contato WHERE idcontatocliente = 101 OR idcontatocliente = 2 OR idcontatocliente = 81;
SELECT * FROM realizacao WHERE fk_evento_local_acontece_ideventolocal = 10;
SELECT * FROM cliente WHERE iduser = 4;
SELECT * FROM genero WHERE idgenero = 11;

-- Deleção de informações do database criado
DELETE FROM cliente_contato WHERE idcontatocliente = 7;
SELECT * FROM cliente_contato;

DELETE FROM cliente_contato WHERE idcontatocliente = 42;
SELECT * FROM cliente_contato WHERE idcontatocliente > 39 AND idcontatocliente < 50;

DELETE FROM cliente_contato WHERE idcontatocliente = 66;
SELECT * FROM cliente_contato WHERE idcontatocliente >= 60 AND idcontatocliente <= 70;

DELETE FROM pontovenda_contato WHERE idcontatopontovenda = 6;
SELECT * FROM pontovenda_contato WHERE idcontatopontovenda < 10;

DELETE FROM pontovenda_contato WHERE idcontatopontovenda = 8;
SELECT * FROM pontovenda_contato WHERE idcontatopontovenda > 5;

DELETE FROM lote WHERE idlote = 3;
SELECT * FROM lote WHERE idlote < 10;

DELETE FROM realizacao WHERE fk_evento_local_acontece_ideventolocal = 5 AND horario = '18:00';
SELECT * FROM realizacao WHERE fk_evento_local_acontece_ideventolocal >= 4;