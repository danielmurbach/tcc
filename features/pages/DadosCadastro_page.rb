class Cadastro
    include Capybara::DSL

    def escolherTituloMasc
        find("#customer-form > section > div:nth-child(2) > div.col-md-6.form-control-valign > label:nth-child(1)")
    end 
    def escolherTituloMasc
        find("#customer-form > section > div:nth-child(2) > div.col-md-6.form-control-valign > label:nth-child(2)")
    end 
    def digitarNome
        find("#customer-form > section > div:nth-child(3) > div.col-md-6 > input")
    end 
    def digitarSobrenome
        find("#customer-form > section > div:nth-child(4) > div.col-md-6 > input")
    end 
    def digitarEmail
        find("#customer-form > section > div:nth-child(5) > div.col-md-6 > input")
    end 
    def digitarSenha
        find("#customer-form > section > div:nth-child(6) > div.col-md-6 > div > input")
    end 
    def digitarNasc
        find("#customer-form > section > div:nth-child(7) > div.col-md-6 > input")
    end 
    def aceitarTermos
        find("#customer-form > section > div:nth-child(10) > div.col-md-6 > span")
    end 
    def salvarDados
        find("#customer-form > footer > button")
    end 
end 
