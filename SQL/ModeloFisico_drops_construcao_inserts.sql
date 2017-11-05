CREATE TABLE Conta (
    idConta SERIAL PRIMARY KEY,
    FK_TipoConta_idTconta SERIAL,
    FK_TipoPessoa_idTpessoa SERIAL
);

CREATE TABLE Cliente (
    idUser SERIAL PRIMARY KEY,
    userLogin VARCHAR(50),
    data_nascimento_abertura DATE,
    senha VARCHAR(20),
    nome VARCHAR(50),
    FK_Conta_idConta SERIAL,
    FK_Sexo_idSexo SERIAL
);

CREATE TABLE Gratis (
    FK_Cliente_idUser SERIAL PRIMARY KEY
);

CREATE TABLE Premium (
    FK_Cliente_idUser SERIAL PRIMARY KEY
);

CREATE TABLE Evento (
    data_divulgacao DATE,
    idEvento SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    FK_Premium_FK_Cliente_idUser SERIAL
);

CREATE TABLE Ingresso (
    idIngresso SERIAL PRIMARY KEY,
    FK_Classificacao_idClassif SERIAL,
    FK_Evento_idEvento SERIAL
);

CREATE TABLE PontoVenda (
    nome_ponto VARCHAR(50),
    idPontoVenda SERIAL PRIMARY KEY,
    FK_Localizacao_idLocal SERIAL
);

CREATE TABLE Fisica (
    cpf VARCHAR(20),
    FK_Premium_FK_Cliente_idUser SERIAL PRIMARY KEY
);

CREATE TABLE Juridica (
    cnpj VARCHAR(20),
    FK_Premium_FK_Cliente_idUser SERIAL PRIMARY KEY
);

CREATE TABLE Contrato (
    idContrato SERIAL PRIMARY KEY,
    dataInicial DATE,
    FK_Periodo_idPeriodo SERIAL,
    FK_Pagamento_idPagamento SERIAL,
    FK_EventosSimultaneos_idEventosSimult SERIAL,
    FK_Premium_FK_Cliente_idUser SERIAL
);

CREATE TABLE Favorita_gratis_favorita (
    data_favoritado DATE,
    FK_Gratis_FK_Cliente_idUser SERIAL,
    FK_Evento_idEvento SERIAL
);

CREATE TABLE evento_pontosVendas_possui (
    data DATE,
    FK_PontoVenda_idPontoVenda SERIAL,
    FK_Evento_idEvento SERIAL
);

CREATE TABLE Contato (
    idTipoContato SERIAL PRIMARY KEY,
    tipo VARCHAR(25)
);

CREATE TABLE contatos_cliente_tem (
    descricao VARCHAR(50),
    idContatoCliente SERIAL PRIMARY KEY,
    FK_Contato_idTipoContato SERIAL,
    FK_Cliente_idUser SERIAL
);

CREATE TABLE contatos_pontosVenda_tem (
    descricao VARCHAR(50),
    idContatoPontoVenda SERIAL PRIMARY KEY,
    FK_Contato_idTipoContato SERIAL,
    FK_PontoVenda_idPontoVenda SERIAL
);

CREATE TABLE Localizacao (
    numero INT,
    cep VARCHAR(20),
    idLocal SERIAL PRIMARY KEY,
    rua VARCHAR(50),
    FK_Cidade_idCidade SERIAL,
    FK_Bairro_idBairro SERIAL,
    FK_Estado_idEstado SERIAL
);

CREATE TABLE evento_local_acontece (
    idEventoLocal SERIAL PRIMARY KEY,
    FK_Localizacao_idLocal SERIAL,
    FK_Evento_idEvento SERIAL
);

CREATE TABLE realizacao (
    data DATE,
    horario TIME,
    FK_evento_local_acontece_idEventoLocal SERIAL
);

CREATE TABLE genero (
    tipo VARCHAR(50),
    idGenero SERIAL PRIMARY KEY
);

CREATE TABLE evento_genero_possui (
    FK_genero_idGenero SERIAL,
    FK_Evento_idEvento SERIAL
);

CREATE TABLE Lote (
    numero INT,
    quantidade INT,
    idLote SERIAL PRIMARY KEY,
    preco NUMERIC(5,2),
    FK_Ingresso_idIngresso SERIAL
);

CREATE TABLE TipoConta (
    idTconta SERIAL PRIMARY KEY,
    tipo VARCHAR(20)
);

CREATE TABLE TipoPessoa (
    idTpessoa SERIAL PRIMARY KEY,
    tipo VARCHAR(20)
);

CREATE TABLE Sexo (
    idSexo SERIAL PRIMARY KEY,
    tipo VARCHAR(25)
);

CREATE TABLE Classificacao (
    idClassif SERIAL PRIMARY KEY,
    tipo VARCHAR(50)
);

CREATE TABLE Estado (
    idEstado SERIAL PRIMARY KEY,
    UF CHAR(3)
);

CREATE TABLE Bairro (
    idBairro SERIAL PRIMARY KEY,
    local VARCHAR(50)
);

CREATE TABLE Cidade (
    idCidade SERIAL PRIMARY KEY,
    Local VARCHAR(50)
);

CREATE TABLE EventosSimultaneos (
    idEventosSimult SERIAL PRIMARY KEY,
    quantidade INT
);

CREATE TABLE Pagamento (
    idPagamento SERIAL PRIMARY KEY,
    forma VARCHAR(20)
);

CREATE TABLE Periodo (
    idPeriodo SERIAL PRIMARY KEY,
    meses INT
);
 
ALTER TABLE Conta ADD CONSTRAINT FK_Conta_1
    FOREIGN KEY (FK_TipoConta_idTconta)
    REFERENCES TipoConta (idTconta)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Conta ADD CONSTRAINT FK_Conta_2
    FOREIGN KEY (FK_TipoPessoa_idTpessoa)
    REFERENCES TipoPessoa (idTpessoa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_1
    FOREIGN KEY (FK_Conta_idConta)
    REFERENCES Conta (idConta)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_2
    FOREIGN KEY (FK_Sexo_idSexo)
    REFERENCES Sexo (idSexo)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Gratis ADD CONSTRAINT FK_Gratis_1
    FOREIGN KEY (FK_Cliente_idUser)
    REFERENCES Cliente (idUser)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Premium ADD CONSTRAINT FK_Premium_1
    FOREIGN KEY (FK_Cliente_idUser)
    REFERENCES Cliente (idUser)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Evento ADD CONSTRAINT FK_Evento_1
    FOREIGN KEY (FK_Premium_FK_Cliente_idUser)
    REFERENCES Premium (FK_Cliente_idUser)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Ingresso ADD CONSTRAINT FK_Ingresso_1
    FOREIGN KEY (FK_Classificacao_idClassif)
    REFERENCES Classificacao (idClassif)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Ingresso ADD CONSTRAINT FK_Ingresso_2
    FOREIGN KEY (FK_Evento_idEvento)
    REFERENCES Evento (idEvento)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE PontoVenda ADD CONSTRAINT FK_PontoVenda_1
    FOREIGN KEY (FK_Localizacao_idLocal)
    REFERENCES Localizacao (idLocal)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Fisica ADD CONSTRAINT FK_Fisica_1
    FOREIGN KEY (FK_Premium_FK_Cliente_idUser)
    REFERENCES Premium (FK_Cliente_idUser)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Juridica ADD CONSTRAINT FK_Juridica_1
    FOREIGN KEY (FK_Premium_FK_Cliente_idUser)
    REFERENCES Premium (FK_Cliente_idUser)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Contrato ADD CONSTRAINT FK_Contrato_1
    FOREIGN KEY (FK_Periodo_idPeriodo)
    REFERENCES Periodo (idPeriodo)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Contrato ADD CONSTRAINT FK_Contrato_2
    FOREIGN KEY (FK_Pagamento_idPagamento)
    REFERENCES Pagamento (idPagamento)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Contrato ADD CONSTRAINT FK_Contrato_3
    FOREIGN KEY (FK_EventosSimultaneos_idEventosSimult)
    REFERENCES EventosSimultaneos (idEventosSimult)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Contrato ADD CONSTRAINT FK_Contrato_4
    FOREIGN KEY (FK_Premium_FK_Cliente_idUser)
    REFERENCES Premium (FK_Cliente_idUser)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Favorita_gratis_favorita ADD CONSTRAINT FK_Favorita_gratis_favorita_0
    FOREIGN KEY (FK_Gratis_FK_Cliente_idUser)
    REFERENCES Gratis (FK_Cliente_idUser);
 
ALTER TABLE Favorita_gratis_favorita ADD CONSTRAINT FK_Favorita_gratis_favorita_1
    FOREIGN KEY (FK_Evento_idEvento)
    REFERENCES Evento (idEvento);
 
ALTER TABLE evento_pontosVendas_possui ADD CONSTRAINT FK_evento_pontosVendas_possui_0
    FOREIGN KEY (FK_PontoVenda_idPontoVenda)
    REFERENCES PontoVenda (idPontoVenda);
 
ALTER TABLE evento_pontosVendas_possui ADD CONSTRAINT FK_evento_pontosVendas_possui_1
    FOREIGN KEY (FK_Evento_idEvento)
    REFERENCES Evento (idEvento);
 
ALTER TABLE contatos_cliente_tem ADD CONSTRAINT FK_contatos_cliente_tem_1
    FOREIGN KEY (FK_Contato_idTipoContato)
    REFERENCES Contato (idTipoContato);
 
ALTER TABLE contatos_cliente_tem ADD CONSTRAINT FK_contatos_cliente_tem_2
    FOREIGN KEY (FK_Cliente_idUser)
    REFERENCES Cliente (idUser);
 
ALTER TABLE contatos_pontosVenda_tem ADD CONSTRAINT FK_contatos_pontosVenda_tem_1
    FOREIGN KEY (FK_Contato_idTipoContato)
    REFERENCES Contato (idTipoContato);
 
ALTER TABLE contatos_pontosVenda_tem ADD CONSTRAINT FK_contatos_pontosVenda_tem_2
    FOREIGN KEY (FK_PontoVenda_idPontoVenda)
    REFERENCES PontoVenda (idPontoVenda);
 
ALTER TABLE Localizacao ADD CONSTRAINT FK_Localizacao_1
    FOREIGN KEY (FK_Cidade_idCidade)
    REFERENCES Cidade (idCidade)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Localizacao ADD CONSTRAINT FK_Localizacao_2
    FOREIGN KEY (FK_Bairro_idBairro)
    REFERENCES Bairro (idBairro)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Localizacao ADD CONSTRAINT FK_Localizacao_3
    FOREIGN KEY (FK_Estado_idEstado)
    REFERENCES Estado (idEstado)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE evento_local_acontece ADD CONSTRAINT FK_evento_local_acontece_1
    FOREIGN KEY (FK_Localizacao_idLocal)
    REFERENCES Localizacao (idLocal);
 
ALTER TABLE evento_local_acontece ADD CONSTRAINT FK_evento_local_acontece_2
    FOREIGN KEY (FK_Evento_idEvento)
    REFERENCES Evento (idEvento);
 
ALTER TABLE realizacao ADD CONSTRAINT FK_realizacao_0
    FOREIGN KEY (FK_evento_local_acontece_idEventoLocal)
    REFERENCES evento_local_acontece (idEventoLocal)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE evento_genero_possui ADD CONSTRAINT FK_evento_genero_possui_0
    FOREIGN KEY (FK_genero_idGenero)
    REFERENCES genero (idGenero);
 
ALTER TABLE evento_genero_possui ADD CONSTRAINT FK_evento_genero_possui_1
    FOREIGN KEY (FK_Evento_idEvento)
    REFERENCES Evento (idEvento);
 
ALTER TABLE Lote ADD CONSTRAINT FK_Lote_1
    FOREIGN KEY (FK_Ingresso_idIngresso)
    REFERENCES Ingresso (idIngresso)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	
/* Insercao de dados nas tabelas do sistema criado */

/* Insercao nas contas */
INSERT INTO tipoconta(tipo)
VALUES ('Normal'),
        ('Premium');

INSERT INTO tipopessoa(tipo)
VALUES ('Física'),
        ('Jurídica');

INSERT INTO conta(fk_tipoconta_idtconta, fk_tipopessoa_idtpessoa)
VALUES (1, 1),
        (2, 2),
        (2, 1);

/* insercao nos contatos */
INSERT INTO contato(tipo)
VALUES ('Telefone'),
        ('Facebook'),
        ('E-mail'),
        ('Twitter'),
        ('Instagram');

/* Insercao das classificacoes */
INSERT INTO classificacao(tipo)
VALUES ('Pista'),
        ('Palco'),
        ('Estudante'),
        ('Inteiro'),
        ('Vip'),
        ('Open'),
        ('Único');

/* Insercao dos generos */
INSERT INTO genero(tipo)
VALUES ('Rock'),
        ('Culinária'),
        ('Sertanejo'),
        ('Funk'),
        ('Religioso'),
        ('Acadêmico'),
        ('Pagode'),
        ('Cultura Japonesa'),
		('Bijuterias'),
		('Solidário'),
		('Beleza');

/* Insercao da forma de pagamento do contrato */
INSERT INTO pagamento(forma)
VALUES ('Boleto Bancário'),
        ('Cartão de Crédito'),
        ('Cartão de Débito');

/* Insercao dos eventos simultâneos definido no contrato */
INSERT INTO eventossimultaneos(quantidade)
VALUES (5), (10), (20), (30);

/* Insercao do periodo de contratação */
INSERT INTO periodo(meses)
VALUES (6), (12), (24), (36);

/* Insercao dos Estados de uma localizacao */
INSERT INTO estado(uf)
VALUES ('ES'), ('SP'), ('RJ'), ('MG'), ('PR'), ('RS');

/* Insercao dos Cidades de uma localizacao */
INSERT INTO cidade(local)
VALUES ('Serra'),
        ('Vitória'),
        ('Vila Velha'),
        ('Cariacica'),
        ('Fundão'),
        ('Guarapari'),
        ('Viana');

/* Insercao dos Bairros de uma localizacao */
INSERT INTO bairro(local)
VALUES ('Feu Rosa'),
        ('Vila Nova'),
        ('Jacaraípe'),
        ('Serra Dourada I'), ('Serra Dourada II'), ('Serra Dourada III'),
        ('Praia do Canto'),
        ('Campo Grande'),
        ('Agrim Correia'),
        ('Industrial'), 
		('São Pedro'), 
		('Pedra da Mulata Setor I'), 
		('Paturá'), 
		('Retiro do Congo'), 
        ('Bicanga'), 
        ('Maracanã'),
        ('Praiamar'),
        ('Forno Velho'),
        ('Doutor Luiz Tinoco da Fonseca'),
        ('Praia do Morro'),
        ('Praia de Capuba'),
        ('Jardim Colorado'),
        ('Hélio Ferraz'),
        ('Interlagos'),
        ('Vila Rubim'),
        ('das Laranjeiras');
        
/* Insercao dos sexos possiveis do sistema */
INSERT INTO sexo(tipo)
VALUES ('Masculino'),
        ('Feminino'),
        ('Inexistente');
		

/* Inserindo os clientes do sistema*/

/* Insercao de clientes em geral */
INSERT INTO cliente(userLogin, data_nascimento_abertura, senha, nome, fk_conta_idconta, fk_sexo_idsexo)
VALUES ('Youghten', '1960-09-06', 'eeHa4zoh', 'Cauã Barros Azevedo', 1, 1),
        ('Resem1987', '1987-01-04', 'ung6Ex5ie', 'Mateus Carvalho Melo', 1, 1),
        ('Tolopead88', '1988-09-03', 'eeteim0Aiki', 'Isabela Fernandes Pinto', 1, 2),
        ('Vive1993', '1988-09-03', 'wie4eev8Bie', 'Gabrielle Sousa Carvalho', 1, 2),
        ('Toonde', '1993-12-12', 'zaubu0Ei', 'Matheus Almeida Ferreira', 1, 1),
        ('Gint1991', '1991-07-14', 'ahsaw9aeCho', 'Vitoria Almeida Barros', 1, 2),
        ('Ablion', '1994-01-19', 'quah7Yesh', 'Lavinia Cavalcanti Ferreira', 1, 2),
        ('Gook1998', '1998-11-12', 'Eesie9aghah', 'Sarah Melo Rocha', 1, 2),
        ('Licaria', '1992-05-01', 'Reid9nol6y', 'Marcos Costa Castro', 1, 1),
        ('Shaboys', '1993-10-06', 'eivah2Eidee', 'Julian Lima Barbosa', 1, 1),
        ('ShaboysPremium', '1993-10-06', 'eivah2Eidee22', 'Julian Lima Barbosa', 3, 1),
        ('Sult1998', '1998-04-12', 'the3xeeZae', 'Nicole Almeida Sousa', 3, 2),
        ('Amituchens', '1995-02-22', 'piVoon5ai', 'Beatriz Martins Dias', 3, 2),
        ('Paptur', '1991-01-23', 'Eeb6coole', 'Nicolas Costa Fernandes', 3, 1),
        ('Wileved', '1998-10-27', 'Xohl6oogheen', 'Giovana Azevedo Rodrigues', 3, 2),
        ('Hurged', '1996-02-16', 'EiJaCai2yai2', 'Estevan Almeida Martins', 3, 1),
        ('MRbuffet', '2009-10-08', 'daew312d', 'Miguel e Raul Buffet Ltda', 2, 3),
        ('SCTelecom', '2009-09-17', 'dasd65d', 'Sophia e Catarina Telecom Ltda', 2, 3),
        ('CBjoalheriaLTda', '2014-04-11', 'cdaasf32', 'César e Bianca Joalheria Ltda', 2, 3),
        ('ChocolatesGatoto', '1970-03-14', '432A546c', 'Chocolates Gatoto LTDA', 2, 3),
        ('VilaFreex', '2012-07-20', '432fsfe34', 'Vila Freex', 2, 3),
        ('academiventos', '2014-09-09', '34fsf54', 'Academiventos UFES LTDA', 2, 3),
        ('animeventos', '2015-08-12', 'otakunemehgente123', 'Animeventos Corporation', 2, 3),
        ('ORoficial', '2009-01-25', '34rdsa5666', 'Orbita Rock', 2, 3);

/* Insercao dos clientes gratis que favoritam os eventos */
INSERT INTO gratis(fk_cliente_idUser)
SELECT iduser FROM cliente WHERE fk_conta_idconta = 1;

/* Insercao dos clientes premium divulgam os eventos */
INSERT INTO premium(fk_cliente_iduser)
SELECT iduser FROM cliente WHERE fk_conta_idconta = 2 or fk_conta_idconta = 3;
	   
/* Insercao dos clientes premium de pessoa física */
INSERT INTO fisica(cpf, fk_premium_fk_cliente_iduser)
VALUES ('54531814860', 11),
        ('54836512867', 12),
        ('74278318456', 13),
        ('22524704530', 14),
        ('87628898778', 15),
        ('38332373760', 16);

/* Insercao dos clientes premium de pessoa jurídica */
INSERT INTO juridica(cnpj, fk_premium_fk_cliente_iduser)
VALUES ('27872353000138', 17),
        ('55523512000124', 18),
        ('44336354000187', 19),
        ('65336354450186', 20),
        ('42403004000160', 21),
        ('48180061000104', 22),
        ('76945025000167', 23),
        ('38809744000124', 24);
        
/* Insercao dos contratos assinados pelos clientes premium */
INSERT INTO contrato(datainicial, fk_periodo_idperiodo, fk_pagamento_idpagamento, fk_eventossimultaneos_ideventossimult, fk_premium_fk_cliente_iduser)
VALUES ('2017-01-02', 2, 2, 2, 11),
        ('2017-07-03', 1, 1, 1, 12),
        ('2017-03-02', 2, 3, 1, 13),
        ('2017-04-30', 3, 3, 3, 14),
        ('2017-10-20', 1, 1, 2, 15),
        ('2017-02-24', 2, 3, 4, 16),
        ('2016-01-20', 4, 2, 3, 17),
        ('2016-11-25', 3, 1, 2, 18),
        ('2017-06-09', 2, 3, 1, 19),
        ('2015-08-13', 4, 1, 2, 20),
        ('2016-06-15', 3, 1, 4, 21),
        ('2017-08-11', 1, 1, 2, 22),
        ('2017-01-10', 2, 1, 1, 23),
        ('2017-01-06', 2, 2, 1, 24);
        
/* Insercao dos contatos dos clientes */
INSERT INTO contatos_cliente_tem(descricao, fk_contato_idtipocontato, fk_cliente_iduser)
VALUES ('julianlimabarbosa@gmail.com', 3, 11),
        ('julianlimabarbosa@outlook.com', 3, 11),
        ('JulianLBarb', 2, 11),
        ('@JulianLBarb', 4, 11),
        ('JulianLBarb', 5, 11),
        ('2798823215', 1, 11),
        ('2798723285', 1, 11),
        ('nicolealmeidasousa@jourrapide.com', 3, 12),
        ('nicAlmeida', 2, 12),
        ('@nicAlmeida', 4, 12),
        ('nicoleAlSousa', 5, 12),
        ('2799228724', 1, 12),
        ('beatrizmartinsdias@gmail.com', 3, 13),
        ('BeatrizMartin', 2, 13),
        ('@BeatrizMartin', 4, 13),
        ('BeatrizOfic', 5, 13),
        ('2796077571', 1, 13),
        ('2732541235', 1, 13),
        ('nicolascostafernandes@hotmail.com', 3, 14),
        ('nicolauscostas@gmail.com', 3, 14),
        ('nicolausCostas', 2, 14),
        ('nicolausCostas2', 2, 14),
        ('@nicolausCostinha', 4, 14),
        ('nicolausCostas', 5, 14),
        ('2796467568', 1, 14),
        ('giovanaazevedorodrigues@hotmail.com', 3, 15),
        ('2784363557', 1, 15),
        ('estevanalmeidamartins@outlook.com', 3, 16),
        ('estevanMartins', 2, 16), 
        ('@estevanMartins', 4, 16),
        ('EstavanMartinis', 5, 16),
        ('2755105629', 1, 16),
        ('2733540321', 1, 16),
        ('2794552365', 1, 16),
        ('seguranca@migueleraulbuffetltda.com.br', 3, 17),
        ('Miguel e Raul Buffet', 2, 17), 
        ('@MRbuffet', 4, 17),
        ('MRbuffet', 5, 17),
        ('2735007369', 1, 17),
        ('sac@sophiaecatarinatelecomltda.com.br', 3, 18),
        ('sac@sophiaecatarinatelecomltda2.com.br', 3, 18),
        ('sac@sophiaecatarinatelecomltda3.com.br', 3, 18),
        ('sacTelecom', 2, 18), 
        ('@sacTelecom', 4, 18),
        ('sacTelecom', 5, 18),
        ('2727599795', 1, 18),
        ('2727699745', 1, 18),
        ('rh@cesarebiancajoalherialtda.com.br', 3, 19),
        ('rh@cesarebiancajoalherialtdav2.com.br', 3, 19),
        ('CBjoalherias', 2, 19), 
        ('@CBjoalherias', 4, 19),
        ('Cbjoalhe', 5, 19),
        ('2728435019', 1, 19),
        ('27996498024', 1, 19),
        ('chocolatesgrh@gatoto.com.br', 3, 20),
        ('sacgatoto@garoto.com.br', 3, 20),
        ('chocolatesGatoto', 2, 20), 
        ('@chocolatesGatoto', 4, 20),
        ('chocolatesGatoto', 5, 20),
        ('2728435019', 1, 20),
        ('2725613246', 1, 20),
        ('vilafreexcontato@vilafreex.com.br', 3, 21),
        ('vilafreex@gmail.com', 3, 21),
        ('vilafreexOficial ', 2, 21), 
        ('@vilafreexOficial', 4, 21),
        ('@vilafreexOficial2', 4, 21),
        ('vilafreex', 5, 21),
        ('2737425306', 1, 21),
        ('2727326569', 1, 21),
        ('suporte@academiventosufes.com.br', 3, 22),
        ('suporte2@academiventosufes.com.br', 3, 22),
        ('Academiventos ', 2, 22), 
        ('@academiventos', 4, 22),
        ('academiventos', 5, 22),
        ('27988126123', 1, 22),
        ('2728511032', 1, 22),
        ('animeventos@gmail.com', 3, 23),
        ('animeventos2@gmail.com', 3, 23),
        ('animeeventos', 2, 23), 
        ('@animeeventos', 4, 23),
        ('animeeventosOficial', 5, 23),
        ('2726614518', 1, 23),
        ('27999373876', 1, 23),
        ('27986696381', 1, 23),
        ('or.orbitarock@gmail.com', 3, 24),
        ('ORBITA ROCK', 2, 24), 
        ('@orbitaRock', 4, 24),
        ('orbitarockOficial', 5, 24),
        ('academiventos', 1, 24),
        ('2836235412 ', 1, 24),
        ('27982831421', 1, 24),
        ('cauabarrosazevedo@hotmail.com', 3, 1),
        ('mateusmarvalhomelo@rhyta.com', 3, 2),
        ('isabelafernandespinto@rhyta.com', 3, 3),
        ('gabriellesousacarvalho@rhyta.com', 3, 4),
        ('matheusalmeidaferreira@gmail.com', 3, 5),
        ('vitoriaalmeidabarros@gmail.com', 3, 6),
        ('laviniacavalcantiferreira@outlook.com', 3, 7),
        ('sarahmelorocha@gmail.com', 3, 8),
        ('marcoscostacastro@outlook.com', 3, 9),
        ('julianlimabarbosa@hotmail.com', 3, 10);


/* Inserindo os eventos  */
INSERT INTO evento(data_divulgacao, nome, fk_premium_fk_cliente_iduser)
VALUES ('2017-10-17', 'Rock Festival', 24),
        ('2017-02-17', 'Akatsuki Colaboration', 23),
        ('2017-05-15', 'Orbita Show', 24),
        ('2017-05-01', 'Academinando', 23),
        ('2017-02-17', 'Hokage Colaboration', 23),
        ('2017-05-14', 'Vila Xix', 21),
        ('2017-07-05', 'Joias Brancas', 19),
        ('2017-10-10', 'Gatotada', 20),
        ('2017-08-19', 'Telemania', 18),
        ('2017-07-12', 'A La Courmet', 17),
        ('2017-11-15', 'Festa de Noses', 16),
        ('2017-06-19', 'As Ladys Cats', 15),
        ('2017-07-05', 'Alianças Festas', 14),
        ('2017-06-06', 'Limões para Limonada', 11);
        

/* Insercao dos ingressos dos eventos */   
INSERT INTO ingresso(fk_classificacao_idclassif, fk_evento_idevento)
VALUES (1, 1),
        (7, 2),
        (7, 3),
        (3, 4),
        (4, 4),
        (7, 5), 
        (7, 6),
        (7, 7),
        (7, 8),
        (7, 9),
        (7, 10),
        (7, 11),
        (7, 12),
        (7, 13),       
        (7, 14);

/* Insercao dos lotes dos ingressos a serem vendidos */
INSERT INTO lote(numero, quantidade, preco, fk_ingresso_idingresso)
VALUES (1, 200, 40, 1),
        (2, 100, 120, 1),
        (3, 100, 200, 1),
        (1, 400, 45.5, 2),
        (1, 350, 45, 3),
        (1, 300, 20, 4),
        (1, 300, 40, 5),
        (1, 350, 40, 6),
        (1, 220, 30, 7),
        (1, 350, 40, 8),
        (1, 250, 60, 9),
        (1, 400, 0, 10),
        (1, 150, 20, 11),
        (1, 170, 15, 12),
        (1, 100, 15, 13),
        (1, 350, 40, 14),
        (1, 80, 25, 15);


/* insercao dos generos do evento */
INSERT INTO evento_genero_possui(fk_genero_idgenero, fk_evento_idevento)
VALUES (1, 1),
        (8, 2),
        (1, 3),
        (6, 4),
        (8, 5),
        (3, 6),
        (7, 6),
        (9, 7),
        (2, 8),
        (10, 9),
        (2, 10),
        (2, 11),
        (11, 12),
        (5, 13),
        (2, 14);

/* Insercao das localizações */
INSERT INTO localizacao(numero, cep, rua, fk_cidade_idcidade, fk_bairro_idbairro, fk_estado_idestado)
VALUES (544, '29118710', 'Rua Bela Vista', 3, 10, 1),
        (555, '29030190', 'Rua Antônio Eliotério da Silva', 2, 11, 1),
        (585, '29131416', 'Comunidade Crubixá', 7, 12, 1),
        (483, '29222623', 'Rodovia Salma Yazetti Haddad', 6, 13, 1),
        (740, '29128303', 'Estrada Retiro do Congo', 3, 14, 1),
        (546, '29456433', 'Rua Paraná', 1, 15, 1),
        (549, '29164805', 'Rua Campes', 2, 8, 1),
        (486, '29142826', 'Rua Vinte e Oito', 4, 16, 1),
        (234, '29182305', 'Rua Governador Valadares', 1, 17, 1),
        (840, '29937600', 'Rua Vinte e Dois', 5, 18, 1),
        (302, '29313232', 'Rua Sebastião Soares de Paula', 5, 19, 1),
        (338, '29216590', 'Rua Olívio Antônio Novaes', 6, 20, 1),
        (339, '29173701', 'Rua São Paulo', 1, 21, 1),
        (544, '29104660', 'Rua Miosótis', 3, 22, 1),
        (697, '29301240', 'Rua Bahija Magid Aarão', 5, 18, 1),
        (849, '29168285', 'Rua Seis', 5, 18, 1),
        (616, '29160536', 'Escadaria Canaã', 1, 23, 1),
        (988, '29903091', 'Avenida Cláudio Manoel da Costa', 7, 24, 1),
        (790, '29025022', 'Rua Doutor João dos Santos Neves', 2, 25, 1),
        (999, '27655762', 'Rua Neves', 2, 7, 1),
        (834, '29175652', 'Beco Charles Chaplin', 1, 26, 1),
        (653, '29176567', 'Avenida Central', 1, 26, 1);

/* Insercao dos pontos de vendas */
INSERT INTO pontovenda(nome_ponto, fk_localizacao_idlocal)
VALUES ('Rock Pão', 1),
        ('Konoha', 4),
        ('Shopping Derrota', 6),
        ('UFEZ', 8),
        ('Konoha second place', 10),
        ('Lojas Ronnor', 12),
        ('Jóias Vendas', 14),
        ('Lojas Gatoto Fundão', 16),
        ('Lojas Itachuero', 18),
        ('Lojas Itapueiro', 20),
        ('Casas Minas', 22),
        ('Casas Santos', 5);
        
        
        
/* Insercao dos locais de acontecimento dos eventos */
INSERT INTO evento_local_acontece(fk_localizacao_idlocal, fk_evento_idevento)
VALUES (2, 1),
        (3, 2),
        (5, 3),
        (7, 4),
        (9, 5),
        (11, 6),
        (13, 7),
        (15, 8),
        (17, 9),
        (19, 10),
        (21, 11),
        (21, 12),
        (5, 13),
        (4, 14);
        

/* Insercao da realização(data e horário) do evento no determinado local */
INSERT INTO realizacao(data, horario, fk_evento_local_acontece_ideventolocal)
VALUES ('2017-11-17', '22:00', 1),
        ('2017-11-19', '15:00', 2),
        ('2017-12-01', '20:00', 3),
        ('2017-07-03', '19:20', 4),
        ('2017-11-12', '18:00', 5),
        ('2017-02-06', '18:00', 6),
        ('2017-01-05', '19:00', 7),
        ('2017-11-10', '16:00', 8),
        ('2017-12-19', '10:00', 9),
        ('2017-12-17', '17:00', 10),
        ('2017-12-11', '14:00', 11),
        ('2017-08-19', '20:00', 12),
        ('2017-09-09', '21:00', 13),
        ('2017-12-12', '18:00', 14);


/* Insercao dos locais onde serão vendidos os ingressos */
INSERT INTO evento_pontosvendas_possui(data, fk_pontovenda_idpontovenda, fk_evento_idevento)
VALUES ('2017-10-17', 1, 1),
        ('2017-10-19', 2, 2),
        ('2017-10-01', 3, 3),
        ('2017-05-01', 4, 4),
        ('2017-02-17', 5, 5),
        ('2017-05-15', 6, 6),
        ('2017-07-06', 7, 7),
        ('2017-10-15', 8, 8),
        ('2017-10-10', 9, 9),
        ('2017-11-12', 10, 10),
        ('2017-11-15', 11, 11),
        ('2017-06-19', 3, 12),
        ('2017-06-19', 12, 13),
        ('2017-06-06', 2, 14);

/* Insercao dos eventos favoritados pelos clientes normais/gratis */
INSERT INTO favorita_gratis_favorita(data_favoritado, fk_gratis_fk_cliente_iduser, fk_evento_idevento) 
VALUES ('2017-10-18', 1, 1),
        ('2017-10-20', 10, 1),
        ('2017-10-19', 3, 1),
        ('2017-02-18', 2, 2),
        ('2017-02-23', 3, 2),
        ('2017-05-15', 8, 3),
        ('2017-05-25', 2, 4),
        ('2017-02-20', 7, 5),
        ('2017-05-15', 7, 6),
        ('2017-07-06', 9, 7),
        ('2017-10-16', 4, 8),
        ('2017-08-20', 4, 9),
        ('2017-07-12', 5, 10),
        ('2017-11-20', 3, 11),
        ('2017-06-22', 5, 12),
        ('2017-07-10', 1, 13),
        ('2017-06-08', 5, 14);

/* Insercao dos contatos dos pontos de vendas */
INSERT INTO contatos_pontosvenda_tem(descricao, fk_contato_idtipocontato, fk_pontovenda_idpontovenda)
VALUES ('RockPao', 2, 1),
        ('2798654312', 1, 1),
        ('Konoha Vila da Folha', 2, 2),
        ('konohanaotemcelular@hotmail.com', 3, 2),
        ('2754064365', 1, 3),
        ('2754342312', 1, 3),
        ('UFEZandia', 2, 4),
        ('2731242304', 1, 4),
        ('ufez@gmail.com', 3, 4),
        ('Konoha Vila da Folha second place', 2, 5),
        ('konohanaotemcelularsecond@hotmail.com', 3, 5),
        ('2754762354', 1, 6),
        ('2734546776', 1, 7),
        ('2754376875', 1, 8),
        ('2765879876', 1, 9),
        ('2776879886', 1, 10),
        ('2765879977', 1, 12);



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


