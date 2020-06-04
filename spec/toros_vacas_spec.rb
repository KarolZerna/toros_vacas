require 'toros_vacas.rb'
RSpec.describe TorosVacas do
    before {@jugador1 = TorosVacas.new}
    it 'deberia devolver la variable reglamento en true del jugador si es que acepto el reglamento' do
        expect(@jugador1.aceptarReglamento()).to eq(true)
    end
    it 'deberia devolver el mismo valor ingresado como codigo secreto' do
        @jugador1.definirCodigo(1459)
        expect(@jugador1.getCodigo()).to eq(1459)
    end

end