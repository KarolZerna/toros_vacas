require 'toros_vacas.rb'
RSpec.describe TorosVacas do
    before {@juego = TorosVacas.new}
    before {@juego.defCodigo(1234)}
    before {@juego.defIntentos(1)}
    before {@juego.setTamCodigo('EASY')}

    it 'deberia devolver la variable reglamento en true del jugador si es que acepto el reglamento' do
        expect(@juego.aceptarReglamento()).to eq(true)
    end
    it 'deberia devolver true si el codigo es solamente de numeros y esta modo easy ' do
        expect(@juego.verificarNumeros(1234)).to eq(true)
    end
    it 'deberia devolver false si el codigo no es solamente de numeros pero si tiene los 4 digitos' do
        expect(@juego.verificarNumeros('12a4')).to eq(false)
    end
    it 'deberia devolver false si el codigo solamente tiene 3 numeros y se establecio que debian ser 4 digitos' do
        expect(@juego.verificarNumeros(123)).to eq(false)
    end
    it 'deberia devolver false si el codigo tiene 5 digitos' do
        expect(@juego.verificarNumeros(12345)).to eq(false)
    end
    it 'deberia devolver true si el codigo tiene 4 letras correctas' do
        expect(@juego.verificarLetras('BANG')).to eq(true)
    end
    it 'deberia devolver false si el codigo tiene letras incorrectas' do
        expect(@juego.verificarLetras('XAWO')).to eq(false)
    end
    it 'deberia devolver el numero de vacas y toros del intento, suponiendo que el codigo es 1234'do
        vec = @juego.numeroTorosVacas(1945)
        expect('vacas: ' + vec[0].to_s+' toros: ' + vec[1].to_s).to eq('vacas: 1 toros: 1')
    end
    it 'deberia devolver 4 toros, suponiendo que el codigo es 1234'do
        vec = @juego.numeroTorosVacas(1234)
        expect('vacas: ' + vec[0].to_s+' toros: ' + vec[1].to_s).to eq('vacas: 0 toros: 4')
    end
    it 'deberia devolver 1 vaca, suponiendo que el codigo es 3421'do
        expect(@juego.mostrarToros_Vacas(8615)).to eq('vacas: 1 toros: 0')
    end
    it 'deberia inicializar el numero de intentos en 1' do
        expect(@juego.mostrarIntentos()).to eq("1")
    end
    it 'deberia sumar uno a los intentos de realizados' do
        @juego.aumentarIntentos()
        expect(@juego.mostrarIntentos()).to eq("2")
    end
    it 'deberia devolver 4 en tamaño de codigo si ponemos como dificultad EASY' do
        @juego.setTamCodigo("EASY")
        expect(@juego.getTamCodigo()).to eq(4)
    end

    it 'deberia devolver 6 en tamaño de codigo si ponemos como dificultad MEDIUM' do
        @juego.setTamCodigo("MEDIUM")
        expect(@juego.getTamCodigo()).to eq(6)
    end

    it 'deberia devolver 8 en tamaño de codigo si ponemos como dificultad HARD' do
        @juego.setTamCodigo("HARD")
        expect(@juego.getTamCodigo()).to eq(8)
    end

    it 'deberia devolver True si las letras de la palabra ingresada son iniciales de los colores que mencionamos al jugador ' do
        expect(@juego.verificarLetrasGeneral("BANG")).to eq(true)
    end
    it 'deberia devolver False si las letras ingresadas no son iniciales de los colores que mencionamos al jugador' do
        expect(@juego.verificarLetrasGeneral("BONG")).to eq(false)
    end
    it 'deberia devolver False si el codigo ingresado es de numeros' do
        expect(@juego.verificarLetrasGeneral(7845)).to eq(false)
    end
    it 'deberia devolver el numero de intentos que el jugador definio en las configuraciones' do
        @juego.setLimiteIntentos(10)
        expect(@juego.getLimiteIntentos()).to eq(10)
    end
    it 'deberia devolver COLORES O NUMEROS' do
        @juego.setTipoCodigo("COLORES")
        expect(@juego.getTipoCodigo()).to eq("COLORES")
    end
end