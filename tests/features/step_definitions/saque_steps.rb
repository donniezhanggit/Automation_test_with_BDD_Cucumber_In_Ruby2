require_relative '../../../app/conta'

Dado("que meu saldo e de {float}") do |saldo|
   @conta = Conta.new('joao')
   @conta.deposita(saldo)
  end
  
  Quando("faço um saque no valor de {float}") do |valor|
    @conta.saca(valor)
  end
  
  Entao("meu saldo deve ser de {float}") do |saldo_final|
   expect(@conta.saldo).to eql saldo_final
  end
  Entao("deve ser exibida a seguinte mensagem") do |mensagem|
    # puts mensagem
    # puts @conta.saida
    expect(@conta.saida).to eql mensagem
  end
  
  