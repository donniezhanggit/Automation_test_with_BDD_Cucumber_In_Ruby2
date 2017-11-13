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

@tentativa_saque
Esquema do Cenario: Tentativa de saque

Dado que meu saldo e de <saldo_inicial>
Quando faço um saque no valor de <valor_saque>
Entao meu saldo deve ser de <Valor_final>
E deve ser exibida a seguinte mensagem
"""
<mensagem_saida>
"""
Exemplos:
|saldo_inicial|valor_saque|Valor_final|mensagem_saida|
|1000.00 |710.00|1000.00|O valor limitado para saques e R$ 700 |
|100.00|150.00|100.00|Saldo insuficiente para saque|




# @valor_maximo
# Cenario: Valor maximo

# Dado que meu saldo e de 1000.00
# Quando faço um saque no valor de 701.00
# Entao deve ser exibida a seguinte mensagem
# """
# O valor limitado para saques e R$ 700
# """
# E meu saldo deve ser de 1000.00

# @valor_indisponivel
# Cenario: Saldo indisponivel

# Dado que meu saldo e de 100.0
# Quando faço um saque no valor de 150.00
# Entao meu saldo deve ser de 100.00
# E deve ser exibida a seguinte mensagem
# """
# Saldo insuficiente para saque
# """