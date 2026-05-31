# 03 — Preparar Dados Para Exploração

> **Plataforma:** Coursera · Google Data Analytics Certificate  
> **Concluído em:** abril de 2026

---

## 📦 Tipos de Fontes de Dados

| Tipo | Descrição | Confiabilidade |
|------|-----------|---------------|
| **Primeira mão (first-party)** | Coletados diretamente pelo analista ou equipe | ⭐⭐⭐ Alta |
| **Segunda mão (second-party)** | Coletados por outra organização e compartilhados | ⭐⭐ Média |
| **Terceira mão (third-party)** | Fontes externas diversas | ⭐ Requer verificação |

---

## 🗂️ Tipos de Dados

### Quantitativos vs. Qualitativos

| Tipo | Subtipo | Exemplo |
|------|---------|---------|
| **Quantitativo** | Discreto | Valores monetários com 2 casas decimais |
| **Quantitativo** | Contínuo | Duração de um filme em minutos |
| **Qualitativo** | Nominal (sem ordem) | Respostas "Sim", "Não", "Não sei" |
| **Qualitativo** | Ordinal (com ordem) | Classificação de 1 a 5 estrelas |

### Estruturados vs. Não Estruturados

- **Dados estruturados:** organizados em tabelas e planilhas; fáceis de consultar em bancos de dados
- **Dados não estruturados:** áudio, vídeo, imagens, texto livre, redes sociais — sem organização em linhas/colunas

> 💡 Há mais dados não estruturados do que estruturados no mundo.

---

## 🏗️ Modelagem de Dados

**Modelagem de dados** é o processo de criar diagramas que representam como os dados são organizados.

| Nível | Foco | Detalhes |
|-------|------|----------|
| **Conceitual** | Visão de alto nível | Sem detalhes técnicos; define requisitos de negócio |
| **Lógico** | Estrutura técnica | Relacionamentos, atributos e entidades |
| **Físico** | Banco de dados real | Nomes de tabelas, colunas e tipos de dados |

---

## 🔗 Bancos de Dados Relacionais

Um banco de dados relacional é um conjunto de tabelas com informações relacionadas, conectadas por campos em comum.

### Chaves

**Chave Primária (PK):**
- Identificador exclusivo de cada linha em uma tabela
- Cada valor deve ser único (ex: CPF, ID)
- Nunca pode ser nula
- Cada tabela tem **apenas uma** chave primária

**Chave Estrangeira (FK):**
- Cria o elo entre duas tabelas
- É a chave primária de *outra* tabela
- Uma tabela pode ter **várias** chaves estrangeiras

```
Tabela Vendas
├── id_venda (PK)
├── id_produto (FK → Tabela Produtos)
└── valor

Tabela Produtos
├── id_produto (PK)
└── nome_produto
```

> **Normalização:** processo de organizar dados em um banco relacional para reduzir redundâncias.

---

## 🔤 Tipos de Dados em Planilhas

| Tipo | Descrição | Exemplo |
|------|-----------|---------|
| **Número** | Valores quantitativos | `42`, `3.14`, `R$150,00` |
| **Texto (String)** | Sequências de caracteres | `"João Silva"`, `"SP"` |
| **Booleano** | Verdadeiro ou falso | `TRUE` / `FALSE` |

---

## 📋 Metadados — Dados sobre os Dados

Metadados descrevem o conteúdo dos dados sem ser o conteúdo em si.

**Informações que os metadados contêm:**
- Tipo de arquivo e formato
- Data, hora e quem criou
- Título e descrição
- Geolocalização (ex: fotos)
- Quem pode acessar ou modificar

### Os 3 Tipos de Metadados

| Tipo | Função | Exemplo |
|------|--------|---------|
| **Descritivos** | Identificar e localizar um dado | Título de um relatório |
| **Estruturais** | Mostrar como os dados estão organizados | Relação entre tabelas |
| **Administrativos** | Controle e permissões | Quem criou, quando foi modificado |

**Benefícios:** confiabilidade e consistência dos dados.

---

## 🔐 Segurança e Privacidade de Dados

### PII — Informações de Identificação Pessoal

São informações que podem rastrear a identidade de uma pessoa. A **anonimização** protege esses dados por meio de:
- Apagamento
- Hash
- Mascaramento com códigos de comprimento fixo

### Recursos de Segurança em Planilhas

- **Proteção de células/intervalos:** bloqueia fórmulas complexas contra edição acidental
- **Controle de acesso:** define quem pode abrir, visualizar ou editar
- **Ocultação de abas:** esconde cálculos intermediários

### Técnicas de Proteção

| Técnica | Como funciona |
|---------|---------------|
| **Criptografia** | Usa um algoritmo para tornar os dados ilegíveis sem a "chave" |
| **Tokenização** | Substitui dados por tokens aleatórios; originais ficam em local separado |

---

## 📂 Organização de Dados

**Três pilares de uma boa organização:**

1. **Convenções de Nomenclatura:** nomes lógicos, descritivos e consistentes com conteúdo, data e versão
2. **Pastas e Subpastas:** agrupar arquivos relacionados em hierarquia clara
3. **Arquivamento:** mover projetos antigos para local separado

**No contexto profissional:**
- Alinhe regras de nomenclatura com toda a equipe
- Evite duplicação de dados — use bancos de dados relacionais para centralizar informações

---

## 🌐 Dados Abertos

**Abertura** significa o livre acesso, uso e compartilhamento de dados — desde que privacidade e consentimento sejam garantidos.

**Os 3 padrões:**
1. **Disponibilidade e Acesso** — disponíveis na internet em formatos modificáveis
2. **Reutilização e Redistribuição** — podem ser misturados com outros conjuntos
3. **Participação Universal** — sem discriminação de quem pode usar

**Interoperabilidade:** capacidade de diferentes sistemas trocarem dados de forma transparente.
> Exemplo: receita médica digital enviada diretamente à farmácia.

---

## 🔑 Glossário

| Termo | Definição |
|-------|-----------|
| **Dados estruturados** | Organizados em formato de linhas e colunas |
| **Dados não estruturados** | Sem organização clara (áudio, vídeo, imagens) |
| **Metadados** | Dados que descrevem outros dados |
| **PII** | Informações de identificação pessoal |
| **Normalização** | Organização de dados para reduzir redundâncias |
| **Governança de dados** | Gerenciamento formal dos ativos de dados de uma empresa |
