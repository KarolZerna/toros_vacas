class TorosVacas
    def inicializar
        @reglamento = false
        @codigo
    end
    def aceptarReglamento()
        return @reglamento = true
    end
    def definirCodigo(cod)
        @codigo =  cod
    end
    def getCodigo()
        return @codigo
    end
end