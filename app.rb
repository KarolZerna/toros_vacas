require 'sinatra'
require './lib/toros_vacas.rb'

get '/' do
    erb :inicio
end

post '/aceptar' do
    "Hello World"
  end