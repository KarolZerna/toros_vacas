Feature:    
    Como jugador.
    Quiero terminar la partida
    Para saber si gané o perdí contra mi rival

    Scenario:
    Given estando en la pagina de ingresar intento ya habiendo puesto en "Numero" el codigo secreto "1234"
    When ingresa en el espacio de 'Adiv' mi intento "1234"
    And presiona el boton que dice "Aceptar"
    Then deberiamos observar "Jugador 2 GANO EL JUEGO"