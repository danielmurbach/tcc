class DetalheProduto
    include Capybara::DSL

    def selTamanho
        find("#group_1")
            end 
    def selQtdProd
        find("#quantity_wanted")
    end 
    def adicionarProd
        find("#add-to-cart-or-refresh > div.product-add-to-cart > div > div.add > button")
    end   
    def finalizarPedidoModal
        find("#blockcart-modal > div > div > div.modal-body > div > div.col-md-7 > div > div > a")        
    end
    def finalizarPedidoCarrinho
        find("#main > div > div.cart-grid-right.col-xs-12.col-lg-4 > div.card.cart-summary > div.checkout.cart-detailed-actions.card-block > div > a")
    end 
    def continuarCadastro
        find("#customer-form > footer > button")        
    end 
    def digitarEnd
        find("#delivery-address > div > section > div:nth-child(9) > div.col-md-6 > input")
    end 
    def digitarBairro
        find("#delivery-address > div > section > div:nth-child(10) > div.col-md-6 > input")
    end 
    def digitarCEP
        find("#delivery-address > div > section > div:nth-child(11) > div.col-md-6 > input")
    end 
    def digitarCidade
        find("#delivery-address > div > section > div:nth-child(12) > div.col-md-6 > input")
    end 
    def difitarTelefone
        find("#delivery-address > div > section > div:nth-child(14) > div.col-md-6 > input")
    end 
    def continuarEnd
        find("#delivery-address > div > footer > button")
    end 
    def continuarTrans
        find("#js-delivery > button")
    end 
    def pagamentoDinheiro
        find("#payment-option-1-container > label > span")
    end 
    # def pagamentoCartao
    #     find("#payment-option-1-container > label > span")
    # end 
    def aceitarTermosPagamento
        find("#conditions-to-approve")
    end
    def finalizarPagamento
        find("#payment-confirmation > div.ps-shown-by-js > button")
    end
    def continuarComprando
        find("#blockcart-modal > div > div > div.modal-body > div > div.col-md-7 > div > div > button")
    end 
    def acessarContaCompra
        find("#checkout-personal-information-step > div > ul > li:nth-child(3) > a")
    end 
    def continuarSelEndLogado
        find("#checkout-addresses-step > div > div > form > div.clearfix > button")
    end 
    
end 