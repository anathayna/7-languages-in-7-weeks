
class Centimetro
  def initialize(valor)
    @valor = valor
  end

  def to_s
    @valor.to_s
  end

  def to_pol
    @valor.to_s
  end
end

class Polegada
  def initialize(valor)
    @valor = valor
  end

  def to_s
    @valor.to_s
  end

  def to_cm
    @valor.to_s
  end
end

# conversão: 1 pol = 2,54 cm
# impressão da instância: valor + métrica. Exemplo: 13,00 cm
# precisão: 2 casas decimais. 
# Sugestão: usa inteiros
# Desafio: criar Jarda 1 jd = 91,44 cm. Como converter para polegadas?

cm = Centimetro.new(10)
puts "Centímeros:"
puts cm
puts "Convertendo para polegadas:"
puts cm.to_pol

puts "\n"

pol = Polegada.new(5)
puts "Polegadas:"
puts pol
puts "Convertendo para polegadas:"
puts pol.to_cm