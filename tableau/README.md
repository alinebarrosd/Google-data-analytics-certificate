# 📊 Tableau — Google Data Analytics

> Criação de visualizações e dashboards para comunicar descobertas aos stakeholders.

---

## 📌 O que é o Tableau?

Tableau é uma ferramenta de **Business Intelligence (BI)** que transforma dados em visualizações interativas e dashboards — sem necessidade de programação.

É amplamente usada por analistas de dados para compartilhar descobertas de forma clara com stakeholders técnicos e não técnicos.

---

## 🔗 Conectando Dados

O Tableau se conecta a diversas fontes:

| Fonte | Exemplos |
|-------|---------|
| Arquivos | Excel, CSV, JSON, PDF |
| Bancos de dados | MySQL, PostgreSQL, BigQuery |
| Serviços em nuvem | Google Sheets, Salesforce |

---

## 🧱 Conceitos Fundamentais

### Dimensões vs. Medidas

| Conceito | O que é | Exemplo |
|----------|---------|---------|
| **Dimensão** | Dado categórico — usado para segmentar | Região, Produto, Mês |
| **Medida** | Dado numérico — usado para calcular | Vendas, Lucro, Quantidade |

> O Tableau separa automaticamente os campos em Dimensões e Medidas ao importar os dados.

### Marks (Marcas)

Controlam como os dados aparecem na visualização:
- **Cor** — diferencia categorias ou intensidade
- **Tamanho** — representa magnitude
- **Rótulo** — exibe valores diretamente no gráfico
- **Detalhe** — adiciona granularidade sem alterar a visualização
- **Dica de ferramenta** — informação exibida ao passar o mouse

---

## 📈 Tipos de Gráficos

| Gráfico | Quando usar |
|---------|-------------|
| **Barras** | Comparar categorias |
| **Linhas** | Mostrar tendências ao longo do tempo |
| **Dispersão (Scatter Plot)** | Identificar correlações entre duas variáveis |
| **Mapa de calor (Heatmap)** | Destacar padrões por intensidade de cor |
| **Mapa geográfico** | Visualizar dados por localização |
| **Gráfico de pizza** | Mostrar proporções (usar com moderação) |
| **Treemap** | Comparar partes de um todo em hierarquias |

---

## 🖥️ Dashboards

Um dashboard reúne **múltiplos gráficos em uma única tela** para contar uma história completa com os dados.

### Boas práticas:
- Defina um **público-alvo** antes de criar
- Escolha um **tema central** — não coloque tudo de uma vez
- Use **filtros interativos** para que o usuário explore os dados
- Mantenha o **layout limpo** — menos é mais
- Garanta que o **dado mais importante** seja o primeiro elemento visível

---

## 📖 Storytelling com Dados

O Tableau tem o recurso **Story**, que organiza visualizações em sequência para guiar o stakeholder por uma narrativa:

```
Contexto → Problema → Análise → Descoberta → Recomendação
```

---

## ✅ Boas Práticas de Visualização no Tableau

- **Consistência de cores:** use a mesma cor para o mesmo elemento em todo o dashboard
- **Títulos descritivos:** o título do gráfico deve comunicar a conclusão, não apenas o tema
  - ❌ "Vendas por Região"
  - ✅ "Região Sul lidera vendas pelo terceiro trimestre consecutivo"
- **Evite poluição visual:** remova grades, bordas e elementos desnecessários
- **Eixo Y sempre em 0** para não distorcer a percepção de variação

---

## 🔑 Glossário

| Termo | Definição |
|-------|-----------|
| **Dimensão** | Campo categórico usado para segmentar dados |
| **Medida** | Campo numérico usado para calcular |
| **Marks** | Elementos visuais que controlam a aparência dos dados |
| **Dashboard** | Painel com múltiplas visualizações em uma tela |
| **Story** | Sequência de visualizações que conta uma narrativa |
| **Filtro** | Recurso que permite ao usuário explorar subconjuntos dos dados |
