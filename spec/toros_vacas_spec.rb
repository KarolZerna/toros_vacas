require 'toros_vacas.rb'
RSpec.describe TorosVacas do
    before {@jugador1 = TorosVacas.new}
    it 'deberia devolver la variable reglamento en true del jugador si es que acepto el reglamento' do
        expect(@jugador1.aceptarReglamento()).to eq(true)
    end
    #it 'deberia devolver el mismo valor ingresado como codigo secreto' do
    #    expect(@jugador1.definirCodigo(8)).to eq(1459)
    #end
    it 'deberia deolver true si el codigo es solamente de numeros y si tiene 4 digitos' do
        expect(@jugador1.verificar(1234)).to eq(true)
    end
    it 'deberia devolver false si el codigo no es solamente de numeros' do
        expect(@jugador1.verificar('12a4')).to eq(false)
    end
    it 'deberia devolver false si el codigo solamente tiene 3 numeros' do
        expect(@jugador1.verificar(123)).to eq(false)
    end
    it 'deberia devolver false si el codigo si tiene 5 digitos' do
        expect(@jugador1.verificar(12345)).to eq(false)
    end
end