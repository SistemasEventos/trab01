-- Consultas utilizando o inner join(junção)
SELECT nome, userlogin, sexo.tipo FROM cliente
INNER JOIN sexo ON(cliente.fk_sexo_idsexo = sexo.idsexo)
ORDER BY nome;

SELECT cliente.nome AS "Cliente interessado", evento.nome AS "Evento" FROM favorita_gratis_favorita
INNER JOIN evento ON(evento.idevento = favorita_gratis_favorita.fk_evento_idevento)
INNER JOIN gratis ON(gratis.fk_cliente_iduser = favorita_gratis_favorita.fk_gratis_fk_cliente_iduser)
INNER JOIN cliente ON(cliente.iduser = gratis.fk_cliente_iduser)
ORDER BY cliente.nome;

SELECT cliente.nome AS "Cliente Responsavel", evento.nome AS "Evento divulgado" FROM evento
INNER JOIN premium ON(premium.fk_cliente_iduser = evento.fk_premium_fk_cliente_iduser)
INNER JOIN cliente ON(cliente.iduser = premium.fk_cliente_iduser)
ORDER BY cliente.nome;

SELECT evento.nome AS "Evento", cidade.local AS "Cidade", bairro.local AS "Bairro", rua, numero FROM evento_local_acontece
INNER JOIN evento ON(evento.idevento = evento_local_acontece.fk_evento_idevento)
INNER JOIN localizacao ON(localizacao.idlocal = evento_local_acontece.fk_localizacao_idlocal)
INNER JOIN cidade ON(cidade.idcidade = localizacao.fk_cidade_idcidade)
INNER JOIN bairro ON(bairro.idbairro = localizacao.fk_bairro_idbairro)
ORDER BY evento.nome;

SELECT evento.nome, genero.tipo FROM evento_genero_possui
INNER JOIN evento ON(evento.idevento = evento_genero_possui.fk_evento_idevento)
INNER JOIN genero ON(genero.idgenero = evento_genero_possui.fk_genero_idgenero)
ORDER BY genero.tipo DESC, evento.nome;

SELECT cliente.nome AS "Cliente Premium", datainicial, meses AS "Periodo(meses)", quantidade AS "Eventos simultaneos",
forma AS "Forma de pagamento" FROM contrato
INNER JOIN premium ON(premium.fk_cliente_iduser = contrato.fk_premium_fk_cliente_iduser)
INNER JOIN cliente ON(cliente.iduser = premium.fk_cliente_iduser)
INNER JOIN periodo ON(periodo.idperiodo = contrato.fk_periodo_idperiodo)
INNER JOIN pagamento ON(pagamento.idpagamento = contrato.fk_pagamento_idpagamento)
INNER JOIN eventossimultaneos ON(eventossimultaneos.ideventossimult = contrato.fk_eventossimultaneos_ideventossimult)
ORDER BY datainicial DESC, meses DESC, quantidade DESC, forma;




