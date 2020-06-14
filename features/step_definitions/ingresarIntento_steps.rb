Given('estoy en la pagina de ingresar intento ya habiendo puesto en {string} el codigo secreto {string}') do |string, string2|
    visit '/'
    click_button('Comenzar')
    fill_in(string, :with => string2)
    click_button('Aceptar')
end
  
When('ingresamos en {string} mi intento {string} y el intento es1234') do |string, string2|
    fill_in(string, :with => string2)
end
  
When('presionaremos el boton de {string}') do |string|
    click_button(string)
end
  
Then('deberiamos visualizar {string}') do |string|
    last_response.body.should =~ /#{string}/m
end