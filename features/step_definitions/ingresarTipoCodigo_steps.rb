Given('*estamos en el formulario donde deberia llenar la dificultad') do
    visit '/'
    click_button('Comenzar')
end
  
When('*ingreso en {string} el tipo {string}') do |string, string2|
    fill_in('Nombre1', :with => 'Jugador 1')
    fill_in('dificultad', :with => 'EASY')
    fill_in(string, :with => string2)
    fill_in('intentos', :with => 10)
    fill_in('Nombre2', :with => 'Jugador 2')
    click_button('Ingresar')
end
  
Then('*deberia mostrarme {string}') do |string|
    last_response.body.should =~ /#{string}/m
end