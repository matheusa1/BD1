
-- Link repositorio: https://github.com/matheusa1/BD1

INSERT INTO livrarias(endereco, qtd_funcionarios, capacidade)
VALUES
  ('Rua 15, Bairro Jardim Itália, Cuiabá', 1, 25),
  ('Rua 20, Bairro Ibirapuera, São Paulo', 1, 40),
  ('Rua 24, Bairro Savassi, Belo Horizonte', 1, 40),
  ('Rua 52, Bairro Ingleses, Florianópolis', 1, 25),
  ('Rua 23, Bairro Bom Clima, Chapada dos Guimarães', 1, 45),
  ('Rua 21, Bairro Centro, Diamantino', 1, 15),
  ('Rua 22, Bairro Jardim Araucária, Campo Mourão', 1, 25),
  ('Rua 23, Bairro Indaiá, Maringá', 1, 28),
  ('Rua 42, Bairro Caladinho, Porto Velho', 1, 25),
  ('Rua 21, Bairro Botafogo, Rio de Janeiro', 1, 45),
  ('Rua 23, Bairro Xaxim, Curitiba', 1, 25);

INSERT INTO funcionarios(id, nome, idade)
VALUES
  (1, 'Gabriel Matozo da Costa', 25),
  (2, 'Lucas Pires Xeron', 20),
  (3, 'José Almeida da Costa', 24),
  (4, 'Augusto Goularte Santos', 21),
  (5, 'Paloma Santos de Andrade', 30),
  (6, 'Vitor Moisés Alemeida Correa', 37),
  (7, 'Johanna Roncato Fernandes', 28),
  (8, 'Gabriel Farias Pessoa', 19),
  (9, 'Luiza Fernanes Andrade', 20),
  (10, 'Joana Costa Pereira', 25);

INSERT INTO cargos(codigo, nome, qtd_funcionarios)
VALUES
  (1, 'Supervisor', 1),
  (2, 'Vendedor', 1),
  (3, 'Gerente', 1),
  (4, 'Balconista', 1),
  (5, 'Contador', 1),
  (6, 'Organizador', 1),
  (7, 'Bibliotecário', 1),
  (8, 'TI', 1),
  (9, 'Secretário', 1),
  (10, 'Comprador', 1);


INSERT INTO dependentes(cpf, nome, idade, parentesco)
VALUES
  ('51117053172', 'José Goularte Santos', 7, 'Filho'),
  ('26875456273', 'Matheus Santos de Andrade', 14, 'Filho'),
  ('78671534200', 'Josias Costa Pereira', 12, 'Sobrinho'),
  ('63536934510', 'Ana Pires Xeron', 11, 'Filho'),
  ('24223898728', 'José Filho Almeida da Costa', 4, 'Filho'),
  ('10615344216', 'Ana Carolina Alemeida Correa', 5, 'Filho'),
  ('93748816758', 'Maria Almeida da Costa', 12, 'Filho'),
  ('54216267840', 'Josias Farias Pessoa', 2, 'Filho'),
  ('22612030476', 'Matheus Roncato Fernandes', 13, 'Filho'),
  ('13126283837', 'Luzia Costa Pereira', 13, 'Filho');


INSERT INTO clientes(cpf, nome, qtd_compras)
VALUES
  ('18541275272', 'Ediana Lina dos Santos Andrade', 100),
  ('02299834800', 'Paulo Alves de Andrade', 20),
  ('41377732118', 'Edilson Linos Santos', 12),
  ('91787643190', 'Franciele Almeida Pereira', 76),
  ('81800644760', 'Flavio Augusto Gaspar', 34),
  ('33997972222', 'Eder Tomate Necron', 13),
  ('42671917007', 'Yan Shimizu Colore', 88),
  ('81525878344', 'Cesar Augusto Filho', 23),
  ('27413381591', 'Lucas Rafael Albuquerque', 25),
  ('39192734430', 'Matheus Santos de Andrade', 45);
  
INSERT INTO empresas(cnpj, qtd_func_cedidos, funcao)
VALUES
  ('05738779000160', 2, 'Limpeza'),
  ('26297945000100', 4, 'Limpeza'),
  ('87881540000100', 5, 'Limpeza'),
  ('99810851000167', 6, 'Limpeza'),
  ('29444969000133', 7, 'Transporte'),
  ('64702989000168', 3, 'Transporte'),
  ('37044580000129', 1, 'Transporte'),
  ('15020953000199', 2, 'Transporte'),
  ('63990004000184', 2, 'Vistoria'),
  ('13466682000174', 4, 'Vistoria');
  
INSERT INTO livros(codigo, titulo, preco)
VALUES
  (1, '50 Tons de Cinza', 15.50),
  (2, '1984', 20),
  (3, 'Diário de um Banana', 27.99),
  (4, 'O Leviatã', 30),
  (5, 'O Pequeno Principe', 40),
  (6, 'Dom Casmurro', 15.50),
  (7, 'O Processo', 20.40),
  (8, 'A Hora da Estrela', 10.50),
  (9, 'Morte Em Veneza', 12),
  (10, 'Em Busca do Tempo Pedrido', 15);

INSERT INTO generos(genero, quantidade, rest_idade)
VALUES
  ('Terror', 2, 1),
  ('Infantil', 3, 0),
  ('Clássico', 2, 0),
  ('Histórico', 1, 0),
  ('Romance', 3, 1),
  ('Ficção', 4, 0),
  ('Sci-fi', 5, 0),
  ('Mistério', 2, 0),
  ('Política', 3, 0),
  ('Filosofia', 1, 0);
  
INSERT INTO autores(id, nome, qtd_obras)
VALUES
  (1, 'E. L. James', 1),
  (2, 'George Orwell', 1),
  (3, 'Jeff Kinney', 1),
  (4, 'Thomas Hobbes', 1),
  (5, 'Antoine de Saint-Exupéry', 1),
  (6, 'Machado de Assis', 1),
  (7, 'Franz Kafka', 1),
  (8, 'Clarice Lispector', 1),
  (9, 'Thomas Mann', 1),
  (10, 'Marcel Proust', 1);


INSERT INTO prateleiras(posicao, tipo_organizacao, capacidade)
VALUES
  ('H1', 'preço crescente', 100),
  ('L3', 'alfabético crescente', 200),
  ('D2', 'preco decrescente', 100),
  ('F1', 'alfabético decrescente', 100),
  ('G1', 'genero', 231),
  ('F2', 'autor', 332),
  ('G3', 'genero', 333),
  ('H4', 'alfabético decrescente', 220),
  ('J6', 'alfabético decrescente', 300),
  ('L0', 'preco decrescente', 300);

INSERT INTO atribuicao(codigo_cargos, id_funcionarios, salario)
VALUES
  (1, 1, 4000),
  (2, 2, 4500),
  (3, 3, 4900),
  (4, 4, 5000),
  (5, 5, 5500),
  (6, 6, 5900),
  (7, 7, 6000),
  (8, 8, 6500),
  (9, 9, 6900),
  (10, 10, 7000);

INSERT INTO apolice(cpf_dependentes, id_funcionarios, custo)
VALUES
  ('51117053172', 4, 1000),	
  ('26875456273', 9, 1100),
  ('78671534200', 9, 800),
  ('63536934510', 2, 700),
  ('24223898728', 3, 900),
  ('10615344216', 6, 1000),
  ('93748816758', 3, 2000),
  ('54216267840', 8, 1000),
  ('22612030476', 7, 1500),
  ('13126283837', 10, 1000);
  
INSERT INTO contratos(cnpj_empresas, endereco_livrarias)
VALUES
  ('05738779000160', 'Rua 15, Bairro Jardim Itália, Cuiabá'),
  ('26297945000100', 'Rua 20, Bairro Ibirapuera, São Paulo'),
  ('87881540000100', 'Rua 24, Bairro Savassi, Belo Horizonte'),
  ('99810851000167', 'Rua 52, Bairro Ingleses, Florianópolis'),
  ('29444969000133', 'Rua 23, Bairro Bom Clima, Chapada dos Guimarães'),
  ('64702989000168', 'Rua 21, Bairro Centro, Diamantino'),
  ('37044580000129', 'Rua 22, Bairro Jardim Araucária, Campo Mourão'),
  ('15020953000199', 'Rua 23, Bairro Indaiá, Maringá'),
  ('63990004000184', 'Rua 42, Bairro Caladinho, Porto Velho'),
  ('13466682000174', 'Rua 23, Bairro Xaxim, Curitiba');
  
INSERT INTO liv_tem_func(endereco_livrarias, id_funcionarios, desde)
VALUES
  ('Rua 15, Bairro Jardim Itália, Cuiabá', 1, '1999-01-01'),
  ('Rua 20, Bairro Ibirapuera, São Paulo', 2, '2002-01-01'),
  ('Rua 24, Bairro Savassi, Belo Horizonte', 3, '2001-01-01'),
  ('Rua 52, Bairro Ingleses, Florianópolis', 4, '2002-01-01'),
  ('Rua 23, Bairro Bom Clima, Chapada dos Guimarães', 5, '2003-01-01'),
  ('Rua 21, Bairro Centro, Diamantino', 6, '2004-01-01'),
  ('Rua 22, Bairro Jardim Araucária, Campo Mourão', 7, '2005-01-01'),
  ('Rua 23, Bairro Indaiá, Maringá', 8, '2006-01-01'),
  ('Rua 42, Bairro Caladinho, Porto Velho', 9, '2007-01-01'),
  ('Rua 21, Bairro Botafogo, Rio de Janeiro', 10, '2008-01-01');
  
INSERT INTO frequenta(cpf_clientes, endereco_livrarias, desde)
VALUES
  ('18541275272', 'Rua 15, Bairro Jardim Itália, Cuiabá', '1999-01-01'),
  ('02299834800', 'Rua 20, Bairro Ibirapuera, São Paulo', '2000-01-01'),
  ('41377732118', 'Rua 24, Bairro Savassi, Belo Horizonte', '2001-01-01'),
  ('91787643190', 'Rua 52, Bairro Ingleses, Florianópolis', '2002-01-01'),
  ('81800644760', 'Rua 23, Bairro Bom Clima, Chapada dos Guimarães', '2003-01-01'),
  ('33997972222', 'Rua 21, Bairro Centro, Diamantino', '2004-01-01'),
  ('42671917007', 'Rua 22, Bairro Jardim Araucária, Campo Mourão', '2005-01-01'),
  ('81525878344', 'Rua 23, Bairro Indaiá, Maringá', '2006-01-01'),
  ('27413381591', 'Rua 42, Bairro Caladinho, Porto Velho', '2007-01-01'),
  ('39192734430', 'Rua 21, Bairro Botafogo, Rio de Janeiro', '2008-01-01');
  
INSERT INTO comprado(codigo_livros, cpf_clientes)
VALUES
  (1, '18541275272'),
  (2, '02299834800'),
  (3, '41377732118'),
  (4, '91787643190'),
  (5, '81800644760'),
  (6, '33997972222'),
  (7, '42671917007'),
  (8, '81525878344'),
  (9, '27413381591'),
  (10, '39192734430');
  
INSERT INTO tem_genero(genero_generos, codigo_livros)
VALUES
  ('Romance', 1),
  ('Histórico', 2),
  ('Infantil', 3),
  ('Filosofia', 4),
  ('Clássico', 5),
  ('Clássico', 6),
  ('Política', 7),
  ('Romance', 8),
  ('Mistério', 9),
  ('Sci-fi', 10);

INSERT INTO escreveu(codigo_livros, id_autores)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10);

INSERT INTO localizacao_livro(posicao_prateleiras, endereco_livrarias, codigo_livros)
VALUES
  ('H1', 'Rua 15, Bairro Jardim Itália, Cuiabá', 1),
  ('L3', 'Rua 20, Bairro Ibirapuera, São Paulo', 2),
  ('D2', 'Rua 24, Bairro Savassi, Belo Horizonte', 3),
  ('F1', 'Rua 52, Bairro Ingleses, Florianópolis', 4),
  ('G1', 'Rua 23, Bairro Bom Clima, Chapada dos Guimarães', 5),
  ('F2', 'Rua 21, Bairro Centro, Diamantino', 6),
  ('G3', 'Rua 22, Bairro Jardim Araucária, Campo Mourão', 7),
  ('H4', 'Rua 23, Bairro Indaiá, Maringá', 8),
  ('J6', 'Rua 42, Bairro Caladinho, Porto Velho', 9),
  ('L0', 'Rua 21, Bairro Botafogo, Rio de Janeiro', 10);