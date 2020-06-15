Feature: 
    Como jugador
    Quiero elegir el tipo de código cuando voy a ingresar el código secreto
    Para que mi contrincante empiece a adivinar 

    Scenario:
    Given estoy en la pagina nickname
    And presionamos el boton de "Comenzar"
    When ingreso nombre de jugador1 en "Nombre1" el nombre "Juslan"
    And ingreso nombre de jugador2 en "Nombre2" el nombre "Karol"
    And hago click en el boton de "Ingresar"
    And ingreso en "Numero" el codigo secreto "1234"
    And presiono el boton de "Aceptar"
    Then deberiamos ver "Karol"
    And deberia ver "Número de intento  : 1"