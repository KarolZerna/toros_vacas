require 'toros_vacas.rb'
RSpec.describe "Reglas" do
    before {@jugador1 = TorosVacas.new}
    it 'deveria devolver la variable reglamento en true del jugador si es que acepto el reglamento' do
        expect(@jugador1.getReglamento()).to eq(true)
    end
end