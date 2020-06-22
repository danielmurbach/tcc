class Login
    include Capybara::DSL

    def digitarLogin
        find("#login-form > section > div:nth-child(2) > div.col-md-6 > input")
    end 
    def digitarSenha
        find("#login-form > section > div:nth-child(3) > div.col-md-6 > div > input")
    end 
    def acessarConta
        find("#submit-login")
    end 
    def criarConta
        find("#content > div > a")
    end 
    def continuarLoginCompra
        find("#login-form > footer > button")
    end
end 