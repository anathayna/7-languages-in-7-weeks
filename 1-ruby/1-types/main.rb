
class Centimetro
  def initialize(valor)
    @valor = valor
  end

  def to_s
    @valor.to_s + "cm"
  end

  # 1 cm = 0,3937 pol
  def to_pol
    x = @valor * 0.3937;
    x.to_s + "pol"
  end
end

class Polegada
  def initialize(valor)
    @valor = valor
  end

  def to_s
    @valor.to_s + "pol"
  end

  # 1 pol = 2,54 cm
  def to_cm
    x = @valor * 2.54;
    x.to_s + "cm"
  end
end

class Jarda
  def initialize(valor)
    @valor = valor
  end

  def to_s
    @valor.to_s + "jd"
  end

  # 1 jd = 36 pol
  def to_jd
    x = @valor * 36;
    x.to_s + "pol"
  end
end

# conversão: 1 pol = 2,54 cm
# impressão da instância: valor + métrica. Exemplo: 13,00 cm
# precisão: 2 casas decimais. 
# Sugestão: usar inteiros
# Desafio: criar Jarda 1 jd = 91,44 cm. Como converter para polegadas?

cm = Centimetro.new(20)
puts "Centímeros:"
puts cm
puts "Convertendo para polegadas:"
puts cm.to_pol

puts "\n"

pol = Polegada.new(15)
puts "Polegadas:"
puts pol
puts "Convertendo para centímeros:"
puts pol.to_cm

puts "\n"

pol = Jarda.new(5)
puts "Jardas:"
puts pol
puts "Convertendo para polegadas:"
puts pol.to_jd