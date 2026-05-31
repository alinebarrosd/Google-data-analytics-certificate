# ============================================================
#  Google Data Analytics Certificate — Introdução ao Python
# ============================================================

# ----------------------------
# Variáveis e Tipos de Dados
# ----------------------------

ano = 2026                        # int
taxa_crescimento = 0.85           # float
nome_analista = "Maria"           # str
dados_limpos = True               # bool


# ----------------------------
# Estruturas de Dados
# ----------------------------

# Lista — sequência ordenada e mutável
cidades = ["Cuiabá", "São Paulo", "Rio de Janeiro"]
cidades.append("Brasília")
print(cidades[0])  # Cuiabá

# Dicionário — pares de chave e valor
analista = {
    "nome": "Maria",
    "cargo": "Analista de Dados",
    "experiencia_anos": 2
}
print(analista["cargo"])  # Analista de Dados

# Tupla — sequência ordenada e imutável
coordenadas = (-15.60, -56.10)  # latitude, longitude de Cuiabá


# ----------------------------
# Funções
# ----------------------------

def calcular_media(valores):
    return sum(valores) / len(valores)

vendas = [1200, 1500, 980, 1750]
print(calcular_media(vendas))  # 1357.5


# ----------------------------
# Instruções Condicionais
# ----------------------------

receita = 50000
meta = 45000

if receita >= meta:
    print("Meta atingida!")
elif receita >= meta * 0.9:
    print("Próximo da meta.")
else:
    print("Abaixo da meta.")


# ----------------------------
# Loops
# ----------------------------

# for — percorre uma sequência
meses = ["Jan", "Fev", "Mar"]
for mes in meses:
    print(mes)

# while — repete enquanto a condição for verdadeira
contador = 0
while contador < 3:
    print(f"Iteração {contador}")
    contador += 1


# ----------------------------
# Programação Orientada a Objetos
# ----------------------------

class Analista:
    def __init__(self, nome, cargo):
        self.nome = nome
        self.cargo = cargo

    def apresentar(self):
        print(f"Olá, sou {self.nome}, {self.cargo}.")

analista1 = Analista("Maria", "Analista de Dados")
analista1.apresentar()  # Olá, sou Maria, Analista de Dados.
