Feature: 
    Como Jugador
    Quiero Ingresar el codigo secreto
    Para mi oponente pueda empezar a adivinar

    Scenario:
    Given estoy en la pagina de inicio
    And presionamos el boton de "Comenzar"
    When ingreso en "Numero" el codigo secreto "1234"
    And presiono el boton de "Aceptar"
    Then deberiamos ver "Jugador 2"
    And deberia ver "Número de intento  : 1"
