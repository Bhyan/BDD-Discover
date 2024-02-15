# language: pt
Funcionalidade: Uso de Cupons no Checkout
    Como um usuário da Starbugs, eu quero poder aplicar cupons de desconto na página de checkout
    Para que eu possa obter reduções no preço de produtos, aumentando a satisfação com a minha experiência de compra.

  Contexto: 
    Dado que iniciei a compra do item:
      | name     | Café com Leite |
      | price    | R$ 19,99       |
      | delivery | R$ 10,00       |
      | total    | R$ 29,99       |

  Cenario: Aplicar desconto de 20%
    Quando aplico o cupom "MEUCAFE"
    Então o valor final da compra deve ser atualizado para "R$ 25,99"

  Cenario: Cupom Expirado
    Quando aplico o cupom "PROMO20"
    Então deve ver a seguinte notificação "Cupom expirado!"
    E o valor final deve permanecer o mesmo

  Cenario: Cupom Inválido
    Quando aplico o cupom "PROMO100"
    Então deve ver a seguinte notificação "Cupom inválido!"
    E o valor final deve permanecer o mesmo
