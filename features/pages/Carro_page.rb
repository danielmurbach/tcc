class Automate
    include Capybara::DSL

    
    #Dados do Carro
    def MenuCarro
        find("#nav_automobile")
    end     
    def Marca
        find("#make")
    end 
    def PotenciaMotor
        find("#engineperformance")
    end 
    def DataFabricacao
        find("#dateofmanufacture")
    end 
    def NumeroLugares
        find("#numberofseats")
    end 
    def Combustivel
        find("#fuel")
    end 
    def PrecoTabela
        find("#listprice")
    end 
    def NumeroLicenca
        find("#licenseplatenumber")
    end 
    def KMAnual
        find("#annualmileage")
    end 
    def Next
        find("#nextenterinsurantdata")
    end

    # Dados do Seguro
    def Nome
        find("#firstname")
    end 
    def Sobrenome
        find("#lastname")
    end
    def Nascimento
        find("#birthdate")
    end
    def GeneroM
        find("#insurance-form > div > section:nth-child(2) > div:nth-child(4) > p > label:nth-child(1)")
    end
    def GeneroF
        find("#insurance-form > div > section:nth-child(2) > div:nth-child(4) > p > label:nth-child(2)")
    end
    def Endereco
        find("#streetaddress")
    end 
    def Pais
        find("#country")
    end
    def CEP
        find("#zipcode")
    end 
    def Ocupacao
        find("#occupation")
    end 
    def HobbieSky
        find("#insurance-form > div > section:nth-child(2) > div.field.idealforms-field.idealforms-field-checkbox > p > label:nth-child(4)")
    end  
    def NextProduct
        find("#nextenterproductdata")
    end 

    #Dados do Produto
    def DataInicio
        find("#startdate")
    end
    def ValorSeguro
        find("#insurancesum")
    end 
    def BonusSeguro
        find("#meritrating")
    end 
    def DanosSeguro
        find("#damageinsurance")
    end 
    def OpcionaisAdvogado
        find("#insurance-form > div > section:nth-child(3) > div.field.idealforms-field.idealforms-field-checkbox > p > label:nth-child(2)")
    end 
    def CarroReserva
        find("#courtesycar")
    end 
    def NextPrice
        find("#nextselectpriceoption")
    end

    #Dados Preço

    def SelecionarGold
        find("#priceTable > tfoot > tr > th.group > label:nth-child(2)")
    end
    def NextContrato
        find("#nextsendquote")
    end

    #Dados do Contrato

    def Email
        find("#email")
    end 
    def Telefone
        find("#phone")
    end
    def Usuario
        find("#username")
    end
    def Senha
        find("#password")
    end
    def Confirmar_Senha
        find("#confirmpassword")
    end 
    def EnviarDados
        find("#sendemail")
    end 
    def Finalizar
        find("body > div.sweet-alert.showSweetAlert.visible > div.sa-button-container > div > button")
    end
end 

