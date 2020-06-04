class TorosVacas
    def inicializar
        @reglamento = false
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
    def numeroTorosVacas(numIntento)
        auxCodigo = @codigo.to_s
        aux = numIntento.to_s
        coincidencias = 0
        aciertos = 0
        for i in (0..3)
            if (aux[i] == auxCodigo[i])
                aciertos = aciertos + 1
            elsif (auxCodigo.include?(aux[i]))
                coincidencias = coincidencias + 1
            end            
        end
        return "vacas: " + coincidencias.to_s + " toros: " + aciertos.to_s
    end
end