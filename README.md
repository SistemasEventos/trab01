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

    FISICA: Armazena dados dos clientes premium do tipo Pessoa Física. Nota-se que é uma especialização de Premium, onde herdam suas         características.
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

    JURIDICA: Armazena dados dos clientes premium do tipo Pessoa Jurídica. Nota-se que é uma especialização de Premium, onde herdam suas     características.
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

    PREMIUM: Armazena dados de todas contas dos clientes premium. Nota-se que é uma especialização do Cliente, onde herdam suas             características.
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
     Upado arquivo com todas imagens na pasta images com nome: 9.1_Consulta_Todas_Tabelas

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
     
     Upado arquivo com script com nome: ModeloFisico_selects_Where.sql
     Upado arquivo com todas imagens na pasta images com nome: 9.2_Consultas_FiltroWhere

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 6)
     a) Criar no mínimo 2 com operadores lógicos
     b) Criar no mínimo 2 com operadores aritméticos
     c) Criar no mínimo 2 com operação de renomear campo
     
     Upado arquivo com script com nome: ModeloFisico_selects_ope.Logico_Aritmetico_camp.renomeados.sql
     Upado arquivo com todas imagens na pasta images com nome: 9.3_Consultas_Op.logicos_aritmeticos_Camp.renomeados
     
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 4) <br>

    Upado arquivo com script com nome: ModeloFisico_selects_like.sql
    Upado arquivo com todas imagens na pasta images com nome: 9.4_Consultas_Com_Like

>## Marco de Entrega 03 em: (Data definida no cronograma)<br>
    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
### 11	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 12   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
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
    
>## Marco de Entrega 04/Entrega Final em: (Data definida no cronograma)<br>
    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")
