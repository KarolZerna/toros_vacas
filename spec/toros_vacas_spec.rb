require 'toros_vacas.rb'
RSpec.describe TorosVacas do
    before {@jugador1 = TorosVacas.new}
    before {@jugador2 = TorosVacas.new}
    it 'deberia devolver la variable reglamento en true del jugador si es que acepto el reglamento' do
        expect(@jugador1.aceptarReglamento()).to eq(true)
    end
    it 'deberia devolver true si el codigo es solamente de numeros y si tiene 4 digitos' do
        expect(@jugador1.verificar(1234)).to eq(true)
    end
    it 'deberia devolver false si el codigo no es solamente de numeros' do
        expect(@jugador1.verificar('12a4')).to eq(false)
    end
    it 'deberia devolver false si el codigo solamente tiene 3 numeros' do
        expect(@jugador1.verificar(123)).to eq(false)
    end
    it 'deberia devolver false si el codigo tiene 5 digitos' do
        expect(@jugador1.verificar(12345)).to eq(false)
    end

    it 'deberia devolver el numero de vacas y toros del intento, suponiendo que el codigo es 1234'do
        @jugador1.defCodigo(1234)
        expect(@jugador1.numeroTorosVacas(1945)).to eq(1234)
    end
end