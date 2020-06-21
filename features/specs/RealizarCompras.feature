#language:pt
#enconding: utf-8

Funcionalidade: Realizar uma compra para um usuário novo e um já cadastrado
@compranovo
Esquema do Cenario: Realziar uma compra com um usuário novo
Dado que sou um cliente novo 
E vou selecionar o item desejado
E vou selecionar o tamanho, quantidade, adiciono no carrinho e finalizo o pedido
Quando visualizar os itens no carrinho eu finalizo o pedido
Entao o sistema irá me apresentar a tela de comprar como convidado
E preencho os dados de informações de pessoais e continuo 
E preencho os dados de endereço e continuo
E seleciono o frete que eu desejo
E selecionar a forma de pagamento
E finalizar

@compraexistente
Esquema do Cenario: Realziar uma compra com um usuário novo
Dado que sou um cliente já existente
E vou selecionar o item desejado
E vou selecionar o tamanho, quantidade, adiciono no carrinho e continuo o pedido
E vou selecionar outro produto e finalizo a compra
Quando visualizar os itens no carrinho eu finalizo o pedido
Entao o sistema irá me apresentar a tela para realizar o login
E preencho os dados de informações de <login> e <senha> e acesso o sistema
E qual o endereço desejo
E seleciono o frete que eu desejo
E selecionar a forma de pagamento
E finalizar

Examples:
| login     | senha   |
| "acesso"  | "senha" |








