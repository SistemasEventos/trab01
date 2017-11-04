/* ModeloLogico: */

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