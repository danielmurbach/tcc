#enconding: utf-8

  #Estanciando as Page Objets
  page = Home.new();
  pageLogin = Login.new();
  pageCadastro = Cadastro.new();
  #Criando variáveis Globais
  nome = Faker::Name.first_name
  senha = Faker::Internet.password

  Dado('que sou um usuário que não tenho cadastro ainda') do
    page.MenuLogin.click  
   
  end
  
  Quando('clicar no botão de acessar') do
    pageLogin.criarConta.click
  end
  
  Entao('devera exibir a tela de novo cadastro') do
    pageCadastro.has_text?('Criar uma conta')
  end
  
  Entao('vou preencher os meus dados pessoais') do
    
    pageCadastro.escolherTituloMasc.click
    pageCadastro.digitarNome.send_keys(nome)
    pageCadastro.digitarSobrenome.send_keys(Faker::Name.male_first_name)
    pageCadastro.digitarEmail.send_keys(Faker::Internet.email(name: nome))
    pageCadastro.digitarSenha.send_keys(senha)
    pageCadastro.digitarNasc.send_keys(Faker::Date.in_date_period(year: 1990, month: 9))
    pageCadastro.aceitarTermos.set(true)
    
  end
  
  Entao('salvar o cadastro') do
    pageCadastro.salvarDados.click
    pageCadastro.has_text?(nome)    
  end