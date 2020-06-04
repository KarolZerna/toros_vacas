require 'sinatra'
require './lib/toros_vacas.rb'

get '/' do
    erb :inicio
end
post '/aceptar' do
    erb :definir
end

post '/verificar' do
    @juego = TorosVacas.new
    if(@juego.verificar(params[:Numero].to_i))
        erb:adivinar
    else
        erb:falloCodigo
    end
end

post '/adivinar' do
    @juego= TorosVacas.new
    if(@juego.verificar(params[:Numero].to_i))
        erb:intento
    else
        erb:falloIntento
    end
end