#language: es
Característica:
	Como Jugador de Ahorcado
	Quiero poder ingresar letras
	Para saber si estan dentro de la palabra a descubrir.

Escenario: el juego debe tener un campo para ingresar la letra
	Dado que inicie un juego
	Entonces debo ingresar "a" como "letraProbar"
	Y debo poder buscar la letra en la palabra
	Y para la palabra "mariposa" se debe pintar o mostrar la letra "a" en la palabra