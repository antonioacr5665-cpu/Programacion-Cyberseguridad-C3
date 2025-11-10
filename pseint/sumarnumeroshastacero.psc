Algoritmo SumarNumerosHastaCero
    Definir numero, suma Como Real
    
    suma <- 0
    
    Escribir "Ingrese números para sumar (0 para terminar):"
    Leer numero
    
    Mientras numero <> 0 Hacer
        suma <- suma + numero
        Escribir "Ingrese otro número (0 para terminar):"
        Leer numero
    FinMientras
    
    Escribir "La suma total es: ", suma
FinAlgoritmo