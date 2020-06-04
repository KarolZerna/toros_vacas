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
        @@juego.defIntentos('1'.to_i)
        @numIntentos=@@juego.mostrarIntentos()
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
        vec = @@juego.numeroTorosVacas(params[:Numero].to_i)
        @@juego.aumentarIntentos()
        @numIntentos=@@juego.mostrarIntentos()
        if(vec[1] == 4)
            erb:ganador
        else
            erb:intento
        end    
    else
        erb:falloCodigoIntento
    end
end
