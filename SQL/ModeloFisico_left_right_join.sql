-- select left right join
SELECT nome_ponto, cidade.local, bairro.local, rua, numero FROM localizacao
LEFT OUTER JOIN pontovenda ON(pontovenda.fk_localizacao_idlocal = localizacao.idlocal)
INNER JOIN cidade ON(cidade.idcidade = localizacao.fk_cidade_idcidade)
INNER JOIN bairro ON(bairro.idbairro = localizacao.fk_bairro_idbairro)
ORDER BY nome_ponto;

SELECT nome, cidade.local, bairro.local, rua, numero FROM evento_local_acontece
INNER JOIN evento ON(evento.idevento = evento_local_acontece.fk_evento_idevento)
RIGHT OUTER JOIN localizacao ON(localizacao.idlocal = evento_local_acontece.fk_localizacao_idlocal)
INNER JOIN cidade ON(cidade.idcidade = localizacao.fk_cidade_idcidade)
INNER JOIN bairro ON(bairro.idbairro = localizacao.fk_bairro_idbairro)
ORDER BY nome;

SELECT fk_cliente_iduser AS "ID cliente gratis" ,nome,userlogin,tipo AS "sexo" FROM cliente
INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
LEFT OUTER JOIN gratis ON(gratis.fk_cliente_iduser = cliente.iduser)
ORDER BY fk_cliente_iduser;


SELECT fk_cliente_iduser AS "ID cliente premium" ,nome,userlogin,tipo AS "sexo" FROM cliente
INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
LEFT OUTER JOIN premium ON(premium.fk_cliente_iduser = cliente.iduser)
ORDER BY fk_cliente_iduser;


SELECT fk_cliente_iduser AS "ID cliente premium pessoa fisica" ,nome,userlogin,tipo AS "sexo" FROM cliente
INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
INNER JOIN premium ON(premium.fk_cliente_iduser = cliente.iduser)
RIGHT OUTER JOIN fisica ON(premium.fk_cliente_iduser = fisica.fk_premium_fk_cliente_iduser)
ORDER BY fk_cliente_iduser;

