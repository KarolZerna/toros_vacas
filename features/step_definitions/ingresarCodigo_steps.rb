Given('estoy en la pagina de inicio') do
    visit '/'
end

Given('presionamos el boton de {string}') do |string|
    click_button(string)
    fill_in('Nombre1', :with => 'Jugador 1')
    fill_in('dificultad', :with => 'EASY')
    fill_in('codigo', :with => 'NUMEROS')
    fill_in('intentos', :with => 10)
    fill_in('Nombre2', :with => 'Jugador 2')
    click_button('Ingresar')
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