class CPF
    def initialize(cpf)
      raise TypeError.new("Deve ser String") unless cpf.class == String
      @cpf = cpf
      raise ArgumentError.new("CPF inválido") unless primeiro_digito_valido? && segundo_digito_valido?
    end
  
    def to_s
      @cpf[0..2] + "." + @cpf[3..5] + "." + @cpf[6..8] + "-" + @cpf[9..10]
    end
  
    def to_banco_dados
      @cpf
    end
  
    private
    def primeiro_digito_valido?
      11 - (@cpf[0].to_i*10 +
      @cpf[1].to_i*9 +
      @cpf[2].to_i*8 +
      @cpf[3].to_i*7 +
      @cpf[4].to_i*6 +
      @cpf[5].to_i*5 +
      @cpf[6].to_i*4 +
      @cpf[7].to_i*3 +
      @cpf[8].to_i*2) % 11 == @cpf[9].to_i
    end
  
    def segundo_digito_valido?
      11 - (@cpf[0].to_i*11 +
      @cpf[1].to_i*10 +
      @cpf[2].to_i*9 +
      @cpf[3].to_i*8 +
      @cpf[4].to_i*7 +
      @cpf[5].to_i*6 +
      @cpf[6].to_i*5 +
      @cpf[7].to_i*4 +
      @cpf[8].to_i*3 +
      @cpf[9].to_i*2)% 11 == @cpf[10].to_i
    end
  end
  
  if __FILE__ == $0
    # Inválidos: CPF.new(124) / CPF.new("000000000") / cpf = CPF.new("42439323013")
    cpf = CPF.new("42439323012")
    puts cpf
    puts cpf.to_banco_dados
  end