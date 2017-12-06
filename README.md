# TRABALHO 01:  Sistemas de Eventos
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Guilherme Bodart: guilhermebodart73@gmail.com <br>
Harã Heique: heikacademicos@hotmail.com <br>
Edmilton Junior: junior_edmilton@outlook.com <br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
O objetivo principal é divulgar eventos e "baladas" de qualquer tipo/gênero, porém de maneira especial, dado que existem redes sociais que já realizam isso (Facebook). No caso seriam feitas notificações e possivelmente/futuramente uma "mini rede social", o qual poderiam ser adicionados amigos e auxiliar ainda mais nas notificações. Entretanto o intuito é a divulgação de forma mais eficaz possível para auxiliar pessoas de qualquer meio social, seja ele acadêmico, religioso, festeiro entre outros. A ideia futura de implementar a "mini rede social" é para o sistema tenha uma interação entre as pessoas do meio social em que pertence, o qual proporciona tanto dar mais "vida" ao sistema quanto aumentar sua funcionalidade. Isso acaba sendo algo promissor, pois não precisa de mostrar estimativas para demonstrar o sucesso que redes sociais possuem.

### 3.MINI-MUNDO<br>

Sistema de eventos

O sistema consiste em divulgar eventos em geral na região da Grande
Vitória. Esses eventos são de qualquer meio social, o qual traz maior diversidade na
aplicação. Como consequência do bom uso do sistema, as organizadoras de
eventos terão menores custos com publicidade (outdoors, panfletos, jornais,
comerciais de TV e afins). <br>
O público-alvo do sistema são as organizadoras, empresas e pessoas que
desejam divulgar seus eventos, além do público que tem interesse em ir aos
eventos divulgados. <br>
A proposta é que o sistema possua aplicação em plataforma web e mobile
devido a grande popularidade e na maior flexibilidade no uso do sistema. <br>
Para que as organizadoras de eventos utilizem o sistema devem se cadastrar
numa conta chamada premium realizando a contratação, o qual são escolhidos o
período, quantidade de eventos que podem ser divulgados simultaneamente e
forma de pagamento. A organizadora tem o total direito de divulgar os eventos da
maneira desejada e atualizar informações sempre que necessário. <br>
Por outro lado, o público interessado nos eventos possuem cadastro diferente
das organizadoras, que é chamada conta normal, dado que seu intuito é ir aos
eventos. Além disso o cadastro é grátis, o qual eles possuem uma gama de
atrações com todas as informações disponibilizadas pelas organizadoras. Podem
selecionar eventos na sua lista de favoritos, onde fica atualizado sobre todas as
informações, inclusive recebem notificações caso haja alterações por
eventualidades. Além disso, há possibilidades da integração de uma “mini rede
social”, cujo objetivo principal são as interações entre os usuários do sistema. <br>
O sistema é promissor devido o contexto em que vivemos atualmente, onde
os aparelhos mobile juntamente com os aplicativos da plataforma ganham força
cada vez mais no mercado. Além disso, com o apoio contínuo das organizadoras
dos eventos em geral e paralelamente no crescimento do sistema, tornando-o
popular, acarretam nas possíveis reduções nos custos de publicidade, onde ambos
se beneficiam do fato.



### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://s1.postimg.org/1ug578xnu7/teste.png?raw=true "MOCKUPS")

#### 4.1 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual
    c) Após criada esta tabela não deve ser modificada, pois será comparada com a tabela final na conclusão do trabalho
    
![Link do tabela](https://github.com/SistemasEventos/trab01/blob/master/Tabela_Sistemas_Eventos_Antiga.xlsx)
    
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    Relatório de eventos realizados no mês, ano com local, horário, preço, gênero e eventos a acontecer.
    
    b) Crie uma lista com os 10 principais relatórios que podero ser obtidos por meio do sistema proposto!
    Relatórios:
    * Histórico de eventos favoritados destinado para os usuários conta normal(desejam participar do evento) que se renova anualmente;
    * Quantidade favoritos para cada evento divulgado pelas organizadoras;
    * Quantidade de usuários conta normal, conta premium pessoa física e conta premium pessoa jurídica;
    * Modelo de contratos mais requisitados;
    * Gêneros de eventos mais requisitados pelos usuários conta normal;
    * Locais(cidade, bairro e etc) de eventos mais favoritados;
    * Preços de eventos mais procurados pelos usuários conta normal;
    * Relação da quantidade de pessoas por sexo que favoritam os eventos por gênero;
    * Tipo de busca de eventos mais realizada(por gênero, localização, nome, data ou preço);
    * Estatística de buscas de eventos(mensalmente e anualmente);
    
>## Marco de Entrega 01 em: (Data definida no cronograma)<br>

### 5.MODELO CONCEITUAL<br>
      
![Alt text](https://image.ibb.co/fuaKtG/Modelo_Conceitual.png)
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    
#### 5.1 Validação do Modelo Conceitual
    Mapa de Ocorrencias: Caio Kinnup, Lucas Erlacher e Tarcísio Bruni
    RodoBus: Hugo Ramalho, Maria Luiza e Vitor Salzman

#### 5.2 DECISÕES DE PROJETO
 
    Cliente: No projeto foi decidido que tem dois tipos de cliente, o Grátis, que é voltado para o público que tem interesse em        	
    participar dos eventos, e o Premium, que é voltado para pessoas físicas e jurídicas que desejam divulgar eventos.

    período: Esse campo é pré-definido com valores fixos para facilitar e padronizar o contrato, de forma que o cliente só pode escolher 
    tais valores.

    evento simultâneos: Assim como período também é pré-definido exatamente com o mesmo intuito.

    Contato: Foi decidido criar uma tabela de contatos para ter mais flexibilidade na comunicação com os clientes, principalmente o    
    Premium. Outro ponto de decisão é que o cliente Premium tem mais formas de contato que Grátis, que só possui o email como forma de  
    contato. Outra decisão que também são armazenados contatos dos pontos de vendas dos ingressos do evento.

    Localização: A localização se tornou uma entidade, com intuito de melhor organização e consistência no Banco, onde é multivalorado e 
    composto para os eventos, onde pode ocorrer em mais de um local, ou no caso sendo somente composto, onde indica o local referente ao 
    ponto de venda.

    gênero: É uma característica do evento que do evento, onde é multivalorado, ou seja, um evento pode ter mais de um gênero. Isso foi 
    realizado para que o cliente Premium tenha maior flexibilidade na divulgação do evento.

    preço: O preço de entrada para os eventos divulgados através do sistema não é algo simples para que o cliente divulgue de maneira   
    flexível e consistente. Isso ocorre, pois o evento possui um ingresso e esse uma ou mais classificações (pista, arquibancada,       
    camarote, único), onde cada uma tem lotes (1º lote, 2º lote e afins) e cada lote um preço específico e determinado pelo cliente     
    Premium.


#### 5.3 DESCRIÇÃO DOS DADOS 
    
	BAIRRO: Tabela que armazena id e nome dos Bairros
	idBairro: Campo que armazena o id de um bairro
	local: Campo que armazena o nome de um bairro

	CIDADE: Tabela que armazena id e nome das Cidades.
	idCidade: Campo que armazena o id de uma cidade
	local: Campo que armazena o nome de uma cidade

	CLASSIFICAÇÃO: Tabela que armazena a classificação dos ingressos.
	idClassif: Campo que armazena o id da classificação do ingresso
	tipo: Campo que armazena  o tipo do ingresso. Ex.: pista, único, arquibancada, camarote e afins.

	CLIENTE: Tabela que armazena as informações relacionadas ao cliente.
	idUser: Campo que armazena a identificação(id) de cada novo conta criada
	nome: Campo que armazena o nome do cliente
	userLogin: Campo que armazena o login do cliente
	idSexo: Campo que armazena o id do sexo do cliente
	senha: Campo que armazena a senha do cliente criptografada
	data_nascimeno_abertura: Campo que armazena a data de nascimento ou de abertura do cliente (caso seja empresa)	

	CLIENTE_CONTATO: Tabela que armazena o contato dos clientes.
	idContatoCliente: Campo que armazena os id dos contatos de todos os clientes
	idUser: Campo que armazena o id do cliente
	idTipoContato: Campo que armazena o id do tipo de contato do cliente
	descricao: Campo que armazena a descrição da forma de contato do cliente

	CONTRATO: Tabela que armazena informações dos contratos feitos entre clientes premium e o sistema prestadora do serviço.
	idContrato: Campo que armazena o id de cada novo contrato realizado
	idEventosSimult: campo que armazena o id da quantidade de eventos simultâneos contratados
	idPeriodo: Campo que armazena o id da quantidade de tempo contratado
	idPagamento: Campo que armazena o id da forma de pagamento escolhida pelo cliente
	dataInicial: Campo que armazena a data em que o contrato entrou em vigor
	idUser: Campo que armazena o id do usuário premium contratante

	ESTADO: Tabela que armazena as id e siglas dos Estados.
	idEstado: Campo que armazena o id de um Estado
	UF: Campo que armazena a sigla de um Estado

	EVENTO: Tabela que armazena as informações relacionadas aos eventos.
	idEvento: Campo que armazena o id de cada novo evento criado
	nome: Campo que armazena o nome do evento criado
	data_divulgacao: Campo que armazena a data que o evento foi publicado no sistema.
	idUser: Campo que armazena o id do cliente que divulgou o evento criado.

	EVENTO_GENERO: Tabela que armazena o gênero dos eventos.
	idEvento: Campo que armazena o id de um evento
	idGenero: Campo que armazena o id do gênero de um evento

	EVENTO_LOCAL: Tabela que armazena o local que o eventos será realizado.
	idEventoLocal: Campo que armazena o id da combinação do idEvento com idLocal, como uma espécie de Surrogate Key.
	idEvento: Campo que armazena o id de um evento
	idLocal: Campo que armazena o id de um local

	EVENTOS_PONTOSVENDAS: Tabela que armazena dados dos locais em que serão vendidos os ingressos de determinado evento
	idEvento: Campo que armazena o id do evento
	idPontoVenda: Campo que armazena o id de um ponto de venda
	data: Campo que armazena o dia em que o ingresso foi divulgado no dado ponto de venda.

	EVENTOSSIMULTANEOS: Tabela que armazena diferentes quantidade de eventos que o contratante pode divulgar simultaneamente.
	idEventosSimult: Campo que armazena o id da quantidade de eventos simultâneos que o cliente pode contratar
	quantidade: Campo que armazena a quantidade de eventos que o cliente pode divulgar simultaneamente

	FAVORITA_GRATIS: Tabela que armazena os eventos favoritados pelos usuarios grátis.
	idUser: Campo que armazena o id do usuário
	idEvento: Campo que armazena o id do evento favoritado
	data_favoritado: Campo que armazena a data em que determinado evento foi favoritado

	FISICA: Armazena dados dos clientes premium do tipo Pessoa Física. Nota-se que é uma especialização de Premium, onde herdam suas características.
	idUser: Campo que armazena o id da conta do cliente.
	cpf: Armazena o Cadastro de Pessoa Física do cliente.

	GENERO: Tabela que armazena diferentes tipos de gênero para os eventos.
	idGenero: Campo que armazena os ids dos gêneros dos eventos
	tipo: Campo que armazena o gênero do evento

	GRATIS: Armazena dados dos clientes normal/grátis. Nota-se que é uma especialização de Cliente. Logo herda suas características.
	idUser: Campo que identifica o id da conta do cliente.

	INGRESSO: Tabela que armazena dados dos ingressos.
	idIngresso: Campo que armazena o id dos ingressos disponibilizados
	idClassif: Campo que armazena o id da classificação do ingresso
	idEvento: Campo que armazena o id do evento

	JURIDICA: Armazena dados dos clientes premium do tipo Pessoa Jurídica. Nota-se que é uma especialização de Premium, onde herdam suas características.
	idUser: Campo que armazena o id da conta do cliente.
	cnpj: Armazena o Cadastro Nacional de Pessoa Jurídica.

	LOCALIZACAO: Tabela que armazena dados da localização dos eventos e dos pontos de venda dos ingressos.
	idLocal: Campo que armazena o id de um endereço
	cep: Campo que armazena o cep de um endereço
	rua: Campo que armazena o nome de uma rua
	idEstado: Campo que armazena o id de um estado
	idBairro: Campo que armazena o id de um bairro
	numero: Campo que armazena o numero do estabelecimento

	LOTE: Tabela que armazena informações de preço, quantidade de ingressos do lote.
	idLote: Campo que armazena o id de cada novo lote de ingresso disponibilizado
	idIngresso: Campo que armazena o id do ingresso de um dado evento
	numero: Campo que armazena o numero do lote dos ingressos
	quantidade: Campo que armazena a quantidade de ingressos disponibilizados 
	preco: Campo que armazena o preço unitário dos ingressos de determinado lote

	PAGAMENTO: Tabela que armazena diferentes modos de pagamento.
	idPagamento: Campo que armazena o id de diferentes formas de pagamento
	forma: Campo que armazena a forma de pagamento específica

	PERIODO: Tabela que armazena diferentes períodos para a duração do contrato.
	idPeriodo: Campo que armazena o id de diferentes períodos de duração do contrato.
	meses: Campo que armazena diferentes quantidades de tempo para o contrato.

	PONTOVENDA: Tabela que armazena informações dos pontos de vendas de ingressos.
	idPontoVenda: Campo que armazena o id de um ponto de venda
	idLocal: Campo que armazena o id do endereço do ponto de venda
	nome_ponto: Campo que armazena o nome do ponto de venda

	PONTOVENDA_CONTATO: Tabela que armazena o contato dos pontos de vendas.
	idContatoPontoVenda: Campo que armazena os ids dos contatos de todos os pontos de vendas
	idPontoVenda: Campo que armazena o id do ponto de venda
	idTipoContato: Campo que armazena o id do tipo de contato do ponto de venda
	descricao: Campo que armazena descrição da forma de contato do ponto de venda

	PREMIUM: Armazena dados de todas contas dos clientes premium. Nota-se que é uma especialização do Cliente, onde herdam suas características.
	idUser: Campo que armazena o id da conta do cliente

	REALIZACAO: Tabela que armazena dados de data, horário e localização dos eventos.
	idEventoLocal: Campo que armazena o id do local em que o evento será realizado
	data: Campo que armazena a data em que o evento acontecerá
	horario: Campo que armazena a hora que o evento iniciará

	SEXO: Tabela que armazena diferentes tipos de sexo.
	idSexo: Campo que armazena o id de cada sexo
	tipo: Campo que armazena o sexo

	TIPOCONTATO: Tabela que armazena id e tipo de forma de contatar os clientes e os pontos de vendas.
	idTipoContato: Campo que armazena o id do tipo de contato
	tipo: Campo que armazena o tipo de contato do cliente. Ex.: Facebook, telefone, e-mail e afins.


### 6	MODELO LÓGICO<br>
        
![Alt text](https://image.ibb.co/mx1sDG/Modelo_Logico.png)

>## Marco de Entrega 02 em: (Data definida no cronograma)<br>

### 7	MODELO FÍSICO<br>
        
![Link do Modelo Físico](https://raw.githubusercontent.com/SistemasEventos/trab01/master/SQL/ModeloFisico.sql)
                  
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES

![Link do Insert do Modelo Físico](https://raw.githubusercontent.com/SistemasEventos/trab01/master/SQL/ModeloFisico_inserts.sql)

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS

![Link do Script para criação + inserção de dados](https://raw.githubusercontent.com/SistemasEventos/trab01/master/SQL/ModeloFisico_construcao_inserts.sql)

        
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS

![Link do Script para drops de tabelas existentes](https://raw.githubusercontent.com/SistemasEventos/trab01/master/SQL/ModeloFisico_drops_construcao_inserts.sql)


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
     
![Link dos Select para as tabelas existentes](https://raw.githubusercontent.com/SistemasEventos/trab01/master/SQL/ModeloFisico_selects.sql)

Imagens dos Select de todas as tabelas do sistema


	SELECT * FROM classificacao;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/1.PNG)

	SELECT * FROM genero;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/2.PNG)

	SELECT * FROM pagamento;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/3.PNG)

	SELECT * FROM eventossimultaneos;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/4.PNG)

	SELECT * FROM periodo;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/5.PNG)

	SELECT * FROM estado;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/6.PNG)

	SELECT * FROM cidade;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/7.PNG)

	SELECT * FROM bairro;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/8.PNG)

	SELECT * FROM sexo;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/9.PNG)

	SELECT * FROM cliente;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/10.PNG)

	SELECT * FROM gratis;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/11.PNG)

	SELECT * FROM premium;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/12.PNG)

	SELECT * FROM fisica;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/13.PNG)

	SELECT * FROM juridica;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/14.PNG)

	SELECT * FROM contrato;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/15.PNG)

	SELECT * FROM cliente_contato;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/16.PNG)

	SELECT * FROM evento;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/17.PNG)

	SELECT * FROM ingresso;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/18.PNG)

	SELECT * FROM lote;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/19.PNG)

	SELECT * FROM evento_genero_possui;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/20.PNG)

	SELECT * FROM localizacao;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/21.PNG)

	SELECT * FROM pontovenda;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/22.PNG)

	SELECT * FROM evento_local_acontece;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/23.PNG)

	SELECT * FROM realizacao;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/24.PNG)

	SELECT * FROM evento_pontosvendas_possui;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/25.PNG)

	SELECT * FROM pontovenda_contato;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/26.PNG)

	SELECT * FROM favorita_gratis_favorita;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/27.PNG)

	SELECT * FROM tipocontato;
![Alt text](https://github.com/SistemasEventos/trab01/blob/master/images/9.1_Consulta_Todas_Tabelas/28.PNG)


#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
     
![Link do Script para as consultas com filtros where](https://raw.githubusercontent.com/SistemasEventos/trab01/master/SQL/ModeloFisico_selects_Where.sql)

Imagens das consultas com filtro where

	SELECT * FROM cliente WHERE iduser > 10;
![Alt text](https://image.ibb.co/dc5zdG/1.png)

	SELECT nome, data_nascimento_abertura FROM cliente WHERE fk_sexo_idsexo = 1; /* 1 = masculino */
![Alt text](https://image.ibb.co/ffm5JG/2.png)

	SELECT nome, userlogin FROM cliente WHERE fk_sexo_idsexo = 3; /* Usuários que são empresas */
![Alt text](https://image.ibb.co/enJwQw/3.png)

	SELECT fk_premium_fk_cliente_iduser, datainicial FROM contrato WHERE fk_periodo_idperiodo = 4; /* Clientes que assinam por três anos */
![Alt text](https://image.ibb.co/epqXyG/4.png)

	SELECT * FROM evento WHERE data_divulgacao > '2017-10-01';
![Alt text](https://image.ibb.co/mW21sb/5.png)

	SELECT numero, cep, rua FROM localizacao WHERE fk_cidade_idcidade = 2; /* locais situados em Vitória */
![Alt text](https://image.ibb.co/hnAbQw/6.png)

	SELECT fk_pontovenda_idpontovenda, descricao FROM pontovenda_contato WHERE fk_tipocontato_idtipocontato = 2; /* Contatos que tem facebook */
![Alt text](https://image.ibb.co/eiknXb/7.png)

	SELECT fk_pontovenda_idpontovenda, descricao FROM pontovenda_contato WHERE fk_tipocontato_idtipocontato = 1; /* Contatos que tem telefone */
![Alt text](https://image.ibb.co/hDcO5w/8.png)


	#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 6)

![Link do Script para as consultas com operadores logicos, aritmeticos e campos renomeados](https://raw.githubusercontent.com/SistemasEventos/trab01/master/SQL/ModeloFisico_selects_ope.Logico_Aritmetico_camp.renomeados.sql)

Imagens das consultas com operadores logicos, aritmeticos e campos renomeados

	SELECT nome, userlogin FROM cliente WHERE fk_sexo_idsexo = 2 OR fk_sexo_idsexo = 3; /* Pegando onde o sexo é feminino e empresa */
![Alt text](https://image.ibb.co/eiJxhb/1.png)

	SELECT iduser, nome, userlogin FROM cliente WHERE data_nascimento_abertura < '1987-01-01' AND fk_sexo_idsexo = 3;
![Alt text](https://image.ibb.co/g98xhb/2.png)

	SELECT iduser, nome, data_nascimento_abertura FROM cliente WHERE NOT fk_sexo_idsexo = 3; /* Nao eh empresa */
![Alt text](https://image.ibb.co/kAsONb/3.png)

	SELECT fk_ingresso_idingresso, preco+20 AS "preço multa" FROM lote WHERE fk_ingresso_idingresso = 1;
![Alt text](https://image.ibb.co/iFuETG/4.png)

	SELECT fk_ingresso_idingresso, CAST(preco*0.5 AS NUMERIC(5,2)) AS "preço estudante" FROM lote;
![Alt text](https://image.ibb.co/kgKRaw/5.png)

	SELECT fk_ingresso_idingresso, CAST(preco/3 AS NUMERIC(5,2)) AS "Liquidação" FROM lote;
![Alt text](https://image.ibb.co/mV7CFw/6.png)

	SELECT descricao AS "Telefone", fk_cliente_iduser AS "ID Cliente" FROM cliente_contato WHERE fk_tipocontato_idtipocontato = 1;
![Alt text](https://image.ibb.co/h8Ymaw/7.png)

	SELECT descricao AS "Twitter", fk_cliente_iduser AS "ID Cliente" FROM cliente_contato WHERE fk_tipocontato_idtipocontato = 4;
![Alt text](https://image.ibb.co/jLURaw/8.png)

     
	#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 4) <br>

![Link do Script para as consultas com operador like](https://raw.githubusercontent.com/SistemasEventos/trab01/master/SQL/ModeloFisico_selects_like.sql)

Imagens das consultas com operador like

	SELECT nome, userlogin FROM cliente WHERE nome LIKE 'C%';
![Alt text](https://image.ibb.co/cjwxFw/1.png)

	SELECT nome, userlogin FROM cliente WHERE userlogin ILIKE '%t%';
![Alt text](https://image.ibb.co/gadYoG/2.png)

	SELECT nome, userlogin, iduser FROM cliente WHERE userlogin LIKE '______' AND nome ILIKE '%a';
![Alt text](https://image.ibb.co/nAhF2b/3.png)

	SELECT nome AS "Nome do evento", fk_premium_fk_cliente_iduser AS "ID Cliente Premium Responsável" FROM evento WHERE nome LIKE 'A%' AND nome NOT ILIKE '%S';
![Alt text](https://image.ibb.co/bFchhb/4.png)

	SELECT descricao AS "gmail", fk_cliente_iduser AS "ID Cliente" FROM cliente_contat WHERE fk_tipocontato_idtipocontato = 3 AND descricao LIKE '%@gmail%';
![Alt text](https://image.ibb.co/jrUjvw/5.png)

	SELECT descricao AS "hotmail ou outlook", fk_pontovenda_idpontovenda AS "ID Ponto de Venda" FROM pontovenda_contato WHERE fk_tipocontato_idtipocontato = 3 AND descricao ILIKE '%@hotmail%' OR descricao ILIKE '%@outlook%';
![Alt text](https://image.ibb.co/cgvPvw/6.png)


	>## Marco de Entrega 03 em: (Data definida no cronograma)<br>


	#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6) <br>
![Link do Script para os upgrades e deletes do banco de dados](https://raw.githubusercontent.com/SistemasEventos/trab01/master/SQL/Modelo_Fisico_Update_Del.sql)

Imagens dos updates(atualizações) e deletes (deleções)

	UPDATE cliente_contato SET descricao = 'julianlimabarbosa@hotmail.com' WHERE idcontatocliente = 2;
	UPDATE cliente_contato SET descricao = 'julianlimabarbosa@yahoo.com.br' WHERE idcontatocliente = 101;
	UPDATE cliente_contato SET descricao = '27999562314' WHERE idcontatocliente = 81;
	UPDATE realizacao SET data = '2017-12-20' WHERE fk_evento_local_acontece_ideventolocal = 10;
	UPDATE cliente SET nome = 'Gabriele Souza Carvalho' WHERE iduser = 4;
	UPDATE genero SET tipo = 'Bellezza' WHERE idgenero = 11;
![Alt text](https://image.ibb.co/g6oCCm/updates.png)

	SELECT * FROM cliente_contato WHERE idcontatocliente = 101 OR idcontatocliente = 2 OR idcontatocliente = 81;
![Alt text](https://image.ibb.co/gzhpsm/1_1.png)

	SELECT * FROM realizacao WHERE fk_evento_local_acontece_ideventolocal = 10;
![Alt text](https://image.ibb.co/eHrhCm/2_1.png)

	SELECT * FROM cliente WHERE iduser = 4;
![Alt text](https://image.ibb.co/c12YJR/3_1.png)

	SELECT * FROM genero WHERE idgenero = 11;
![Alt text](https://image.ibb.co/dxfW56/4_1.png)

	DELETE FROM cliente_contato WHERE idcontatocliente = 7; SELECT * FROM cliente_contato;
![Alt text](https://image.ibb.co/iFaaXm/delete_1_1.png)

	DELETE FROM cliente_contato WHERE idcontatocliente = 42; SELECT * FROM cliente_contato WHERE idcontatocliente > 39 AND idcontatocliente < 50;
![Alt text](https://image.ibb.co/gr3Usm/delete_2_1.png)

	DELETE FROM cliente_contato WHERE idcontatocliente = 66; SELECT * FROM cliente_contato WHERE idcontatocliente >= 60 AND idcontatocliente <= 70;
![Alt text](https://image.ibb.co/mHfW56/delete_3_1.png)

	DELETE FROM pontovenda_contato WHERE idcontatopontovenda = 6; SELECT * FROM pontovenda_contato WHERE idcontatopontovenda < 10;
![Alt text](https://image.ibb.co/bwOOJR/delete4_1.png)


	DELETE FROM pontovenda_contato WHERE idcontatopontovenda = 8; SELECT * FROM pontovenda_contato WHERE idcontatopontovenda > 5;
![Alt text](https://image.ibb.co/gHOesm/delete_5_1.png)

	DELETE FROM lote WHERE idlote = 3; SELECT * FROM lote WHERE idlote < 10;	
![Alt text](https://image.ibb.co/iTniJR/delete_6_1.png)

	DELETE FROM realizacao WHERE fk_evento_local_acontece_ideventolocal = 5 AND horario = '18:00'; SELECT * FROM realizacao WHERE fk_evento_local_acontece_ideventolocal >= 4;
![Alt text](https://image.ibb.co/njmzsm/delete_7_1.png)


	#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
	
![Link do Script para a junção e ordenação do banco de dados](https://raw.githubusercontent.com/SistemasEventos/trab01/master/SQL/ModeloFisico_innerJoin_OrderBy.sql)       

Imagens dos inner join e order by

	SELECT nome, userlogin, sexo.tipo FROM cliente
	INNER JOIN sexo ON(cliente.fk_sexo_idsexo = sexo.idsexo)
	ORDER BY nome;
![Alt text](https://image.ibb.co/jF0yk6/6.png)

	SELECT cliente.nome AS "Cliente interessado", evento.nome AS "Evento" FROM favorita_gratis_favorita
	INNER JOIN evento ON(evento.idevento = favorita_gratis_favorita.fk_evento_idevento)
	INNER JOIN gratis ON(gratis.fk_cliente_iduser = favorita_gratis_favorita.fk_gratis_fk_cliente_iduser)
	INNER JOIN cliente ON(cliente.iduser = gratis.fk_cliente_iduser)
	ORDER BY cliente.nome;
![Alt text](https://image.ibb.co/bZGSdR/5.png)


	SELECT cliente.nome AS "Cliente Responsavel", evento.nome AS "Evento divulgado" FROM evento
	INNER JOIN premium ON(premium.fk_cliente_iduser = evento.fk_premium_fk_cliente_iduser)
	INNER JOIN cliente ON(cliente.iduser = premium.fk_cliente_iduser)
	ORDER BY cliente.nome;
![Alt text](https://image.ibb.co/dhAW56/4.png)

	SELECT evento.nome AS "Evento", cidade.local AS "Cidade", bairro.local AS "Bairro", rua, numero FROM evento_local_acontece
	INNER JOIN evento ON(evento.idevento = evento_local_acontece.fk_evento_idevento)
	INNER JOIN localizacao ON(localizacao.idlocal = evento_local_acontece.fk_localizacao_idlocal)
	INNER JOIN cidade ON(cidade.idcidade = localizacao.fk_cidade_idcidade)
	INNER JOIN bairro ON(bairro.idbairro = localizacao.fk_bairro_idbairro)
	ORDER BY evento.nome;
![Alt text](https://image.ibb.co/b16hCm/3.png)


	SELECT evento.nome, genero.tipo FROM evento_genero_possui
	INNER JOIN evento ON(evento.idevento = evento_genero_possui.fk_evento_idevento)
	INNER JOIN genero ON(genero.idgenero = evento_genero_possui.fk_genero_idgenero)
	ORDER BY genero.tipo DESC, evento.nome;
![Alt text](https://image.ibb.co/i8UDJR/2.png)


	SELECT cliente.nome AS "Cliente Premium", datainicial, meses AS "Periodo(meses)", quantidade AS "Eventos simultaneos",
	forma AS "Forma de pagamento" FROM contrato
	INNER JOIN premium ON(premium.fk_cliente_iduser = contrato.fk_premium_fk_cliente_iduser)
	INNER JOIN cliente ON(cliente.iduser = premium.fk_cliente_iduser)
	INNER JOIN periodo ON(periodo.idperiodo = contrato.fk_periodo_idperiodo)
	INNER JOIN pagamento ON(pagamento.idpagamento = contrato.fk_pagamento_idpagamento)
	INNER JOIN eventossimultaneos ON(eventossimultaneos.ideventossimult = contrato.fk_eventossimultaneos_ideventossimult)
	ORDER BY datainicial DESC, meses DESC, quantidade DESC, forma;
	![Alt text](https://image.ibb.co/f5rhCm/1.png)

	   
	#### 9.7	CONSULTAS COM GROUP BY E FUNÇES DE AGRUPAMENTO (Mínimo 6)<br>

![Link do Script para o group by e funções de agrupamento](https://raw.githubusercontent.com/SistemasEventos/trab01/master/SQL/ModeloFisico_groupBy_funcoesAgrupamento.sql)

Imagens de group by e funções de agrupamento

	SELECT sexo.tipo AS "Sexo", COUNT(*) AS "Quantidade de clientes" FROM cliente
	INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
	GROUP BY sexo.tipo;
![Alt text](https://image.ibb.co/fR5hF6/8.png)

	SELECT evento.nome AS "Evento", SUM(lote.quantidade) AS "Total de ingressos" FROM evento
	INNER JOIN ingresso ON(ingresso.fk_evento_idevento = evento.idevento)
	INNER JOIN lote ON(lote.fk_ingresso_idingresso = ingresso.idingresso)
	GROUP BY evento.nome ORDER BY evento.nome;
![Alt text](https://image.ibb.co/hUmpv6/9.png)

	SELECT pontovenda.nome_ponto AS "Ponto de venda", COUNT(*) AS "Numero de eventos que usam o ponto"
	FROM pontovenda
	INNER JOIN evento_pontosvendas_possui ON(evento_pontosvendas_possui.fk_pontovenda_idpontovenda = pontovenda.idpontovenda)
	GROUP BY pontovenda.nome_ponto ORDER BY pontovenda.nome_ponto;
![Alt text](https://image.ibb.co/h5rdoR/7.png)


	SELECT genero.tipo AS "Genero", COUNT(*) AS "Quantidade eventos" FROM genero
	INNER JOIN evento_genero_possui ON(evento_genero_possui.fk_genero_idgenero = genero.idgenero)
	GROUP BY genero.tipo ORDER BY genero.tipo DESC;
![Alt text](https://image.ibb.co/b982F6/6.png)

	SELECT cidade.local AS "Cidade", COUNT(*) AS "Quantidade eventos" FROM cidade
	INNER JOIN localizacao ON(localizacao.fk_cidade_idcidade = cidade.idcidade)
	INNER JOIN evento_local_acontece ON(evento_local_acontece.fk_localizacao_idlocal = localizacao.idlocal)
	GROUP BY cidade.local ORDER BY cidade.local;
![Alt text](https://image.ibb.co/eMGpv6/5.png)


	SELECT cliente.iduser AS "ID Cliente", cliente.nome AS "Nome do cliente", sexo.tipo AS "Sexo", COUNT(*) AS "Quantidade de contatos registrados"
	FROM cliente
	INNER JOIN cliente_contato ON(cliente_contato.fk_cliente_iduser = cliente.iduser)
	INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
	GROUP BY cliente.iduser, cliente.nome, sexo.tipo ORDER BY cliente.nome;
![Alt text](https://image.ibb.co/dB3r8R/4.png)


	SELECT pagamento.forma AS "Forma de pagamento", COUNT(*) AS "Quantidade de vezes utilizados"
	FROM pagamento
	INNER JOIN contrato ON(contrato.fk_pagamento_idpagamento = pagamento.idpagamento)
	GROUP BY pagamento.forma ORDER BY COUNT(*) DESC;
![Alt text](https://image.ibb.co/nAKL2m/3.png)

	SELECT idpontovenda AS "ID ponto de venda", nome_ponto AS "Nome do ponto", COUNT(*) AS "Quantidade de contatos registrados"
	FROM pontovenda
	INNER JOIN pontovenda_contato ON(pontovenda_contato.fk_pontovenda_idpontovenda = pontovenda.idpontovenda)
	GROUP BY idpontovenda, nome_ponto HAVING COUNT(*) > 1
	ORDER BY idpontovenda;
![Alt text](https://image.ibb.co/nGiPTR/2.png)

	SELECT cliente.nome AS "Cliente Gratis", COUNT(*) AS "Quantidade de eventos favoritados" FROM gratis
	INNER JOIN cliente ON(cliente.iduser = gratis.fk_cliente_iduser)
	INNER JOIN favorita_gratis_favorita ON(favorita_gratis_favorita.fk_gratis_fk_cliente_iduser = gratis.fk_cliente_iduser)
	WHERE cliente.fk_sexo_idsexo = 1
	GROUP BY cliente.nome HAVING cliente.nome ILIKE '%a%' AND COUNT(*) >= 2
	ORDER BY cliente.nome;
![Alt text](https://image.ibb.co/bK5Ga6/1.png)

	#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>

![Link do Script de left e right join](https://raw.githubusercontent.com/SistemasEventos/trab01/master/SQL/ModeloFisico_left_right_join.sql)

Imagens de right e left join
	SELECT nome_ponto, cidade.local, bairro.local, rua, numero FROM localizacao
	LEFT OUTER JOIN pontovenda ON(pontovenda.fk_localizacao_idlocal = localizacao.idlocal)
	INNER JOIN cidade ON(cidade.idcidade = localizacao.fk_cidade_idcidade)
	INNER JOIN bairro ON(bairro.idbairro = localizacao.fk_bairro_idbairro)
	ORDER BY nome_ponto;
![Alt text](https://image.ibb.co/fmR75G/1.png)

	SELECT nome, cidade.local, bairro.local, rua, numero FROM evento_local_acontece
	INNER JOIN evento ON(evento.idevento = evento_local_acontece.fk_evento_idevento)
	RIGHT OUTER JOIN localizacao ON(localizacao.idlocal = evento_local_acontece.fk_localizacao_idlocal)
	INNER JOIN cidade ON(cidade.idcidade = localizacao.fk_cidade_idcidade)
	INNER JOIN bairro ON(bairro.idbairro = localizacao.fk_bairro_idbairro)
	ORDER BY nome;
![Alt text](https://image.ibb.co/hCG75G/2.png)


	SELECT fk_cliente_iduser AS "ID cliente gratis" ,nome,userlogin,tipo AS "sexo" FROM cliente
	INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
	LEFT OUTER JOIN gratis ON(gratis.fk_cliente_iduser = cliente.iduser)
	ORDER BY fk_cliente_iduser;
![Alt text](https://image.ibb.co/eXmUKb/3.png)



	SELECT fk_cliente_iduser AS "ID cliente premium" ,nome,userlogin,tipo AS "sexo" FROM cliente
	INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
	LEFT OUTER JOIN premium ON(premium.fk_cliente_iduser = cliente.iduser)
	ORDER BY fk_cliente_iduser;
![Alt text](https://image.ibb.co/f3QdCw/4.png)

	SELECT fk_cliente_iduser AS "ID cliente premium pessoa fisica" ,nome,userlogin,tipo AS "sexo" FROM cliente
	INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
	INNER JOIN premium ON(premium.fk_cliente_iduser = cliente.iduser)
	RIGHT OUTER JOIN fisica ON(premium.fk_cliente_iduser = fisica.fk_premium_fk_cliente_iduser)
	ORDER BY fk_cliente_iduser;
![Alt text](https://image.ibb.co/iA8LQG/5.png)

	#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>

![Link do Script de self join e view](https://raw.githubusercontent.com/SistemasEventos/trab01/master/SQL/ModeloFisico_selfJoin_view.sql)

Imagens de self join e view

	CREATE VIEW clientes_gratis AS
	SELECT nome, userlogin AS login, data_nascimento_abertura AS "data de nascimento", sexo.tipo AS "sexo" 
	FROM cliente
	INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
	INNER JOIN gratis ON(gratis.fk_cliente_iduser = cliente.iduser);

	SELECT * FROM clientes_gratis;
![Alt text](https://image.ibb.co/bTO4Kb/6.png)

	CREATE VIEW clientes_premium AS
	SELECT nome, userlogin AS login, data_nascimento_abertura AS "data de abertura ou abertura", sexo.tipo AS sexo 
	FROM cliente
	INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
	INNER JOIN premium ON(premium.fk_cliente_iduser = cliente.iduser);

	SELECT * FROM clientes_premium ORDER BY nome;
![Alt text](https://image.ibb.co/g4rrzb/5.png)

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
![Alt text](https://image.ibb.co/d5q6Xw/4.png)


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
![Alt text](https://image.ibb.co/jrH9kG/3.png)


	CREATE VIEW eventos_favoritados_pelos_clientes_gratis AS
	SELECT cliente.nome AS "Cliente interessado", evento.nome AS "Evento" FROM favorita_gratis_favorita
	INNER JOIN evento ON(evento.idevento = favorita_gratis_favorita.fk_evento_idevento)
	INNER JOIN gratis ON(gratis.fk_cliente_iduser = favorita_gratis_favorita.fk_gratis_fk_cliente_iduser)
	INNER JOIN cliente ON(cliente.iduser = gratis.fk_cliente_iduser)
	ORDER BY cliente.nome;

	SELECT * FROM eventos_favoritados_pelos_clientes_gratis;
![Alt text](https://image.ibb.co/fxQjKb/2.png)

	CREATE VIEW evento_ingresso_lote AS
	SELECT evento.nome AS "Evento", classificacao.tipo AS "Classificacao", numero AS "Numero do lote",
	quantidade AS "Quantidade de ingressos", preco AS "Preço" FROM evento
	INNER JOIN ingresso ON(ingresso.fk_evento_idevento = evento.idevento)
	INNER JOIN classificacao ON(classificacao.idclassif = ingresso.fk_classificacao_idclassif)
	INNER JOIN lote ON(lote.fk_ingresso_idingresso = ingresso.idingresso)
	ORDER BY evento.nome, numero;

	SELECT * FROM evento_ingresso_lote;
![Alt text](https://image.ibb.co/j56rzb/1.png)

	#### 9.10	SUBCONSULTAS (Mínimo 3)<br>

![Link do Script de subconsultas](https://raw.githubusercontent.com/SistemasEventos/trab01/master/SQL/ModeloFisico_subconsultas.sql)

Imagens das subconsultas realizadas
	SELECT nome AS "Cliente gratis", userlogin, data_nascimento_abertura AS "data de nascimento",
	EXTRACT(YEAR FROM age(data_nascimento_abertura)) AS idade, tipo AS "sexo"
	FROM cliente
	INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
	WHERE cliente.iduser IN (
	    SELECT fk_cliente_iduser FROM gratis
	) ORDER BY idade DESC, sexo, nome;
![Alt text](https://image.ibb.co/mKv9Kb/6.png)

	SELECT nome AS "Cliente premium pessoa fisica", userlogin, data_nascimento_abertura AS "data de nascimento",
	date_part('year', age(data_nascimento_abertura)) AS idade, tipo AS "sexo"
	FROM cliente
	INNER JOIN sexo ON(sexo.idsexo = cliente.fk_sexo_idsexo)
	WHERE cliente.iduser IN (
	    SELECT fk_premium_fk_cliente_iduser FROM fisica
	) ORDER BY idade DESC, sexo, nome;
![Alt text](https://image.ibb.co/cQy75G/5.png)


	SELECT nome AS "Cliente premium pessoa juridica", userlogin, data_nascimento_abertura AS "data de nascimento",
	date_part('year', age(data_nascimento_abertura)) AS idade
	FROM cliente
	WHERE cliente.iduser IN (
	    SELECT fk_premium_fk_cliente_iduser FROM juridica
	) ORDER BY idade DESC, nome;
![Alt text](https://image.ibb.co/g5ZEkG/4.png)

	SELECT nome AS "Cliente gratis", descricao AS "Contato" FROM cliente
	INNER JOIN cliente_contato ON(cliente_contato.fk_cliente_iduser = cliente.iduser)
	WHERE cliente_contato.fk_cliente_iduser NOT IN (
	    SELECT fk_cliente_iduser FROM premium
	) ORDER BY nome;
![Alt text](https://image.ibb.co/fodJCw/3.png)

	SELECT nome AS "Cliente premium", descricao AS "Contatos(Somente Telefone e Twitter)" FROM cliente
	INNER JOIN cliente_contato ON(cliente_contato.fk_cliente_iduser = cliente.iduser)
	WHERE cliente.iduser NOT IN (
	    SELECT fk_cliente_iduser FROM gratis
	) AND
	cliente_contato.fk_tipocontato_idtipocontato IN (
	    SELECT idtipocontato FROM tipocontato
	    WHERE idtipocontato = 1 OR idtipocontato = 4
	) ORDER BY nome, descricao;
![Alt text](https://image.ibb.co/jdMukG/2.png)

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
![Alt text](https://image.ibb.co/gZ7BXw/1.png)

	### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
	### 11	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
	### 12   DIFICULDADES ENCONTRADAS PELO GRUPO<br>

	Encontramos algumas dificuldades na hora de realizar o trabalho, tais como:
	1. Criação do modelo conceitual, em especial no raciocinio lógico na criação do modelo para não ter nenhuma falha;
	2. Queries de DELETE e UPDATE pois temos que conhecer bem o modelo o que requer atenção;
	3. Queries de JOIN, principalmente o INNER JOIN;
	4. Decisões de projeto, pois define pontos específicos do sistema proposto;
	5. Normalização do projeto, pois tivemos que dividir as tabelas para que não houvesse redundância, anomalias e afins;

	### 13   TRABALHO DE MINERAÇÃO DE DADOS
        a) captura das informaçõs
        b) integração com banco de dados em desenvolvimento
        c) atualização da documentação do trabalho incluindo a mineração de dados
        
	### 13  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

	### 14 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.
    
![Link do arquivo.backup do banco de dados](https://github.com/SistemasEventos/trab01/blob/master/SistemaEventos_DataBase.backup) 
    
	>## Marco de Entrega 04/Entrega Final em: (Data definida no cronograma)<br>
    
	### OBSERVAÇÕES IMPORTANTES

	#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
	1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.
	
	#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

	#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


	Link para BrModelo:<br>
	http://sis4.com/brModelo/brModelo/download.html <br>


	Link para curso de GIT<br>
	![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")
