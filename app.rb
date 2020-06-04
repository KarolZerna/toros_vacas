require 'sinatra'
require './lib/toros_vacas.rb'

get '/' do
    erb :inicio
end
post '/aceptar' do
    erb :definir
end

post '/adivinar' do
    "Hello World"
  end