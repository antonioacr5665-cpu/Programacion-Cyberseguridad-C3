Algoritmo CalcularDescuento
    Definir monto, descuento, total Como Real
    
    Escribir "Ingrese el monto de la compra: "
    Leer monto
    
    Si monto > 500 Entonces
        descuento <- monto * 0.10
        total <- monto - descuento
        Escribir "Monto original: $", monto
        Escribir "Descuento (10%): $", descuento
        Escribir "Total a pagar: $", total
    Sino
        Escribir "Monto de la compra: $", monto
        Escribir "No aplica descuento"
        Escribir "Total a pagar: $", monto
    FinSi
FinAlgoritmo