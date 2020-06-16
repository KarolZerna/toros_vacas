Given('estoy+ el formulario donde deberia llenar la dificultad') do
    visit '/'
    click_button('Comenzar')
end
  
When('ingreso+ en {string} la dificultad {string}') do |string, string2|
    fill_in('Nombre1', :with => 'Jugador 1')
    fill_in(string, :with => string2)
    fill_in('codigo', :with => 'NUMEROS')
    fill_in('intentos', :with => 10)
    fill_in('Nombre2', :with => 'Jugador 2')
    click_button('Ingresar')
end
  
Then('deberia+ mostrarme {string}') do |string|
    last_response.body.should =~ /#{string}/m
end

Given('estamos el formulario donde deberia llenar la dificultad') do
    visit '/'
    click_button('Comenzar')
end
  
When('ingresamos en {string} la dificultad {string}') do |string, string2|
    fill_in('Nombre1', :with => 'Jugador 1')
    fill_in(string, :with => string2)
    fill_in('codigo', :with => 'NUMEROS')
    fill_in('intentos', :with => 10)
    fill_in('Nombre2', :with => 'Jugador 2')
    click_button('Ingresar')
end
  
Then('deberia de mostrarme {string}') do |string|
    last_response.body.should =~ /#{string}/m
end