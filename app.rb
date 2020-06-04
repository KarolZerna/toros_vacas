require 'sinatra'
require './lib/toros_vacas.rb'

@@juego = TorosVacas.new
@@numIntentos = 0
@@ultIntento = "No existe intento previo"
get '/' do
    erb :inicio
end
post '/aceptar' do
    erb :definir
end

post '/verificar' do
    if(@@juego.verificar(params[:Numero].to_i))
        @@juego.defCodigo(params[:Numero].to_i)
        @@juego.defIntentos(1)
        @@numIntentos=@@juego.mostrarIntentos()
        erb:adivinar
    else
        erb:falloCodigo
    end
end
post '/intento' do
    erb:adivinar
end

post '/adivinar' do
    if(@@juego.verificar(params[:Adiv].to_i))
        @@juego.aumentarIntentos()
        @@ultIntento = params[:Adiv].to_s
        vec = @@juego.numeroTorosVacas(params[:Adiv].to_i)
        @@numIntentos=@@juego.mostrarIntentos()
        if(vec[1] == 4)
            erb:ganador
        elsif(@@numIntentos.to_i > 10)
            erb:perdedor
        else
            erb:intento
        end    
    else
        erb:falloCodigoIntento
    end
    
end
