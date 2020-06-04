require 'sinatra'
require './lib/toros_vacas.rb'

@@juego = TorosVacas.new

get '/' do
    erb :inicio
end
post '/aceptar' do
    erb :definir
end

post '/verificar' do
    if(@@juego.verificar(params[:Numero].to_i))
        @@juego.defCodigo(params[:Numero].to_i)
        erb:adivinar
    else
        erb:falloCodigo
    end
end
post '/intento' do
    erb:adivinar
end

post '/adivinar' do
    if(@@juego.verificar(params[:Numero].to_i))
        erb:intento
    else
        erb:falloCodigoIntento
    end
end
