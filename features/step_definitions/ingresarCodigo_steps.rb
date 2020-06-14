Given('estoy en la pagina de inicio') do
    visit '/'
end

Given('presionamos el boton de {string}') do |string|
    click_button('Comenzar')
end

When('ingreso en {string} el codigo secreto {string}') do |string, string2|
    fill_in(string, :with => string2)
end

When('presiono el boton de {string}') do |string|
    click_button(string)
end

Then('deberiamos ver {string}') do |string|
    last_response.body.should =~ /#{'Jugador 2'}/m
end

Then('deberia ver {string}') do |string|
    last_response.body.should =~ /#{string}/m
end