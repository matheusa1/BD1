-- Link repositorio: https://github.com/matheusa1/BD1

CREATE TABLE livrarias (
	endereco VARCHAR(100),
    qtd_funcionarios INTEGER,
    capacidade INTEGER,
    PRIMARY KEY(endereco)
);

CREATE TABLE funcionarios (
	id INTEGER,
    nome VARCHAR(100),
    idade INTEGER,
    PRIMARY KEY(id)
);

CREATE TABLE cargos (
	codigo INTEGER,
    nome VARCHAR(100),
    qtd_funcionarios INTEGER,
    PRIMARY KEY(codigo)
);

CREATE TABLE dependentes (
	cpf CHAR(11),
    nome VARCHAR(100),
    idade INTEGER,
    parentesco VARCHAR(100),
    PRIMARY KEY(cpf)
);

CREATE TABLE empresas (
	cnpj CHAR(14),
    qtd_func_cedidos INTEGER,
    funcao VARCHAR(100),
    PRIMARY KEY (cnpj)
);

CREATE TABLE clientes (
	cpf CHAR(11),
    nome VARCHAR(100),
    qtd_compras INTEGER,
    PRIMARY KEY (cpf)
);

CREATE TABLE livros (
	codigo INTEGER,
    titulo VARCHAR(100),
    preco REAL,
    PRIMARY KEY (codigo)
);

CREATE TABLE autores (
	id INTEGER,
	nome VARCHAR(100),
	qtd_obras INTEGER,
    PRIMARY KEY (id)
);

CREATE TABLE generos (
	genero VARCHAR(100),
    quantidade INTEGER,
    rest_idade INTEGER,
    PRIMARY KEY (genero)
);

CREATE TABLE prateleiras (
	posicao VARCHAR(100),
    tipo_organizacao VARCHAR(100),
    capacidade INTEGER,
    PRIMARY KEY (posicao)
);

CREATE TABLE atribuicao (
	codigo_cargos INTEGER,
    id_funcionarios INTEGER,
    salario REAL,
    FOREIGN KEY (codigo_cargos) REFERENCES cargos(codigo),
    FOREIGN KEY (id_funcionarios) REFERENCES funcionarios(id),
    PRIMARY KEY (id_funcionarios)
);

CREATE TABLE apolice (
	cpf_dependentes CHAR(11),
    id_funcionarios INTEGER,
	custo REAL,
    FOREIGN KEY (cpf_dependentes) REFERENCES dependentes(cpf),
    FOREIGN KEY (id_funcionarios) REFERENCES funcionarios(id),
    PRIMARY KEY (cpf_dependentes)
);

CREATE TABLE frequenta (
	cpf_clientes CHAR(11),
    endereco_livrarias VARCHAR(100),
    desde DATE,
    FOREIGN KEY (cpf_clientes) REFERENCES clientes(cpf),
    FOREIGN KEY (endereco_livrarias) REFERENCES livrarias(endereco),
    PRIMARY KEY (cpf_clientes, endereco_livrarias)
);

CREATE TABLE liv_tem_func (
	endereco_livrarias VARCHAR(100),
    id_funcionarios INTEGER,
	desde DATE,
    FOREIGN KEY (endereco_livrarias) REFERENCES livrarias(endereco),
    FOREIGN KEY (id_funcionarios) REFERENCES funcionarios(id),
    PRIMARY KEY (id_funcionarios)
);

CREATE TABLE contratos (
	cnpj_empresas CHAR(14),
    endereco_livrarias VARCHAR(100),
    FOREIGN KEY (cnpj_empresas) REFERENCES empresas(cnpj),
    FOREIGN KEY (endereco_livrarias) REFERENCES livrarias(endereco),
    PRIMARY KEY (cnpj_empresas, endereco_livrarias)
);

CREATE TABLE comprado (
	codigo_livros INTEGER,
    cpf_clientes CHAR(11),
    FOREIGN KEY (cpf_clientes) REFERENCES clientes(cpf),
    FOREIGN KEY (codigo_livros) REFERENCES livros(codigo),
    PRIMARY KEY (cpf_clientes, codigo_livros)
);

CREATE TABLE localizacao_livro (
	posicao_prateleiras VARCHAR(100),
    endereco_livrarias VARCHAR(100),
    codigo_livros INTEGER,
    FOREIGN KEY (codigo_livros) REFERENCES livros(codigo),
    FOREIGN KEY (endereco_livrarias) REFERENCES livrarias(endereco),
    FOREIGN KEY (posicao_prateleiras) REFERENCES prateleiras(posicao),
    PRIMARY KEY (codigo_livros, endereco_livrarias, posicao_prateleiras)
);

CREATE TABLE escreveu (
	codigo_livros INTEGER,
    id_autores INTEGER,
    FOREIGN KEY (codigo_livros) REFERENCES livros(codigo),
    FOREIGN KEY (id_autores) REFERENCES autores(id),
    PRIMARY KEY (id_autores, codigo_livros)
);

CREATE TABLE tem_genero(
	genero_generos VARCHAR(100),
    codigo_livros INTEGER,
    FOREIGN KEY (codigo_livros) REFERENCES livros(codigo),
    FOREIGN KEY (genero_generos) REFERENCES generos(genero),
    PRIMARY KEY (genero_generos, codigo_livros)
);