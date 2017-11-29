-- Consultas utilizando subconsultas

SELECT nome AS "Cliente gratis", userlogin, data_nascimento_abertura AS "data de nascimento",
EXTRACT(YEAR FROM age(data_nascimento_abertura)) AS idade, tipo AS "sexo"
FROM cliente
INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
WHERE cliente.iduser IN (
    SELECT fk_cliente_iduser FROM gratis
) ORDER BY idade DESC, sexo, nome;

SELECT nome AS "Cliente premium pessoa fisica", userlogin, data_nascimento_abertura AS "data de nascimento",
date_part('year', age(data_nascimento_abertura)) AS idade, tipo AS "sexo"
FROM cliente
INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
WHERE cliente.iduser IN (
    SELECT fk_premium_fk_cliente_iduser FROM fisica
) ORDER BY idade DESC, sexo, nome;

SELECT nome AS "Cliente premium pessoa juridica", userlogin, data_nascimento_abertura AS "data de nascimento",
date_part('year', age(data_nascimento_abertura)) AS idade
FROM cliente
WHERE cliente.iduser IN (
    SELECT fk_premium_fk_cliente_iduser FROM juridica
) ORDER BY idade DESC, nome;

SELECT nome AS "Cliente gratis", descricao AS "Contato" FROM cliente
INNER JOIN cliente_contato ON(cliente_contato.fk_cliente_iduser = cliente.iduser)
WHERE cliente_contato.fk_cliente_iduser NOT IN (
    SELECT fk_cliente_iduser FROM premium
) ORDER BY nome;

SELECT nome AS "Cliente premium", descricao AS "Contatos(Somente Telefone e Twitter)" FROM cliente
INNER JOIN cliente_contato ON(cliente_contato.fk_cliente_iduser = cliente.iduser)
WHERE cliente.iduser NOT IN (
    SELECT fk_cliente_iduser FROM gratis
) AND
cliente_contato.fk_tipocontato_idtipocontato IN (
    SELECT idtipocontato FROM tipocontato
    WHERE idtipocontato = 1 OR idtipocontato = 4
) ORDER BY nome, descricao;

SELECT nome_ponto AS "Ponto de venda", cep AS "CEP", uf AS "Estado",
cidade.local AS "Cidade", bairro.local AS "Bairro" FROM pontovenda
INNER JOIN localizacao ON(localizacao.idlocal = pontovenda.fk_localizacao_idlocal)
INNER JOIN estado ON(estado.idestado = localizacao.fk_estado_idestado)
INNER JOIN cidade ON(cidade.idcidade = localizacao.fk_cidade_idcidade)
INNER JOIN bairro ON(bairro.idbairro = localizacao.fk_bairro_idbairro)
WHERE localizacao.fk_estado_idestado IN (
    SELECT idestado FROM estado WHERE idestado = 1 /* Somente situado no ES */
) AND
localizacao.fk_cidade_idcidade IN (
  SELECT idcidade FROM cidade WHERE idcidade <> 2 /* Nao esta em Vitoria */
) ORDER BY nome_ponto;