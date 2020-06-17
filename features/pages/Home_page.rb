class Home
    include Capybara::DSL

    def SelProdCamisa1
        find("#content > section > div > article:nth-child(1) > div > a > img")
    end 
    def SelProdCamisa2
        find("#content > section > div > article:nth-child(2) > div > a > img")
    end 
    def SelProdQuadro1
        find("#content > section > div > article:nth-child(3) > div > a > img")
    end 
    def SelProdQuadro2
        find("#content > section > div > article:nth-child(4) > div > a > img")
    end 
    def SelProdQuadro3
        find("#content > section > div > article:nth-child(5) > div > a > img")
    end 
    def SelProdCaneca1
        find("#content > section > div > article:nth-child(6) > div > a > img")
    end 
    def SelProdCaneca2
        find("#content > section > div > article:nth-child(7) > div > a > img")
    end 
    def SelProdCaneca3
        find("#content > section > div > article:nth-child(8) > div > a > img")
    end 
    def TodosProdutos
        find("#content > section > a")
    end 
    def DigitarProd
        find("#search_widget > form > input.ui-autocomplete-input")
    end 
    def BuscarProd
        find("#search_widget > form > button")
    end 
    def MenuRoupas
        find("#category-3 > a")
    end 
    def MenuAcessorios
        find("#category-6 > a")
    end 
    def MenuLogin
        find("#_desktop_user_info > div > a")
    end
end 