#language: pt

Funcionalidade: Saque no caixa eletronico

SENDO um cliente correntista do banco
POSSO sacar dinheiro em caixas eletronicos
PARA poder comprar em estabelecimentos que nao aceitam cartao de credito/debito

@doing
Cenario: Saque com  sucesso

Dado que meu saldo e de 1000.00
Quando faço um saque no valor de 100.00
Entao meu saldo deve ser de 900.00

@valor_maximo
Cenario: Valor maximo

Dado que meu saldo e de 1000.00
Quando faço um saque no valor de 701.00
Entao deve ser exibida a seguinte mensagem
"""
O valor limitado para saques e R$ 700
"""
E meu saldo deve ser de 1000.00

@valor_indisponivel
Cenario: Saldo indisponivel

Dado que meu saldo e de 100.0
Quando faço um saque no valor de 150.00
Entao meu saldo deve ser de 100.00
E deve ser exibida a seguinte mensagem
"""
Saldo insuficiente para saque
"""