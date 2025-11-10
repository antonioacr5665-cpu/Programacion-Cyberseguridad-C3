Algoritmo verificainternet
	Definir  respuesta Como Entero
	Definir TieneInternet Como Logico
	
	Repetir
		Escribir "Tiene internet en casa? ( 1 = si, 0 = no)"
		leer respuesta 
	Hasta Que respuesta = 1 o respuesta = 0 
	
	TieneInternet <- respuesta = 1 
	
	Escribir  "Tiene internet:", TieneInternet
	
FinAlgoritmo
