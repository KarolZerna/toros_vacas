Feature: 
    Como Jugador
    Quiero intentar adivinar el codigo secreto
    Para visualizar la cantidad de toros y vacas

    Scenario:
    Given estoy en la pagina de ingresar intento ya habiendo puesto en "Numero" el codigo secreto "1234"
    When ingresamos en 'Adiv' mi intento "1547" y el intento es1234
    And presionaremos el boton de "Aceptar"
    Then deberiamos visualizar "El marcador actual es vacas: 1 toros: 1"
