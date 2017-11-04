



/* Partindo do pressuposto que o database e inserido os dados (create e insert) será feito o backup
das tabelas manualmente através de script sem o auxílio do software para execução dessa tarefa */

/* Criar tabelas novas para backup */
CREATE TABLE bairro2 AS SELECT * FROM bairro;
CREATE TABLE cidade2 AS SELECT * FROM cidade;
CREATE TABLE classificacao2 AS SELECT * FROM classificacao;
CREATE TABLE cliente2 AS SELECT * FROM cliente;
CREATE TABLE conta2 AS SELECT * FROM conta;
CREATE TABLE contato2 AS SELECT * FROM contato;
CREATE TABLE contatos_cliente_tem2 AS SELECT * FROM contatos_cliente_tem;
CREATE TABLE contatos_pontosvenda_tem2 AS SELECT * FROM contatos_pontosvenda_tem;
CREATE TABLE contrato2 AS SELECT * FROM contrato;
CREATE TABLE estado2 AS SELECT * FROM estado;
CREATE TABLE evento2 AS SELECT * FROM evento;
CREATE TABLE evento_genero_possui2 AS SELECT * FROM evento_genero_possui;
CREATE TABLE evento_local_acontece2 AS SELECT * FROM evento_local_acontece;
CREATE TABLE evento_pontosvendas_possui2 AS SELECT * FROM evento_pontosvendas_possui;
CREATE TABLE eventossimultaneos2 AS SELECT * FROM eventossimultaneos;
CREATE TABLE favorita_gratis_favorita2 AS SELECT * FROM favorita_gratis_favorita;
CREATE TABLE fisica2 AS SELECT * FROM fisica;
CREATE TABLE genero2 AS SELECT * FROM genero;
CREATE TABLE gratis2 AS SELECT * FROM gratis;
CREATE TABLE ingresso2 AS SELECT * FROM ingresso;
CREATE TABLE juridica2 AS SELECT * FROM juridica;
CREATE TABLE localizacao2 AS SELECT * FROM localizacao;
CREATE TABLE lote2 AS SELECT * FROM lote;
CREATE TABLE pagamento2 AS SELECT * FROM pagamento;
CREATE TABLE periodo2 AS SELECT * FROM periodo;
CREATE TABLE pontovenda2 AS SELECT * FROM pontovenda;
CREATE TABLE premium2 AS SELECT * FROM premium;
CREATE TABLE realizacao2 AS SELECT * FROM realizacao;
CREATE TABLE sexo2 AS SELECT * FROM sexo;
CREATE TABLE tipoconta2 AS SELECT * FROM tipoconta;
CREATE TABLE tipopessoa2 AS SELECT * FROM tipopessoa;

/* Exclusão das tabelas existentes anteriores */
DROP TABLE bairro CASCADE;
DROP TABLE cidade CASCADE;
DROP TABLE classificacao CASCADE;
DROP TABLE cliente CASCADE;
DROP TABLE conta;
DROP TABLE contato CASCADE;
DROP TABLE contatos_cliente_tem;
DROP TABLE contatos_pontosvenda_tem;
DROP TABLE contrato;
DROP TABLE estado CASCADE;
DROP TABLE evento_genero_possui;
DROP TABLE evento_local_acontece CASCADE;
DROP TABLE evento_pontosvendas_possui;
DROP TABLE eventossimultaneos;
DROP TABLE favorita_gratis_favorita;
DROP TABLE fisica;
DROP TABLE genero;
DROP TABLE gratis;
DROP TABLE ingresso CASCADE;
DROP TABLE juridica;
DROP TABLE localizacao CASCADE;
DROP TABLE lote;
DROP TABLE pagamento;
DROP TABLE periodo;
DROP TABLE pontovenda;
DROP TABLE premium CASCADE;
DROP TABLE realizacao;
DROP TABLE sexo;
DROP TABLE tipoconta;
DROP TABLE tipopessoa;


