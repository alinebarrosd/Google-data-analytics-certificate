-- ============================================================
--  Google Data Analytics Certificate — Referência SQL
-- ============================================================


-- ----------------------------
-- SELECT & FROM
-- ----------------------------

-- Selecionar todas as colunas
SELECT * FROM tabela;

-- Selecionar colunas específicas
SELECT first_name, last_name
FROM customer_data.customer_name;

-- Selecionar com alias (apelido para coluna)
SELECT first_name AS nome, last_name AS sobrenome
FROM customer_data.customer_name;

-- Selecionar valores distintos (sem repetição)
SELECT DISTINCT Genre
FROM movie_data.movies;


-- ----------------------------
-- WHERE — Filtragem
-- ----------------------------

-- Igualdade
SELECT *
FROM customer_data.customer_name
WHERE first_name = 'Tony';

-- Diferente
SELECT *
FROM movie_data.movies
WHERE Genre != 'Horror';

-- Padrão com LIKE (% = curinga para um ou mais caracteres)
SELECT *
FROM customer_data.customer_name
WHERE last_name LIKE 'Ch%';
-- retorna: Chavez, Chen, Chaves...

-- Filtro por categoria
SELECT *
FROM movie_data.movies
WHERE Genre = 'Comedy';

-- Filtro com operadores numéricos
SELECT *
FROM imoveis
WHERE preco > 500000;

SELECT *
FROM imoveis
WHERE preco BETWEEN 300000 AND 700000;

-- Filtro com múltiplas condições
SELECT *
FROM movie_data.movies
WHERE Genre = 'Comedy'
AND Release_Year > 2000;

SELECT *
FROM movie_data.movies
WHERE Genre = 'Comedy'
OR Genre = 'Drama';

-- Filtro com lista de valores
SELECT *
FROM movie_data.movies
WHERE Genre IN ('Comedy', 'Drama', 'Action');

-- Filtrar valores nulos
SELECT *
FROM tabela
WHERE coluna IS NULL;

SELECT *
FROM tabela
WHERE coluna IS NOT NULL;


-- ----------------------------
-- ORDER BY — Ordenação
-- ----------------------------

-- Crescente (padrão: A→Z, 1→10, datas antigas→recentes)
SELECT *
FROM tabela
ORDER BY coluna;

-- Decrescente (Z→A, 10→1, datas recentes→antigas)
SELECT *
FROM tabela
ORDER BY coluna DESC;

-- Ordenar por múltiplas colunas
SELECT *
FROM movie_data.movies
ORDER BY Genre ASC, Release_Year DESC;


-- ----------------------------
-- WHERE + ORDER BY combinados
-- ----------------------------

-- Filmes de comédia ordenados por ano (mais recente primeiro)
SELECT *
FROM movie_data.movies
WHERE Genre = 'Comedy'
ORDER BY Release_Year DESC;


-- ----------------------------
-- Funções de Agregação
-- ----------------------------

SELECT SUM(preco)     FROM imoveis;   -- Soma total
SELECT AVG(preco)     FROM imoveis;   -- Média
SELECT MIN(preco)     FROM imoveis;   -- Menor valor
SELECT MAX(preco)     FROM imoveis;   -- Maior valor
SELECT COUNT(*)       FROM imoveis;   -- Contagem de linhas
SELECT COUNT(DISTINCT Genre) FROM movie_data.movies;  -- Contagem de valores únicos


-- ----------------------------
-- GROUP BY — Agrupamento
-- ----------------------------

-- Total de filmes por gênero
SELECT Genre, COUNT(*) AS total_filmes
FROM movie_data.movies
GROUP BY Genre;

-- Média de preço por bairro
SELECT bairro, AVG(preco) AS preco_medio
FROM imoveis
GROUP BY bairro;

-- Agrupamento com filtro de grupo (HAVING)
SELECT Genre, COUNT(*) AS total_filmes
FROM movie_data.movies
GROUP BY Genre
HAVING COUNT(*) > 10;


-- ----------------------------
-- Subconsultas (Subqueries)
-- ----------------------------

-- Imóveis com preço acima da média
SELECT *
FROM imoveis
WHERE preco > (SELECT AVG(preco) FROM imoveis);

-- Filmes do gênero mais popular
SELECT *
FROM movie_data.movies
WHERE Genre = (
    SELECT Genre
    FROM movie_data.movies
    GROUP BY Genre
    ORDER BY COUNT(*) DESC
    LIMIT 1
);


-- ----------------------------
-- LIMIT — Limitar resultados
-- ----------------------------

-- Retornar apenas os 10 primeiros resultados
SELECT *
FROM movie_data.movies
ORDER BY Release_Year DESC
LIMIT 10;


-- ----------------------------
-- Comentários no SQL
-- ----------------------------

SELECT
    field1,  /* este é o campo de sobrenome */
    field2   -- este é o campo de nome
FROM
    tabela   -- tabela de clientes
WHERE
    field1 LIKE 'Ch%';


-- ----------------------------
-- Estrutura Completa de uma Query
-- ----------------------------

SELECT
    Genre,
    COUNT(*)        AS total_filmes,
    MIN(Release_Year) AS ano_mais_antigo,
    MAX(Release_Year) AS ano_mais_recente
FROM
    movie_data.movies
WHERE
    Genre IN ('Comedy', 'Drama', 'Action')
GROUP BY
    Genre
HAVING
    COUNT(*) > 5
ORDER BY
    total_filmes DESC
LIMIT 10;
