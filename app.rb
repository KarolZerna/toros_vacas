require 'sinatra'
require './lib/toros_vacas.rb'

@@juego = TorosVacas.new
@@numIntentos = 0
@@ultIntento = "No existe intento previo"
@@nickNameJ1 
@@nickNameJ2

get '/' do
    erb :inicio
end

post '/nickname' do
    erb :defNickName
end

post '/aceptar' do
    @@juego.defNombres(params[:Nombre1].to_s,params[:Nombre2].to_s)
    @@nickNameJ1 = params[:Nombre1].to_s
    @@nickNameJ2 = params[:Nombre2].to_s
    if(params[:dificultad].to_s == "HARD" || params[:dificultad].to_s == "MEDIUM" ||params[:dificultad].to_s == "EASY")
        if(params[:codigo].to_s == "NUMEROS" ||params[:codigo].to_s == "COLORES" )
            @@juego.setTamCodigo(params[:dificultad].to_s)
            @@juego.setTipoCodigo(params[:codigo].to_s)
            if(params[:codigo].to_s == "NUMEROS")
                erb :definirNumeros
            else
                erb :definirColores
            end
        else
            erb :falloDefinicionParametrosTipoCodigo
        end
    else
        erb :falloDefinicionParametrosDificultad
    end
end

post '/definirNumero' do
    erb :definirNumeros
end
post '/definirColor' do
    erb :definirColores
end
post '/verificarColores' do
    @@ultIntento = "No existe intento previo"
    if(@@juego.verificarLetrasGeneral(params[:Numero].to_s))
        @@juego.defCodigo(params[:Color].to_s)
        @@juego.defIntentos(1)
        @@numIntentos=@@juego.mostrarIntentos()
        erb:adivinar
    else
        erb:falloCodigoColores
    end
end

post '/verificarNumeros' do
    @@ultIntento = "No existe intento previo"
    if(@@juego.verificarNumeros(params[:Numero].to_i))
        @@juego.defCodigo(params[:Numero].to_i)
        @@juego.defIntentos(1)
        @@numIntentos=@@juego.mostrarIntentos()
        erb:adivinar
    else
        erb:falloCodigoNumeros
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
