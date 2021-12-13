-- Link repositorio: https://github.com/matheusa1/BD1

SELECT C.nome, C.qtd_compras, F.endereco_livrarias 
FROM frequenta F, clientes C 
WHERE C.cpf = F.cpf_clientes AND C.qtd_compras > 50;

# Lista os clientes que compraram mais de 50 livros, mostrando o nome, quantidade de compras e a livraria que frequenta.


SELECT nome
FROM clientes C
WHERE C.cpf NOT IN (
    SELECT COM.cpf_clientes
    FROM comprado COM
    WHERE COM.codigo_livros = 1
);

# Lista os clientes que não alugaram o livro de id 1.


SELECT E.cnpj, E.funcao
FROM empresas E
WHERE e.cnpj IN (
    SELECT CON.cnpj_empresas
    FROM contratos CON, livrarias L
    WHERE CON.endereco_livrarias = L.endereco
    AND L.qtd_funcionarios > 0
);

# Lista o cnpj e a função das empresas contratadas em livrarias com a quantidade de funcionários maior que 0.


SELECT A.nome
FROM autores A
WHERE A.id IN (
    SELECT E.id_autores
    FROM escreveu E
    WHERE E.codigo_livros IN (
        SELECT L.codigo
        FROM livros L
        WHERE L.preco < 15
    )
);

# Lista o nome dos autores que possuem livros vendidos por menos de 15 reais.


SELECT *
FROM funcionarios F
WHERE F.id IN (
    SELECT A.id_funcionarios
    FROM cargos C, atribuicao A
    WHERE C.nome = 'TI'
    AND A.codigo_cargos = C.codigo
);

# Lista os funcionários que ocupam o cargo de TI.


SELECT F.nome
FROM funcionarios F
WHERE F.id IN (
    SELECT A.id_funcionarios
    FROM apolice A
    WHERE A.cpf_dependentes IN (
  	    SELECT D.cpf
        FROM dependentes D
        WHERE D.parentesco = 'Filho'
    ) 
    AND A.custo < 1000
);

# Lista o nome dos funcionários cuja apólice do filho não seja maior que 1000 reais.


SELECT L.titulo, L.preco
FROM livros L
WHERE L.codigo IN (
    SELECT TG.codigo_livros
    FROM tem_genero TG, generos G
    WHERE TG.genero_generos = G.genero
    AND G.genero = 'Clássico'
) 
AND L.codigo IN (
    SELECT LL.codigo_livros
    FROM localizacao_livro LL, Livrarias LV
    WHERE LL.endereco_livrarias = LV.endereco
    AND LV.endereco = 'Rua 21, Bairro Centro, Diamantino'
);

# Lista os tituloS e os preço dos livros clássicos da livraria de Diamantino.


SELECT *
FROM clientes C
WHERE C.cpf IN (
    SELECT F.cpf_clientes
  	FROM frequenta F
  	WHERE F.endereco_livrarias = 'Rua 15, Bairro Jardim Itália, Cuiabá'
);

# Lista os clientes que frequentam a livraria de endereco Rua 15, Bairro Jardim Itália, Cuiabá.


SELECT *
FROM livros L
WHERE L.codigo IN (
	SELECT TG.codigo_livros
  	FROM tem_genero TG
  	WHERE TG.genero_generos = 'Clássico'
  	UNION
  	SELECT TG2.codigo_livros
  	FROM tem_genero TG2
  	WHERE TG2.genero_generos = 'Romance'
);

# Lista os livros que são clássicos ou de romance.


SELECT F.nome
FROM funcionarios F
WHERE F.id IN (
	SELECT LF.id_funcionarios
  	FROM liv_tem_func LF
  	WHERE LF.endereco_livrarias IN (
    	SELECT FQ.endereco_livrarias
      	FROM frequenta FQ
      	WHERE FQ.cpf_clientes = '18541275272'
    )
);

# Lista os funcionários que O cliente de cpf 18541275272 pode ter contato, considerando que ela apenas visita e visitará uma livraria.