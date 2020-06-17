class Caminhao
    include Capybara::DSL

    def MenuCaminhao
        find("#nav_truck")
    end 
    def Payload
        find("#payload")
    end
    def PesoTotal
        find("#totalweight")
    end 


end
