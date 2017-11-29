-- Consultas de self join e view

CREATE VIEW clientes_gratis AS
SELECT nome, userlogin AS login, data_nascimento_abertura AS "data de nascimento", sexo.tipo AS "sexo" 
FROM cliente
INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
INNER JOIN gratis ON(gratis.fk_cliente_iduser = cliente.iduser);

SELECT * FROM clientes_gratis;

CREATE VIEW clientes_premium AS
SELECT nome, userlogin AS login, data_nascimento_abertura AS "data de abertura ou abertura", sexo.tipo AS sexo 
FROM cliente
INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
INNER JOIN premium ON(premium.fk_cliente_iduser = cliente.iduser);

SELECT * FROM clientes_premium ORDER BY nome;

CREATE VIEW contratos_premium AS
SELECT cliente.nome AS "Cliente Premium", datainicial AS "Data inicial", meses AS "Periodo(meses)", 
quantidade AS "Eventos simultaneos", forma AS "Forma de pagamento" FROM contrato
INNER JOIN premium ON(premium.fk_cliente_iduser = contrato.fk_premium_fk_cliente_iduser)
INNER JOIN cliente ON(cliente.iduser = premium.fk_cliente_iduser)
INNER JOIN periodo ON(periodo.idperiodo = contrato.fk_periodo_idperiodo)
INNER JOIN pagamento ON(pagamento.idpagamento = contrato.fk_pagamento_idpagamento)
INNER JOIN eventossimultaneos ON(eventossimultaneos.ideventossimult = contrato.fk_eventossimultaneos_ideventossimult)
ORDER BY datainicial DESC, meses DESC, quantidade DESC, forma;

SELECT * FROM contratos_premium;

CREATE VIEW eventos_localizacao_cliente_responsavel AS
SELECT evento.nome AS "Evento", cliente.nome AS "Cliente Responsavel", estado.uf AS "Estado", cidade.local AS "Cidade", 
bairro.local AS "Bairro", rua, numero FROM evento_local_acontece
INNER JOIN evento ON(evento.idevento = evento_local_acontece.fk_evento_idevento)
INNER JOIN localizacao ON(localizacao.idlocal = evento_local_acontece.fk_localizacao_idlocal)
INNER JOIN cidade ON(cidade.idcidade = localizacao.fk_cidade_idcidade)
INNER JOIN bairro ON(bairro.idbairro = localizacao.fk_bairro_idbairro)
INNER JOIN estado ON(estado.idestado = localizacao.fk_estado_idestado)
INNER JOIN premium ON(premium.fk_cliente_iduser = evento.fk_premium_fk_cliente_iduser)
INNER JOIN cliente ON(cliente.iduser = premium.fk_cliente_iduser)
ORDER BY evento.nome;

SELECT * FROM eventos_localizacao_cliente_responsavel;

CREATE VIEW eventos_favoritados_pelos_clientes_gratis AS
SELECT cliente.nome AS "Cliente interessado", evento.nome AS "Evento" FROM favorita_gratis_favorita
INNER JOIN evento ON(evento.idevento = favorita_gratis_favorita.fk_evento_idevento)
INNER JOIN gratis ON(gratis.fk_cliente_iduser = favorita_gratis_favorita.fk_gratis_fk_cliente_iduser)
INNER JOIN cliente ON(cliente.iduser = gratis.fk_cliente_iduser)
ORDER BY cliente.nome;

SELECT * FROM eventos_favoritados_pelos_clientes_gratis;

CREATE VIEW evento_ingresso_lote AS
SELECT evento.nome AS "Evento", classificacao.tipo AS "Classificacao", numero AS "Numero do lote",
quantidade AS "Quantidade de ingressos", preco AS "Preço" FROM evento
INNER JOIN ingresso ON(ingresso.fk_evento_idevento = evento.idevento)
INNER JOIN classificacao ON(classificacao.idclassif = ingresso.fk_classificacao_idclassif)
INNER JOIN lote ON(lote.fk_ingresso_idingresso = ingresso.idingresso)
ORDER BY evento.nome, numero;

SELECT * FROM evento_ingresso_lote;