Feature:
    Como Jugador
    Quiero poner la dificultad del juego
    Para hacer mas interesante la partida

    Scenario:
    Given *estamos en el formulario donde deberia llenar la dificultad
    When *ingreso en 'codigo' el tipo 'NUMEROS'
    Then *deberia mostrarme "Ingrese el codigo secreto:"
    