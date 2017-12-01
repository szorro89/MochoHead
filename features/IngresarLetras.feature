#language: es
Característica:
	Como Jugador de Ahorcado
	Quiero poder ingresar letras
	Para saber si estan dentro de la palabra a descubrir.

Escenario: el juego debe tener un campo para ingresar la letra
	Dado que inicie un juego
	Entonces debo ingresar "a" como "letraProbar"
	Y debo poder buscar la letra en la palabra
	Y pintar o mostrar la letra en la palabra
