#enconding: utf-8

   #Estanciando as Page Objets
    pageHome = Home.new();
    pageLogin = Login.new();
    pageCadastro = Cadastro.new();
    pageDetalhe = DetalheProduto.new();
    #Criando variáveis Globais
    nome = Faker::Name.first_name
    senha = Faker::Internet.password 
    email = Faker::Internet.email(name: nome) 
Dado('que sou um cliente novo') do
    pageHome.has_text?('Entrar')
  end
  
  Dado('vou selecionar o item desejado') do
    pageHome.SelProdCamisa2.click
  end
  
  Dado('vou selecionar o tamanho, quantidade, adiciono no carrinho e finalizo o pedido') do
    pageHome.has_text?('P')
    pageDetalhe.selQtdProd.set("")
    pageDetalhe.selQtdProd.send_keys('2')
    pageDetalhe.adicionarProd.click
    sleep 2
    pageDetalhe.finalizarPedidoModal.click
    sleep 2
    
  end
  
  Quando('visualizar os itens no carrinho eu finalizo o pedido') do
    pageDetalhe.finalizarPedidoCarrinho.click
    sleep 2
  end
  
  Entao('o sistema irá me apresentar a tela de comprar como convidado') do
    pageHome.has_text?('INFORMAÇÕES PESSOAIS')    
  end
  
  Entao('preencho os dados de informações de pessoais e continuo') do
    pageCadastro.escolherTituloMasc.click
    pageCadastro.digitarNome.send_keys(nome)
    pageCadastro.digitarSobrenome.send_keys(Faker::Name.male_first_name)
    pageCadastro.digitarEmail.send_keys(email)
    pageCadastro.digitarSenha.send_keys(senha)
    pageCadastro.digitarNasc.send_keys(Faker::Date.in_date_period(year: 1990, month: 9))
    pageCadastro.aceitarTermos.set(true)
    sleep 2
    pageDetalhe.continuarCadastro.click
    sleep 3
  end
  
  Entao('preencho os dados de endereço e continuo') do
    pageDetalhe.digitarEnd.send_keys(Faker::Address.street_address)
    pageDetalhe.digitarCEP.send_keys("04155-030")
    pageDetalhe.digitarCidade.send_keys(Faker::Address.country_by_code(code: 'BR'))
    pageDetalhe.continuarEnd.click
    sleep 2

  end
  
  Entao('seleciono o frete que eu desejo') do
    pageDetalhe.has_text?('Transportadora 1')  
    pageDetalhe.continuarTrans.click
    
  end
  
  Entao('selecionar a forma de pagamento') do
    pageDetalhe.pagamentoDinheiro.click
    pageDetalhe.has_text?('Você paga no ato da entrega da mercadoria')
    pageDetalhe.aceitarTermosPagamento.set(true)
    sleep 2    
  end
  
  Entao('finalizar') do
    pageDetalhe.finalizarPagamento.click
    sleep 5
    pageDetalhe.has_text?('SEU PEDIDO FOI CONFIRMADO')
  end
  
  Dado('que sou um cliente já existente e vou acessar o sistema') do   
    pageHome.MenuLogin.click
    pageLogin.digitarLogin.send_keys(email)
    pageLogin.digitarSenha.send_keys(senha)
    pageLogin.acessarConta.click    
    pageHome.menuHome.click
  end
  
  Dado('vou selecionar o tamanho, quantidade, adiciono no carrinho e continuo o pedido') do
    pageHome.has_text?('P')
    pageDetalhe.selQtdProd.set("")
    pageDetalhe.selQtdProd.send_keys('2')
    pageDetalhe.adicionarProd.click
    sleep 2
    
  end
  
  Dado('vou selecionar outro produto e finalizo a compra') do
    pageDetalhe.continuarComprando.click
    sleep 2
    pageHome.menuHome.click
    pageHome.SelProdCaneca1.click
    pageDetalhe.selQtdProd.set("")
    pageDetalhe.selQtdProd.send_keys('2')
    pageDetalhe.adicionarProd.click
    sleep 2
    pageDetalhe.finalizarPedidoModal.click
    sleep 2
    pageDetalhe.finalizarPedidoCarrinho.click
  end
  
  Entao('o sistema irá me apresentar a tela já logada') do
    pageDetalhe.has_text?('ENDEREÇOS')
  end
  
  Entao('seleciono qual o endereço desejo') do
    pageDetalhe.continuarSelEndLogado.click
    sleep 3
  end
  