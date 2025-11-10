Algoritmo TablaMultiplicar
    Definir numero, i, resultado Como Entero
    
    Escribir "TABLA DE MULTIPLICAR"
    Escribir "Ingrese un número: "
    Leer numero
    
    Escribir ""
    Escribir "Tabla del ", numero, ":"
    Escribir "-------------------"
    
    i <- 1
    Mientras i <= 10 Hacer
        resultado <- numero * i
        Escribir numero, " x ", i, " = ", resultado
        i <- i + 1
    FinMientras
FinAlgoritmo