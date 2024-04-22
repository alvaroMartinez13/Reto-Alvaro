Funcion dibuja_triangulo(lado)
	Definir i, j Como Entero
	Para i <- 1 Hasta lado Con Paso 1 Hacer
		Para j <- 1 Hasta i Con Paso 1 Hacer
			Escribir "*" Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinFuncion

Funcion dibuja_cuadrado(lado)
	Definir i, j Como Entero
	Para i <- 1 Hasta lado Con Paso 1 Hacer
		Para j <- 1 Hasta lado Con Paso 1 Hacer
			Escribir "*" Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinFuncion

Algoritmo dibuja_cuadrado_o_triángulo
	
	Definir lado, opcion_figura, opcion_salida Como Entero
	Definir salida, continua, figura_seleccionada Como Logico	
	
	salida <- Falso
	continua <- Falso
	figura_seleccionada <- Falso
	
	Repetir
		
		Repetir
			
			Escribir "Selecciona el tipo de figura:"
			Escribir "1. Cuadrado"
			Escribir "2. Triangulo"
			Leer opcion_figura
			
			Segun opcion_figura Hacer
				
				1:
					Escribir "Digite el lado del cuadrado"
					Leer lado
					
					dibuja_cuadrado(lado)
					figura_seleccionada <- Verdadero
				2:
					Escribir "Digite el lado del triangulo"
					Leer lado
					
					dibuja_triangulo(lado)
					figura_seleccionada <- Verdadero
				De Otro Modo:
					Escribir "Debes seleccionar una opción"
			FinSegun
			
			Escribir ""
			
		Mientras Que figura_seleccionada = Falso
		
		Repetir
			Escribir "¿Desea continuar?"
			Escribir "(1. Si | 2. No)"
			Leer opcion_salida
			Segun opcion_salida Hacer
				1:
					Escribir "Continuemos..."
					Escribir ""
					continua <- Verdadero
				2:
					salida <- Verdadero
					continua <- Verdadero
					Escribir "Hasta pronto, vuelva pronto"
				De Otro Modo:
					Escribir "Debes seleccionar una opción"
			FinSegun
		Mientras Que continua = Falso
		
	Mientras Que salida = Falso
	
FinAlgoritmo
