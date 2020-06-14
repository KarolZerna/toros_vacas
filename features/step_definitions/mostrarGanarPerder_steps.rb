Given('estando en la pagina de ingresar intento ya habiendo puesto en {string} el codigo secreto {string}') do |string, string2|
    visit '/'
    click_button('Comenzar')
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