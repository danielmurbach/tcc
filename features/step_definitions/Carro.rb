#enconding: utf-8
file = YAML.load_file(File.join(Dir.pwd, "/features/support/fixtures/dados.yaml"))


Dado("que eu acessei a tela de automovel vou preencher os dados de {string}, {string} e {string}") do |veiculo, seguro, produto|
    page = Automate.new()
    sleep 3
    page.MenuCarro.click
    page.Marca.select("Volkswagen")
    sleep 3
    page.PotenciaMotor.send_keys(1800)
    sleep 2
    page.DataFabricacao.send_keys("09/01/2018")
    page.NumeroLugares.select("4")
    page.Combustivel.select("Gas")
    page.PrecoTabela.send_keys("12999")
    page.NumeroLicenca.send_keys("HY675F")
    page.KMAnual.send_keys(10000)
    page.Next.click
    sleep 2
    page.Nome.send_keys(Faker::Name.first_name)
    page.Sobrenome.send_keys(Faker::Name.last_name)
    page.Nascimento.send_keys("09/20/1990") 
    page.GeneroM.set(true) 
    page.Endereco.send_keys(Faker::Address.street_address)
    page.Pais.select(Faker::Address.country_by_code(code: 'US'))
    page.CEP.send_keys("2382")
    page.Ocupacao.select("Employee")
    page.HobbieSky.set(true)
    page.NextProduct.click
    sleep 2
    page.DataInicio.send_keys("12/12/2020")
    page.ValorSeguro.select("5.000.000,00")  
    page.BonusSeguro.select("Bonus 1")
    page.DanosSeguro.select("Full Coverage")
    page.OpcionaisAdvogado.set(true)
    page.CarroReserva.select("Yes")
    page.NextPrice.click
    sleep 4    
  end
  
  Quando("ver o valor do seguro e escolho a opcao de seguro <gold>") do
    page = Automate.new()
    page.SelecionarGold.click
    sleep 2
    page.NextContrato.click
    sleep 2
  end
  
  Entao("Finalizo a contratacao") do
    page = Automate.new()
    page.Email.send_keys(Faker::Internet.email)
    page.Telefone.send_keys(Faker::Number.number(digits: 8))
    sleep 2
    #page.Usuario.send_keys(Faker::Internet.username)
    page.Usuario.send_keys(Faker::Internet.username)
    $senha = Faker::Internet.password(min_length: 8)
    sleep 3
    page.Senha.send_keys($senha)
    puts $senha
    page.Confirmar_Senha.send_keys($senha)
    puts $senha
    sleep 2
    page.EnviarDados.click
    sleep 10
    page.has_text?("Sending e-mail success!")
     expect(page.has_text?("Sending e-mail success!")).to eq true
     page.Finalizar.click
  end