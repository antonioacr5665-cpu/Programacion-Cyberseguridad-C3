Algoritmo AdivinaNumeroSimple
    Definir numero_secreto, intento Como Entero
    
    numero_secreto <- 3
    
    Escribir "Adivina el número secreto (1-10):"
    Leer intento
    
    Si intento = numero_secreto Entonces
        Escribir "¡Correcto! ¡Ganaste!"
    Sino
        Escribir "Incorrecto. El número era: ", numero_secreto
    FinSi
FinAlgoritmo