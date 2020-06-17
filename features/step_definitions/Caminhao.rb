#enconding: utf-8

Dado("que eu acessei a tela de caminhao vou preencher os dados de {string}, {string} e {string}") do |string, string2, string3|
    pageCaminhao = Caminhao.new()
    pageCaminhao.MenuCaminhao.click
    page = Automate.new()
    page.Marca.select("Volvo")
    page.PotenciaMotor.send_keys(1000)
    sleep 3
    page.DataFabricacao.send_keys("09/01/2018")
    page.NumeroLugares.select("4")
    page.Combustivel.select("Gas")
    sleep 3
    pageCaminhao.Payload.send_keys("1000")
    pageCaminhao.PesoTotal.send_keys("1000")
    page.PrecoTabela.send_keys(12000)
    sleep 3
    page.NumeroLicenca.send_keys(Faker::Number.hexadecimal(digits: 5))
    page.KMAnual.send_keys(Faker::Number.number(digits: 5))
    sleep 5
    page.Next.click
    sleep 5
  end
  
  Quando("ver o valor do seguro e escolho a opcao de seguro <platinum>") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao("Finalizo a contratacao") do
    pending # Write code here that turns the phrase above into concrete actions
  end