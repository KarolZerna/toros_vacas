Feature:
    Como Jugador
    Quiero poner la dificultad del juego
    Para hacer mas interesante la partida

    Scenario:
    Given estoy+ el formulario donde deberia llenar la dificultad
    When ingreso+ en 'dificultad' la dificultad 'HARD'
    Then deberia+ mostrarme "Ingrese el codigo secreto:"
    
    Scenario:
    Given estamos el formulario donde deberia llenar la dificultad
    When ingresamos en 'dificultad' la dificultad 'HARDLY'
    Then deberia de mostrarme "Dificultad ingresada incorrectamente, vuelva a intentar:"