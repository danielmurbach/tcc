class DetalheProduto
    include Capybara::DSL

    def SelTamanho
        find("#group_1")
    end 
    def SelQtdProd
        find("#quantity_wanted")
    end 
    def AdicionarProd
        find("#add-to-cart-or-refresh > div.product-add-to-cart > div > div.add > button")
    end 
    def SelProdCamisa1
        find("#content > section > div > article:nth-child(1) > div > a > img")
    end 
end 