class DetalheProduto
    include Capybara::DSL

    def SelTamanho
        find("#group_1", :from => "M")
    end 
    def SelQtdProd
        find("#quantity_wanted")
    end 
    def AdicionarProd
        find("#add-to-cart-or-refresh > div.product-add-to-cart > div > div.add > button")
    end   
end 