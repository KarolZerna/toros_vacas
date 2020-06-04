class TorosVacas
    def inicializar
        @reglamento = false
        @codigo
    end
    def aceptarReglamento()
        return @reglamento = true
    end
    #def definirCodigo(cod)
        #if(cod == 1 || cod ==2 )
           # return true
       # else
          #  return false
       # end
    #end
    def is_numeric?(obj) 
        obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
    end
    def verificar(num)
        aux = num.to_s
        if(is_numeric?(num) && aux.length == 4 )
            ans = true
        else
            ans = false
        end
        return ans
    end
end