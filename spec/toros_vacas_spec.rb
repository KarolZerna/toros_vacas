require 'toros_vacas.rb'
RSpec.describe TorosVacas do
    before {@juego = TorosVacas.new}
    it 'deberia devolver la variable reglamento en true del jugador si es que acepto el reglamento' do
        expect(@juego.aceptarReglamento()).to eq(true)
    end
    it 'deberia devolver true si el codigo es solamente de numeros y si tiene 4 digitos' do
        expect(@juego.verificar(1234)).to eq(true)
    end
    it 'deberia devolver false si el codigo no es solamente de numeros' do
        expect(@juego.verificar('12a4')).to eq(false)
    end
    it 'deberia devolver false si el codigo solamente tiene 3 numeros' do
        expect(@juego.verificar(123)).to eq(false)
    end
    it 'deberia devolver false si el codigo tiene 5 digitos' do
        expect(@juego.verificar(12345)).to eq(false)
    end

    it 'deberia devolver el numero de vacas y toros del intento, suponiendo que el codigo es 1234'do
        @juego.defCodigo(1234)
        expect(@juego.numeroTorosVacas(1945)).to eq('vacas: 1 toros: 1')
    end
end