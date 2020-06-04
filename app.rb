require 'sinatra'
require './lib/toros_vacas.rb'

get '/' do
    erb :inicio
end
post '/aceptar' do
    erb :definir
end

post '/verificar' do
    if(@jugador1=verificar(params[:Numero].to_i))
        erb:adivinar
    else
        erb:fallo
    end
end
