algoritmo CalculoNotas
Definir nota, suma, promedio Como Real
Definir i Como Entero

suma <- 0

Escribir " CÁLCULO DE NOTAS"
Escribir "Ingrese 5 notas (0-100):"
Escribir ""

Para i <- 1 Hasta 5 Hacer
	Escribir "Nota ", i, ": "
	Leer nota
	suma <- suma + nota
FinPara

promedio <- suma / 5

Escribir ""
Escribir "=== RESULTADOS ==="
Escribir "Suma total: ", suma
Escribir "Promedio: ", promedio
FinAlgoritmo