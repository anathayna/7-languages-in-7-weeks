class Produto1:
  def __init__(self, nome, valor):
    self.nome = nome
    self.valor = valor

  def calcularimposto(self):
    return self.valor * 0.10

class Produto2:
  def __init__(self, nome, valor):
    self.nome = nome
    self.valor = valor

  def calcularimposto(self):
    if (self.valor * 0.05) > 10:
      return self.valor == 10
    else:
      return self.valor * 0.05

class Produto3:
  def __init__(self, nome, valor):
    self.nome = nome
    self.valor = valor

  def calcularimposto(self):
    return ((self.valor * 0.10) + self.valor) * 0.10

class Servico:
  def __init__(self, nome, valor):
    self.nome = nome
    self.valor = valor

  def calcularimposto(self):
    return self.valor * 0.06

class Heranca:
  def __init__(self, nome, valor):
    self.nome = nome
    self.valor = valor

  def calcularimposto(self):
    return self.valor * 0.18

produto1 = Produto1("doce", 5.0)
produto2 = Produto2("salgado", 10.0)
produto3 = Produto3("luz", 100.0)
servico1 = Servico("servico", 80.0)
heranca1 = Heranca("heranca", 50000.0)
produtos = [produto1, produto2, produto3, servico1, heranca1]

for produto in produtos:
  print(produto.nome + " - imposto: " + str(produto.calcularimposto()))
