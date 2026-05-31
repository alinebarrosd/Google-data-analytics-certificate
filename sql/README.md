# 🗄️ Comandos SQL — Google Data Analytics

> Referência rápida de todos os comandos SQL vistos ao longo do curso.

---

## 📌 Estrutura Básica de uma Consulta

```sql
SELECT coluna1, coluna2   -- Quais colunas você quer ver (* = todas)
FROM tabela               -- De qual tabela os dados vêm
WHERE condição            -- Filtros a aplicar
ORDER BY coluna;          -- Como ordenar o resultado (sempre por último)
```

---

## 🔎 SELECT & FROM

```sql
-- Selecionar todas as colunas
SELECT * FROM tabela

-- Selecionar colunas específicas
SELECT first_name, last_name FROM customer_data.customer_name
```

---

## 🧹 WHERE — Filtragem

```sql
-- Igualdade
SELECT * FROM customer_data.customer_name
WHERE first_name = 'Tony'

-- Padrão com LIKE (% = curinga para um ou mais caracteres)
SELECT * FROM customer_data.customer_name
WHERE last_name LIKE 'Ch%'
-- retorna: Chavez, Chen, Chaves...

-- Filtro em outro tipo de dado
SELECT * FROM movie_data.movies
WHERE Genre = 'Comedy'
```

---

## 🔃 ORDER BY — Ordenação

```sql
-- Crescente (padrão: A→Z, 1→10, datas antigas→recentes)
SELECT * FROM tabela
ORDER BY coluna

-- Decrescente (Z→A, 10→1, datas recentes→antigas)
SELECT * FROM tabela
ORDER BY coluna DESC
```

---

## 🔎 + 🔃 WHERE + ORDER BY combinados

```sql
-- Filmes de comédia ordenados por ano (mais recente primeiro)
SELECT *
FROM movie_data.movies
WHERE Genre = 'Comedy'
ORDER BY Release_Year DESC
```

---

## ➕ Funções de Agregação

```sql
-- Soma
SELECT SUM(coluna) FROM tabela

-- Média
SELECT AVG(coluna) FROM tabela

-- Menor valor
SELECT MIN(coluna) FROM tabela

-- Maior valor
SELECT MAX(coluna) FROM tabela

-- Contagem de linhas
SELECT COUNT(coluna) FROM tabela
```

---

## 🔗 Subconsultas (Subqueries)

Uma consulta dentro de outra — útil para usar um resultado intermediário como filtro.

```sql
-- Ver apenas imóveis com preço acima da média
SELECT *
FROM imoveis
WHERE preco > (SELECT AVG(preco) FROM imoveis)
```

---

## 💬 Comentários no SQL

```sql
SELECT
    field1  /* este é o campo de sobrenome */
FROM
    tabela  -- esta é a tabela de clientes
WHERE
    field1 LIKE 'Ch%';
```

---

## 📋 Referência Rápida

| Cláusula | Função |
|----------|--------|
| `SELECT` | Escolhe quais colunas retornar |
| `FROM` | Define a tabela de origem |
| `WHERE` | Filtra linhas por condição |
| `LIKE` | Busca por padrão de texto |
| `%` | Curinga: representa qualquer sequência de caracteres |
| `ORDER BY` | Ordena o resultado |
| `DESC` | Inverte a ordem (decrescente) |
| `SUM` | Soma valores |
| `AVG` | Calcula a média |
| `MIN` / `MAX` | Menor / maior valor |
| `COUNT` | Conta linhas |

---

> 💡 **Dica:** `ORDER BY` deve ser sempre a última cláusula da consulta.
