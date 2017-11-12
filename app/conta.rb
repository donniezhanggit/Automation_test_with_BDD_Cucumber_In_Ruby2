class Conta
    attr_accessor :nome, :saldo, :saida

    def initialize(nome)
        self.nome = nome
        self.saldo = 0.0
    end

    def deposita(valor)
        self.saldo += valor.to_f
    end


    def saca(valor)
        if valor > self.saldo
            self.saida = 'Saldo insuficiente para saque'

        elsif valor > 700
            self.saida = 'O valor limitado para saques e R$ 700'
        else
        self.saldo -= valor.to_f
        end
    end


end

# fernando = Conta.new('Fernando')

# fernando.deposita(1000.00)
# fernando.saca(100)
# puts fernando.nome
# puts fernando.saldo

# camila = Conta.new('camila')
# camila.saca(701.00)
# puts camila.saida

