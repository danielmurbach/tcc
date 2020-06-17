#language:pt
#enconding: utf-8

Funcionalidade: Solicitar a cotacao de um seguro de carro
@carro
Esquema do Cenario: Preencher os dados para solicitar um seguro
Dado que eu acessei a tela de automovel vou preencher os dados de <dadosveiculo>, <dadosseguro> e <dadosproduto>
Quando ver o valor do seguro e escolho a opcao de seguro <gold>
Entao Finalizo a contratacao
Exemplos:
|dadosveiculo|dadosseguro|dadosproduto|
|"veiculo"   |"seguro"   |"produto"   |