class TorosVacas
    def inicializar
        super()
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
    def defIntentos(num)
        @intentos = num
    end
    def mostrarIntentos()
        return @intentos.to_s
    end
    def aumentarIntentos()
        @intentos = @intentos + 1
    end
    def mostrarToros_Vacas(numIntento)
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