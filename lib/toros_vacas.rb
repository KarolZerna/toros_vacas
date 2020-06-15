class TorosVacas
    def inicializar
        super()
        @reglamento = false
        @intentos = 1
    end
    def aceptarReglamento()
        return @reglamento = true
    end
    
    def is_numeric?(obj) 
        obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
    end
    def setTipoCodigo(tipo)
        if(tipo == "NUMERO")
            @tipoCodigo = tipo
        else
            @tipoCodigo = tipo
        end
    end
    def setTamCodigo(dificultad)
        if(dificultad == "HARD")
            @tamCodigo = 8
        elsif (dificultad == "MEDIUM")
            @tamCodigo = 6
        else
            @tamCodigo = 4
        end
    end
    def getTamCodigo()
        return @tamCodigo
    end
    # Rojo, Blanco, Verde, Negro, Azul, Gris, Cafe, Purpura, Dorado
    def verificarLetras(letras)
        aux = letras.to_s
        ans = 0
        veri = false
        for i in (0..@tamCodigo-1) 
            if( aux[i] == 'R' || aux[i] == 'B' || aux[i] == 'V' || aux[i] == 'N' || aux[i] == 'A' || aux[i] == 'G' || aux[i] == 'C' || aux[i] == 'P' || aux[i] == 'D' )
                ans = ans + 1 
            end
        end
        if(ans == @tamCodigo)
            veri=true
        end
        return veri
    end
    # cifras: 4,6,8
    def verificarLetrasGeneral(palabra)
        aux = palabra.to_s
        ans = false
        if(is_numeric?(palabra))
            ans = false
        elsif aux.length == @tamCodigo
            if(verificarLetras(palabra))
                ans = true
            end
        end
        return ans
    end
    # cifras: 4,6,8
    def verificarNumeros(num)
        aux = num.to_s
        if(is_numeric?(num) && aux.length == @tamCodigo )
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
    def defNombres(j1,j2)
        @@nickNameJ1 = j1
        @@nickNameJ2 = j2 
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
        for i in (0..@tamCodigo-1)
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
        for i in (0..@tamCodigo-1)
            if (aux[i] == auxCodigo[i])
                ans[1] = ans[1] + 1
            elsif (auxCodigo.include?(aux[i]))
                ans[0] = ans[0] + 1
            end            
        end
        return ans
    end
    def getTipoCodigo()
        return @tipoCodigo
    end

end