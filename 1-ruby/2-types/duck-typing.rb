class Carro
    def faz_som
      "vrum"
    end
  end
  
  class Gato
    def faz_som
      "miau"
    end
  end
  
  def coisa_faz_som(obj)
    puts obj.faz_som
  end
  
  coisa_faz_som(Gato.new)
  coisa_faz_som(Carro.new)