Given('estoy en la pagina de inicio') do
    visit '/'
end

Given('presionamos el boton de {string}') do |string|
    click_button('Comenzar')
end

When('ingreso el codigo secreto {string}') do |string|
    pending 
end

When('presiono el boton de {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

Then('deberia ver {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end