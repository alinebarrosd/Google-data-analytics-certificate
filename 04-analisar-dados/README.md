# 04 — Analisar Dados Para Responder Perguntas

> **Plataforma:** Coursera · Google Data Analytics Certificate  
> **Concluído em:** abril de 2026

---

## 🔄 As 4 Fases da Análise de Dados

A análise é um processo disciplinado para encontrar tendências e relacionamentos.

### 1. Organizar os Dados
Estruturação inicial — reunir todos os dados em um só lugar (SQL ou planilha) antes de começar a calcular.

### 2. Formatar e Ajustar
Usar **filtros e classificação (sorting)** para tornar os dados brutos legíveis.
- Filtrar apenas períodos relevantes
- Classificar custos do maior para o menor

### 3. Obter Informações de Outras Pessoas
A análise não acontece no vácuo. Colaborar com outras pessoas revela obstáculos que os números sozinhos não mostram.

### 4. Transformar os Dados
Identificar padrões e realizar cálculos — transformar dados brutos em **insights** (ex: dados de vendas + custos = Margem de Lucro).

---

## 🔃 Classificação (Sorting)

Organizar dados em uma **ordem significativa** baseada em uma métrica específica.

| Tipo de Ordem | Exemplo |
|---------------|---------|
| Numérica | Do menor para o maior preço |
| Alfabética | Nomes de livros em bibliotecas |
| Cronológica | Mensagens da mais recente para a mais antiga |
| Geográfica | Do restaurante mais próximo para o mais distante |

### Função SORT em Planilhas

```
=SORT(intervalo; coluna_índice; TRUE/FALSE)
```

- **Intervalo:** células que serão processadas (ex: `A2:D6`)
- **Coluna:** número de ordem da coluna no intervalo (ex: coluna B = `2`)
- **Ordem:** `TRUE` para crescente (A→Z, 1→10) | `FALSE` para decrescente

### Classificação personalizada por múltiplas condições:
1. Selecionar o intervalo
2. Marcar "Os dados têm linha de cabeçalho"
3. Definir a primeira condição (ex: se o convite foi enviado)
4. Adicionar condições subsequentes (ex: ordenar por nome)

---

## 🔎 Filtragem (Filtering)

Processo de **ocultar dados** que não atendem a critérios específicos, reduzindo grandes conjuntos a subconjuntos relevantes.

> Objetivo: reduzir o ruído e focar no que é necessário.

---

## 🗄️ SQL — Consultas Essenciais

### Estrutura de uma Consulta

```sql
SELECT *          -- Quais colunas você quer ver
FROM tabela       -- De qual tabela os dados vêm
WHERE condição    -- Quais filtros aplicar
ORDER BY coluna   -- Como o resultado deve ser exibido
```

> ⚠️ `ORDER BY` deve ser sempre a **última cláusula** da consulta.

### Filtragem com WHERE

```sql
SELECT * FROM movie_data.movies
WHERE Genre = 'Comedy'
```

### Ordenação com ORDER BY

```sql
-- Crescente (padrão)
SELECT * FROM tabela ORDER BY coluna

-- Decrescente
SELECT * FROM tabela ORDER BY coluna DESC
```

### Combinando filtro e ordenação

```sql
SELECT *
FROM movie_data.movies
WHERE Genre = 'Comedy'
ORDER BY Release_Year DESC
```

---

## ✅ Validação de Dados em Planilhas

Diferente de *verificar* se os dados estão corretos, a **validação** controla o que pode ser digitado em uma célula.

### Principais Usos

| Recurso | Como funciona | Benefício |
|---------|---------------|-----------|
| **Listas suspensas** | Define opções pré-aprovadas (ex: "Em andamento", "Concluído") | Elimina erros de digitação |
| **Caixas de seleção** | Transforma célula em checkbox com valores personalizados | Facilita estados binários |
| **Proteção de dados** | Rejeita entradas que não seguem a regra | Evita apagar fórmulas acidentalmente |

---

## ➕ Agregação de Dados

Agregação é o processo de **reunir e combinar** dados para criar um resumo único.

| Individual | Agregado |
|------------|----------|
| Uma venda | Total de vendas do mês |
| Nota de um aluno | Média da turma |
| Preço de um imóvel | Tendência do mercado em 10 anos |

### Funções de Agregação

| Função | O que faz |
|--------|-----------|
| `SUM` | Soma de valores |
| `AVG` | Média aritmética |
| `MIN` / `MAX` | Menor e maior valor |
| `COUNT` | Contagem de itens |

### Subconsultas (Subqueries)

Uma consulta dentro de outra consulta — útil quando você precisa de um resultado intermediário.

```sql
-- Ver casas com preço acima da média
SELECT *
FROM imoveis
WHERE preco > (SELECT AVG(preco) FROM imoveis)
```

---

## 📈 Cálculos Essenciais

### Crescimento e Taxa

```
Diferença Absoluta    = Vendas_Atual - Vendas_Anterior
Taxa de Crescimento   = (Vendas_Atual - Vendas_Anterior) / Vendas_Anterior
```

> 💡 Formatar como **Porcentagem** torna o dado mais legível para stakeholders.

### Funções Estatísticas Básicas

- **MIN/MAX:** identificam extremos sem erro humano em tabelas grandes
- **AVERAGE:** essencial para entender sazonalidade e tendências centrais

---

## 🌡️ Formatação Condicional (Heatmap)

Escala de cores que permite ao cérebro identificar padrões **antes mesmo de ler os números**.

> Um verde vibrante destacando os melhores meses facilita a vida de quem vai tomar decisões baseadas nos dados.

---

## 🔑 Glossário

| Termo | Definição |
|-------|-----------|
| **Sorting** | Organizar dados em ordem significativa |
| **Filtering** | Ocultar dados que não atendem a critérios |
| **Agregação** | Reunir dados para criar um resumo único |
| **Subconsulta** | Uma consulta SQL dentro de outra |
| **YoY** | Year over Year — comparação anual de crescimento |
