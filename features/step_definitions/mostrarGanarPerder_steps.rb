Given('estando en la pagina de ingresar intento ya habiendo puesto en {string} el codigo secreto {string}') do |string, string2|
    visit '/'
    click_button('Comenzar')
    fill_in('Nombre1', :with => 'Jugador 1')
    fill_in('dificultad', :with => 'EASY')
    fill_in('codigo', :with => 'NUMEROS')
    fill_in('intentos', :with => 10)
    fill_in('Nombre2', :with => 'Jugador 2')
    click_button('Ingresar')
    fill_in(string, :with => string2)
    click_button('Aceptar')
end
  
When('ingresa en el espacio de {string} mi intento {string}') do |string, string2|
    fill_in(string, :with => string2)
end
  
When('presiona el boton que dice {string}') do |string|
    click_button(string)
end
  
Then('deberiamos observar {string}') do |string|
    last_response.body.should =~ /#{string}/m
end