#language:pt
#enconding: utf-8

@usuariosemcompra
Funcionalidade: Realizar um cadastro de um usuário novo 

Esquema do Cenario: Realizar um cadastro novo sem que seja realizado uma compra
Dado que sou um usuário que não tenho cadastro ainda 
Quando clicar no botão de acessar 
Entao devera exibir a tela de novo cadastro 
E vou preencher os meus dados pessoais 
E salvar o cadastro

# Esquema do Cenario: Realizar o login com um usuário já cadastrado
# Dado que sou um usuário que acabei de realizar o cadastro
# Quando preencher os meus dados de login e senha
# Entao devo ter o login realizado
# E deverá ser possivel acessar a minha área de cliente