-- Group by e funções de agrupamento
SELECT sexo.tipo AS "Sexo", COUNT(*) AS "Quantidade de clientes" FROM cliente
INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
GROUP BY sexo.tipo;

SELECT evento.nome AS "Evento", SUM(lote.quantidade) AS "Total de ingressos" FROM evento
INNER JOIN ingresso ON(ingresso.fk_evento_idevento = evento.idevento)
INNER JOIN lote ON(lote.fk_ingresso_idingresso = ingresso.idingresso)
GROUP BY evento.nome ORDER BY evento.nome;

SELECT pontovenda.nome_ponto AS "Ponto de venda", COUNT(*) AS "Numero de eventos que usam o ponto"
FROM pontovenda
INNER JOIN evento_pontosvendas_possui ON(evento_pontosvendas_possui.fk_pontovenda_idpontovenda = pontovenda.idpontovenda)
GROUP BY pontovenda.nome_ponto ORDER BY pontovenda.nome_ponto;

SELECT genero.tipo AS "Genero", COUNT(*) AS "Quantidade eventos" FROM genero
INNER JOIN evento_genero_possui ON(evento_genero_possui.fk_genero_idgenero = genero.idgenero)
GROUP BY genero.tipo ORDER BY genero.tipo DESC;

SELECT cidade.local AS "Cidade", COUNT(*) AS "Quantidade eventos" FROM cidade
INNER JOIN localizacao ON(localizacao.fk_cidade_idcidade = cidade.idcidade)
INNER JOIN evento_local_acontece ON(evento_local_acontece.fk_localizacao_idlocal = localizacao.idlocal)
GROUP BY cidade.local ORDER BY cidade.local;

SELECT cliente.iduser AS "ID Cliente", cliente.nome AS "Nome do cliente", sexo.tipo AS "Sexo", COUNT(*) AS "Quantidade de contatos registrados"
FROM cliente
INNER JOIN cliente_contato ON(cliente_contato.fk_cliente_iduser = cliente.iduser)
INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
GROUP BY cliente.iduser, cliente.nome, sexo.tipo ORDER BY cliente.nome;

SELECT pagamento.forma AS "Forma de pagamento", COUNT(*) AS "Quantidade de vezes utilizados"
FROM pagamento
INNER JOIN contrato ON(contrato.fk_pagamento_idpagamento = pagamento.idpagamento)
GROUP BY pagamento.forma ORDER BY COUNT(*) DESC;

SELECT idpontovenda AS "ID ponto de venda", nome_ponto AS "Nome do ponto", COUNT(*) AS "Quantidade de contatos registrados"
FROM pontovenda
INNER JOIN pontovenda_contato ON(pontovenda_contato.fk_pontovenda_idpontovenda = pontovenda.idpontovenda)
GROUP BY idpontovenda, nome_ponto HAVING COUNT(*) > 1
ORDER BY idpontovenda;

SELECT cliente.nome AS "Cliente Gratis", COUNT(*) AS "Quantidade de eventos favoritados" FROM gratis
INNER JOIN cliente ON(cliente.iduser = gratis.fk_cliente_iduser)
INNER JOIN favorita_gratis_favorita ON(favorita_gratis_favorita.fk_gratis_fk_cliente_iduser = gratis.fk_cliente_iduser)
WHERE cliente.fk_sexo_idsexo = 1
GROUP BY cliente.nome HAVING cliente.nome ILIKE '%a%' AND COUNT(*) >= 2
ORDER BY cliente.nome;


