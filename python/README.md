# 🐍 Python — Google Data Analytics

> Introdução ao Python aplicado à análise de dados — último módulo do curso.

---

## 📌 Por que Python para Análise de Dados?

Python é uma das linguagens mais usadas em ciência e análise de dados por ser:
- Fácil de ler e escrever
- Rica em bibliotecas voltadas para dados (Pandas, NumPy, Matplotlib)
- Capaz de lidar com grandes volumes de dados que planilhas não suportam

---

## 🧱 Variáveis e Tipos de Dados

Variáveis armazenam valores para uso posterior.

```python
# Inteiro (int)
ano = 2026

# Decimal (float)
taxa_crescimento = 0.85

# Texto (string)
nome_analista = "Maria"

# Booleano (bool)
dados_limpos = True
```

| Tipo | Exemplo | Uso comum |
|------|---------|-----------|
| `int` | `42` | Contagens, anos |
| `float` | `3.14` | Médias, percentuais |
| `str` | `"São Paulo"` | Nomes, categorias |
| `bool` | `True` / `False` | Condições, filtros |

---

## 🗂️ Estruturas de Dados

### Lista — sequência ordenada e mutável

```python
cidades = ["Cuiabá", "São Paulo", "Rio de Janeiro"]

# Acessar um item (índice começa em 0)
print(cidades[0])  # Cuiabá

# Adicionar item
cidades.append("Brasília")
```

### Dicionário — pares de chave e valor

```python
analista = {
    "nome": "Maria",
    "cargo": "Analista de Dados",
    "experiencia_anos": 2
}

# Acessar um valor
print(analista["cargo"])  # Analista de Dados
```

### Tupla — sequência ordenada e imutável

```python
coordenadas = (-15.60, -56.10)  # latitude, longitude de Cuiabá
```

---

## ⚙️ Funções

Blocos de código reutilizáveis que executam uma tarefa específica.

```python
# Definir uma função
def calcular_media(valores):
    return sum(valores) / len(valores)

# Chamar a função
vendas = [1200, 1500, 980, 1750]
print(calcular_media(vendas))  # 1357.5
```

---

## 🔀 Instruções Condicionais

Permitem que o código tome decisões com base em condições.

```python
receita = 50000
meta = 45000

if receita >= meta:
    print("Meta atingida!")
elif receita >= meta * 0.9:
    print("Próximo da meta.")
else:
    print("Abaixo da meta.")
```

---

## 🔁 Loops

Repetem um bloco de código automaticamente.

```python
# for — percorre uma sequência
meses = ["Jan", "Fev", "Mar"]
for mes in meses:
    print(mes)

# while — repete enquanto a condição for verdadeira
contador = 0
while contador < 3:
    print(f"Iteração {contador}")
    contador += 1
```

---

## 🧩 Programação Orientada a Objetos (POO)

Organiza o código em **objetos** que combinam dados (atributos) e comportamentos (métodos).

```python
# Classe = molde para criar objetos
class Analista:
    def __init__(self, nome, cargo):
        self.nome = nome        # atributo
        self.cargo = cargo      # atributo

    def apresentar(self):       # método
        print(f"Olá, sou {self.nome}, {self.cargo}.")

# Criar um objeto a partir da classe
analista1 = Analista("Maria", "Analista de Dados")
analista1.apresentar()  # Olá, sou Maria, Analista de Dados.
```

| Conceito | Definição |
|----------|-----------|
| **Classe** | Molde que define atributos e métodos |
| **Objeto** | Instância criada a partir de uma classe |
| **Atributo** | Dado armazenado no objeto |
| **Método** | Função que pertence a um objeto |

---

## 🔑 Glossário

| Termo | Definição |
|-------|-----------|
| **Variável** | Nome que armazena um valor |
| **Função** | Bloco de código reutilizável |
| **Loop** | Estrutura que repete um bloco de código |
| **Condicional** | Estrutura que executa código com base em uma condição |
| **Lista** | Sequência ordenada e mutável de valores |
| **Dicionário** | Estrutura de pares chave-valor |
| **Classe** | Molde para criar objetos na POO |
