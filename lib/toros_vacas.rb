class TorosVacas
    def inicializar
        @reglamento = false
        @intentos = 0
    end
    def aceptarReglamento()
        return @reglamento = true
    end
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
    def defCodigo(num)
        @codigo = num
    end 
    def getCodigo()
        return @codigo
    end

    def numeroTorosVacas(numIntento)
        auxCodigo = @codigo.to_s
        aux = numIntento.to_s
        ans=[0,0]
        for i in (0..3)
            if (aux[i] == auxCodigo[i])
                ans[1] = ans[1] + 1
            elsif (auxCodigo.include?(aux[i]))
                ans[0] = ans[0] + 1
            end            
        end
        return ans
    end
end