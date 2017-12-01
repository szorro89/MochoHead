Feature:
	Como jugador de MochoHead
	Quiero cargar partida
	Para adivinar las letras de una palabra


Scenario: dar bienvenida
	Given que cargue pantalla inicio
	Then debo ver "Bienvenido a MochoHead"

Scenario: cargar partida
	Given que cargue pantalla inicio
	Then cargar asteriscos de palabra aleatoria en pantalla

Scenario: mostrar intentos
	Given que cargue pantalla inicio
	Then mostrar cantidad de intentos que le quedan al jugador