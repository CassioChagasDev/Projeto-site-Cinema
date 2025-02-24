CREATE TABLE categorias (
  CodCategoria SERIAL PRIMARY KEY,
  Nome varchar(50)
);

INSERT INTO categorias (CodCategoria,Nome) VALUES 
 (1,'LIVROS'),
 (2,'ALIMENTOS'),
 (3,'BEBIDAS'),
 (4,'CDS'),
 (5,'INFORMATICA'),
 (6,'PAPELARIA');


CREATE TABLE clientes (
  codcliente SERIAL PRIMARY KEY,
  nome varchar(50),
  cidade varchar(50),
  estado varchar(2),
  idade int
 );

  INSERT INTO clientes (codcliente,nome,cidade,estado, idade) VALUES 
 (1,'JOSE DA SILVA','SAO JOSE DO RIO PARDO','SP',14),
 (2,'OSMAR DOS SANTOS','MOCOCA','SP',25),
 (3,'CLEBER SILVEIRA','CURITIBA','PR',37),
 (4,'JONAS DE ALMEIDA','BRASILIA','BR',49),
 (5,'MARCELO DA SILVA','GOIANIA','GO',12),
 (6,'MARIO SERGIO SOARES','CALDAS NOVAS','GO',34),
 (7,'ISABELITA DA SILVA','SAO JOSE DO RIO PARDO','SP',23),
 (8,'ROSANA DOS ANJOS','LONDRINA','PR',28),
 (9,'SILVIA DE SILVA','POCOS DE CALDA','MG',39),
 (10,'AGUINALDO SOARES','MOCOCA','SP',12),
 (11,'ROBERTO DOS SANTOS','SAO JOSE DO RIO PARDO','SP',15),
 (12,'MARIA APARECIDA','MOCOCA','SP',17),
 (13,'JOANA GONCALVES','CURITIBA','PR',16),
 (14,'MARCO ANTONIO','POCOS DE CALDA','MG',18),
 (15,'ANTONIO SERGIO','SAO JOSE DO RIO PARDO','SP',20),
 (16,'ISABELA SILVEIRA','FOZ DO IGUACU','PR',30),
 (17,'MARCO APARECIDO','MOCOCA','SP',45),
 (18,'JOANA DARC','GUAXUPE','MG',50),
 (19,'PEDRO ALVARES CABRAL','SAO JOSE DO RIO PARDO','SP',50),
 (20,'CRISTOVAM COLOMBO','CRICIUMA','PR',34),
 (21,'JOAQUIM DA SILVERIO','MOCOCA','SP',23),
 (22,'ECA DE QUEIROZ','GUAXUPE','MG',30),
 (23,'MACHADO DE ASSIM','SAO JOSE DO RIO PARDO','SP',40),
 (24,'EUCLIDES DA CUNHA','PARATI','RJ', 34),
 (25,'LUIS DA SILVA','MOCOCA','SP',24),
 (26,'ADILSON BASILIO','RIO JANEIRO','RJ',13),
 (27,'ADRIANO SILVA','SAO JOSE DO RIO PARDO','SP',18),
 (28,'ALEXA DARVIE','PETROPOLIS','RJ', 19),
 (29,'ANDRESSA MADEIRA','MOCOCA','SP', 29),
 (30,'KELLY MADEIRA','SAO JOSE DO RIO PARDO','SP', 39),
 (31,'ELAINE APARECIDA','PORTO ALEGRE','RS', 47),
 (32,'ERICA AURELIA','GUARULHOS','SP', 58),
 (33,'ELAINE APARECIDA','PORTO ALEGRE','RS', 74),
 (34,'FILIPE DE OLIVEIRA','RIO JANEIRO','RJ', 79),
 (35,'JOSE CARLOS DA SILVA','PORTO ALEGRE','RS', 81),
 (36,'KELLY CRISTINA','PETROPOLIS','RJ', 39),
 (37,'LAIS ASSUNCAO','OSASCO','SP', 28),
 (38,'FABIO JUNIOR','SAO PAULO','SP', 17),
 (39,'BRUNO DA SILVA','MOCOCA','SP', 16),
 (40,'FABIO DE ALMEIDA','SALVADOR','BA', 38),
 (41,'FABIANO SOARES','UBERLANDIA','MG', 27),
 (42,'FABRICA DA DE ALMEIDA','UBERABA','MG', 21),
 (43,'CRISTIANE ASSUNCAO','BRASILIA','BR', 22),
 (44,'MARIA MODESTA','CAMBURIU','SC', 24),
 (45,'LIGIA','SALVADOR','BA', 45),
 (46,'PEDROS SERGIO','BRASILIA','BA', 21),
 (47,'RODRIGO VICENTE','FLORIANOPOLIS','SC', 12),
 (48,'RODRIGO DOS ANJOS','SALVADOR','BA', 84),
 (49,'WILLIAN JOSE','FLORIANOPOLIS','SC', 23),
 (50,'JOSE WILLIAN','JUAZEIRO DO NORTE','BA', 34),
 (51,'SERGIO DOS SANTOS','RIO JANEIRO','SP', 48),
 (52,'VAGNER FREITAS','CASA BRANCA','SP', 29),
 (53,'VITORIO DOS ANJOS','RIBEIRAO PRETO','SP', 18),
 (54,'VITORIA APARECIDA','CASA BRANCA','SP', 17),
 (55,'LEANDRO DA SILVA','RIBEIRAO PRETO','SP', 16),
 (58,'GUILHERME HENRIQUE DE SOUZA','MOCOCA','SP', 90);

CREATE TABLE fornecedores (
  CodFornecedor SERIAL PRIMARY KEY,
  Nome varchar(50),
  Cidade varchar(50),
  Estado varchar(50)
);

INSERT INTO fornecedores (CodFornecedor,Nome,Cidade,Estado) VALUES 
 (1,'LIVRARIA SARAIVA','RIBEIRAO PRETO','SP'),
 (2,'DISTRIBUIDORA ALIMENTOS DO SUL DE MINAS GERAIS','GUAXUPE','MG'),
 (3,'SOM LIVRE','RIO JANEIRO','RJ'),
 (4,'ATACADISTA DOM PEDRO S/A','SAO PAULO','SP'),
 (5,'SAMSUNG','CURITIBA','PR'),
 (6,'SATELLITE','SAO PAULO','SP'),
 (7,'ASUS DO BRASIL LTDA','BELO HORIZONTE','MG'),
 (8,'KALUNGA S/A','CAMPINAS','SP'),
 (9,'FABER CASTELL','SAO CARLOS','SP');

CREATE TABLE produtos (
  CodProduto SERIAL PRIMARY KEY,
  Descricao varchar(50),
  PrecoCusto float,
  PrecoVenda float,
  CodCategoria int,
  CodFornecedor int
);

INSERT INTO produtos (CodProduto,Descricao,PrecoCusto,PrecoVenda,CodCategoria,CodFornecedor) VALUES 
 (1,'APRENDENDO PHP EM 21 DIAS',10.00,59.90,1,1),
 (2,'APRENDENDO ASP EM 21 DIAS',20.00,49.90,1,1),
 (3,'DOMINANDO O DELPHI 7',30.00,80.00,1,1),
 (4,'INTRODUCAO AO VB.NET',40.00,99.99,1,1),
 (5,'INICIANDO NO VB EXPRESS',50.00,75.00,1,1),
 (6,'ACUCAR REFINADO',1.00,1.99,2,2),
 (7,'ARROZ 5KG',5.99,7.99,2,2),
 (8,'FEIJAO CARIOCA 2KG',2.99,4.99,2,2),
 (9,'SAL REFINADO 1KG',1.99,2.59,2,2),
 (10,'MAIONESE 200G',0.49,0.75,2,2),
 (11,'CERVEJA SKOL 350ML',0.99,1.05,3,2),
 (12,'REFRIG COCA COLA 2LT',2.75,2.99,3,4),
 (13,'REFRIG FANTA 2LT',1.75,1.99,3,4),
 (14,'VODKA 1LT',7.99,10.99,3,4),
 (15,'CONHAQUE 750ML',5.49,9.99,3,4),
 (16,'BRUNO E MARRONE',12.99,20.00,4,3),
 (17,'U2',17.99,25.00,4,3),
 (18,'THE POLICE',17.99,25.00,4,3),
 (19,'O RAPPA',15.99,20.00,4,3),
 (20,'SHOW XUXA',9.99,15.00,4,3),
 (21,'MONITOR CRT SAMSUNG 17\"',400.00,499.00,5,5),
 (22,'MONITOR CRT SAMSUNG 15\"',300.00,399.00,5,5),
 (23,'MONITOR LCD SAMSUNG 15\"',400.00,550.00,5,5);
INSERT INTO produtos (CodProduto,Descricao,PrecoCusto,PrecoVenda,CodCategoria,CodFornecedor) VALUES 
 (24,'MONITOR LCD SAMSUNG 17\"',500.00,650.00,5,5),
 (25,'TECLADO SATELLITE',15.00,30.00,5,6),
 (26,'MOUSE SATELLITE',12.99,25.99,5,6),
 (27,'FONTE DE ENERGIA SATELLITE',45.00,99.00,5,6),
 (28,'CAIXAS DE SOM SPEEKER',35.00,57.99,5,6),
 (29,'GABINETE SATELLITE',75.00,150.00,5,6),
 (30,'PLACA MAE ASUS',250.00,399.00,5,7),
 (31,'CD-R 700MB LG',0.99,1.29,6,8),
 (32,'CD-RW 700MB LG',1.59,2.99,6,8),
 (33,'CD-R 700MB DR. HANK',0.79,1.14,6,8),
 (34,'CD-RW 700MB DR. HANK',1.39,1.99,6,8),
 (35,'PAPEL A4 CHAMEX',7.80,9.99,6,8),
 (36,'PAPEL A4 VOTORANTIN',8.00,12.99,6,8),
 (37,'CANETA BIC AZUL',0.59,0.79,6,9),
 (38,'CANETA BIC VERMELHA',0.59,0.79,6,9),
 (39,'LAPIS N2 FABER CASTELL',0.45,0.59,6,9),
 (40,'LAPIS N1 FABER CASTELL',0.45,0.59,6,9),
 (41,'BORRACHA BRANCA FABER CASTELL',0.20,0.39,6,9);

 CREATE TABLE vendas (
  CodVenda SERIAL PRIMARY KEY,
  CodCliente int,
  DataVenda date
);

INSERT INTO vendas (CodVenda,CodCliente,DataVenda) VALUES 
 (1,1,'2007-10-24'),
 (2,5,'2007-08-07'),
 (3,6,'2007-08-07'),
 (4,8,'2007-08-10'),
 (5,10,'2007-09-15'),
 (6,45,'2007-08-19'),
 (7,35,'2007-10-10'),
 (8,48,'2007-09-15'),
 (9,12,'2007-08-29'),
 (10,7,'2007-09-10'),
 (11,9,'2007-10-01'),
 (12,5,'2007-10-30'),
 (13,1,'2007-09-10'),
 (14,6,'2007-08-01'),
 (15,8,'2007-10-04'),
 (16,10,'2007-07-07'),
 (17,45,'2007-07-09'),
 (18,7,'2007-07-07'),
 (19,24,'2007-07-09'),
 (20,26,'2007-07-15'),
 (21,45,'2007-11-15'),
 (22,47,'2007-12-24'),
 (23,48,'2007-11-17'),
 (24,49,'2007-12-21'),
 (25,41,'2007-11-30'),
 (26,30,'2007-12-31'),
 (27,36,'2007-11-19'),
 (28,37,'2007-10-06'),
 (29,33,'2007-12-23'),
 (30,39,'2007-11-30'),
 (31,21,'2007-12-24'),
 (32,23,'2007-10-04'),
 (33,27,'2007-12-31'),
 (34,22,'2007-11-27'),
 (35,24,'2007-12-31'),
 (36,29,'2007-11-23'),
 (37,27,'2007-12-31'),
 (38,28,'2007-10-03'),
 (39,21,'2007-11-29'),
 (40,28,'2007-12-31'),
 (41,18,'2007-10-01'),
 (42,17,'2007-12-23'),
 (43,17,'2007-12-24');
INSERT INTO vendas (CodVenda,CodCliente,DataVenda) VALUES 
 (44,15,'2007-12-31'),
 (45,11,'2007-08-03'),
 (46,3,'2007-12-06'),
 (47,7,'2007-12-19'),
 (48,9,'2007-12-31'),
 (49,8,'2007-12-24'),
 (50,45,'2007-09-04');

 CREATE TABLE vendasitens (
  CodVendaItem SERIAL PRIMARY KEY,
  CodVenda int,
  CodProduto int,
  Qtde int
 );

INSERT INTO vendasitens (CodVendaItem,CodVenda,CodProduto,Qtde) VALUES 
 (1,1,1,2),
 (2,1,3,4),
 (3,2,5,86),
 (4,2,7,41),
 (5,3,8,4),
 (6,3,9,8),
 (7,4,11,471),
 (8,4,13,10),
 (9,5,15,110),
 (10,5,17,4),
 (11,6,19,99),
 (12,6,2,4),
 (13,7,4,6),
 (14,7,6,7),
 (15,8,8,8),
 (16,8,10,9),
 (17,9,12,1),
 (18,9,14,10),
 (19,10,16,11),
 (20,10,18,15),
 (21,11,20,64),
 (22,11,1,49),
 (23,12,2,78),
 (24,12,3,10),
 (25,13,4,30),
 (26,13,5,10),
 (27,14,6,50),
 (28,14,7,60),
 (29,15,8,40),
 (30,15,9,80),
 (31,16,10,10),
 (32,16,11,15),
 (33,17,12,7),
 (34,17,13,8),
 (35,18,14,9),
 (36,18,15,5),
 (37,19,16,5),
 (38,19,17,10),
 (39,20,18,7),
 (40,20,19,9),
 (41,21,21,1),
 (42,21,23,2),
 (43,22,24,3),
 (44,22,21,4),
 (45,23,30,1),
 (46,23,35,2),
 (47,24,35,3),
 (48,24,37,4),
 (49,25,39,5),
 (50,25,40,10),
 (51,26,NULL,NULL),
 (52,26,NULL,NULL),
 (53,27,NULL,NULL),
 (54,27,NULL,NULL),
 (55,28,NULL,NULL),
 (56,28,NULL,NULL),
 (57,29,NULL,NULL),
 (58,29,NULL,NULL),
 (59,30,NULL,NULL),
 (60,30,NULL,NULL),
 (61,31,NULL,NULL);
INSERT INTO vendasitens (CodVendaItem,CodVenda,CodProduto,Qtde) VALUES 
 (62,31,NULL,NULL),
 (63,32,NULL,NULL),
 (64,32,NULL,NULL),
 (65,33,NULL,NULL),
 (66,33,NULL,NULL),
 (67,34,NULL,NULL),
 (68,34,NULL,NULL),
 (69,35,NULL,NULL),
 (70,35,NULL,NULL),
 (71,36,NULL,NULL),
 (72,36,NULL,NULL),
 (73,37,NULL,NULL),
 (74,37,NULL,NULL),
 (75,38,NULL,NULL),
 (76,38,NULL,NULL),
 (77,39,NULL,NULL),
 (78,39,NULL,NULL),
 (79,40,NULL,NULL),
 (80,40,NULL,NULL),
 (81,41,NULL,NULL),
 (82,41,NULL,NULL),
 (83,42,NULL,NULL),
 (84,42,NULL,NULL),
 (85,43,NULL,NULL),
 (86,43,NULL,NULL),
 (87,44,NULL,NULL),
 (88,44,NULL,NULL),
 (89,45,NULL,NULL),
 (90,45,NULL,NULL),
 (91,46,NULL,NULL),
 (92,46,NULL,NULL),
 (93,47,NULL,NULL),
 (94,47,NULL,NULL),
 (95,48,NULL,NULL),
 (96,48,NULL,NULL),
 (97,49,NULL,NULL),
 (98,49,NULL,NULL),
 (99,50,NULL,NULL),
 (100,50,NULL,NULL);
 

