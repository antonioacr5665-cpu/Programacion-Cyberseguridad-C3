Algoritmo GestorContrasenas
    Definir usuarios, contrasenas Como Cadena
    Definir i, cantidad, opcion Como Entero
    Definir usuarioBuscado, contrasenaBuscada Como Cadena
    Definir encontrado Como Logico
    
    Dimension usuarios[50]
    Dimension contrasenas[50]
    cantidad <- 0
    
    Repetir
        Escribir "=== GESTOR DE CONTRASEÑAS ==="
        Escribir "1. Registrar usuario"
        Escribir "2. Verificar contraseña" 
        Escribir "3. Mostrar usuarios"
        Escribir "4. Salir"
        Escribir "Seleccione una opción: "
        Leer opcion
        Escribir ""
        
        Segun opcion Hacer
            caso 1:
                Si cantidad >= 50 Entonces
                    Escribir "Error: No se pueden registrar más usuarios."
                Sino
                    Escribir "--- REGISTRAR USUARIO ---"
                    Escribir "Ingrese nombre de usuario: "
                    Leer usuarios[cantidad]
                    Escribir "Ingrese contraseña: "
                    Leer contrasenas[cantidad]
                    
                    Si EsContrasenaFuerte(contrasenas[cantidad]) Entonces
                        cantidad <- cantidad + 1
                        Escribir "¡Usuario registrado correctamente!"
                    Sino
                        Escribir "Error: La contraseña es débil."
                        Escribir "Debe tener al menos 8 caracteres con mayúsculas, minúsculas y números."
                    FinSi
                FinSi
                
            caso 2:
                Escribir "--- VERIFICAR CONTRASEÑA ---"
                Escribir "Usuario: "
                Leer usuarioBuscado
                Escribir "Contraseña: "
                Leer contrasenaBuscada
                
                encontrado <- Falso
                Para i <- 0 Hasta cantidad-1 Hacer
                    Si usuarios[i] = usuarioBuscado Y contrasenas[i] = contrasenaBuscada Entonces
                        Escribir "¡ACCESO CONCEDIDO!"
                        encontrado <- Verdadero
                    FinSi
                FinPara
                
                Si NO encontrado Entonces
                    Escribir "Usuario o contraseña incorrectos."
                FinSi
                
            caso 3:
                Escribir "--- USUARIOS REGISTRADOS ---"
                Si cantidad = 0 Entonces
                    Escribir "No hay usuarios registrados."
                Sino
                    Para i <- 0 Hasta cantidad-1 Hacer
                        Escribir "Usuario: ", usuarios[i], " - Fortaleza: ", VerificarFortaleza(contrasenas[i])
                    FinPara
                    Escribir "Total: ", cantidad, " usuarios"
                FinSi
                
            caso 4:
                Escribir "¡Hasta pronto!"
                
            De Otro Modo:
                Escribir "Opción no válida. Intente de nuevo."
        FinSegun
        Escribir ""
    Hasta Que opcion = 4
FinAlgoritmo

Funcion resultado <- EsContrasenaFuerte(contrasena)
    Definir resultado Como Logico
    Definir i Como Entero
    Definir tieneMayus, tieneMinus, tieneNumero Como Logico
    Definir letra Como Caracter
    
    tieneMayus <- Falso
    tieneMinus <- Falso
    tieneNumero <- Falso
    
    Si Longitud(contrasena) < 8 Entonces
        resultado <- Falso
    Sino
        Para i <- 1 Hasta Longitud(contrasena) Hacer
            letra <- Subcadena(contrasena, i, i)
            
            Si letra >= "A" Y letra <= "Z" Entonces
                tieneMayus <- Verdadero
            FinSi
            
            Si letra >= "a" Y letra <= "z" Entonces
                tieneMinus <- Verdadero
            FinSi
            
            Si letra >= "0" Y letra <= "9" Entonces
                tieneNumero <- Verdadero
            FinSi
        FinPara
        
        resultado <- tieneMayus Y tieneMinus Y tieneNumero
    FinSi
FinFuncion

Funcion nivel <- VerificarFortaleza(contrasena)
    Definir nivel Como Cadena
    
    Si EsContrasenaFuerte(contrasena) Entonces
        nivel <- "FUERTE"
    Sino Si Longitud(contrasena) >= 6 Entonces
			nivel <- "MEDIA"
		Sino
			nivel <- "DÉBIL"
		FinSi
FinFuncion