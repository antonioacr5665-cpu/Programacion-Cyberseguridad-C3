Algoritmo CalcularFactorial
    Definir numero, factorial, i Como Entero
    
    factorial <- 1
    
    Escribir " CÁLCULO DE FACTORIAL"
    Escribir "Ingrese un número entero no negativo: "
    Leer numero
    
   
    Si numero < 0 Entonces
        Escribir "Error: El factorial no está definido para números negativos"
    Sino
        i <- 1
        Mientras i <= numero Hacer
            factorial <- factorial * i
            i <- i + 1
        FinMientras
        
        Escribir ""
        Escribir "El factorial de ", numero, " es: ", factorial
    FinSi
FinAlgoritmo