class ProdutoTipo1:
  def __init__(self, nome, valor):
    self.nome = nome
    self.valor = valor

  def calcularimposto(self):
    return self.valor * 0.10

class ProdutoTipo2:
  def __init__(self, nome, valor):
    self.nome = nome
    self.valor = valor

  def calcularimposto(self):
    return self.valor * 0.05

class ProdutoTipo3:
  def __init__(self, nome, valor):
    self.nome = nome
    self.valor = valor

  def calcularimposto(self):
    return self.valor * 0.10

class Servico:
  def __init__(self, nome, valor):
    self.nome = nome
    self.valor = valor

  def calcularimposto(self):
    return self.valor * 0.10

class Imposto:
  def __init__(self, nome, valor):
    self.nome = nome
    self.valor = valor

  def calcularimposto(self):
    return self.valor * 0.10

produto1 = ProdutoTipo1("doce", 50.0)
produtos = [produto1]

for produto in produtos:
  print(produto.nome + " - Imposto: " + str(produto.calcularimposto()))

# python ./main.py