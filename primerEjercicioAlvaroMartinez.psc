Funcion primos <- son_Primos_Gemelos ( numero1, numero2 )
	
	Definir gemelo Como Entero
	Definir primos Como Logico
	
	Si numero1>numero2 Entonces
		gemelo <- numero1-numero2
	FinSi
	
	Si numero1<numero2 Entonces
		gemelo <- numero2-numero1
	FinSi
	
	Si gemelo ==2 Entonces
		primos <- Verdadero
		
	SiNo
		primos <-Falso
	FinSi
	
Fin Funcion

Algoritmo primos_gemelos
	
	Definir numero1, numero2, opcion_salida, i, count Como Entero
	Definir primo_gemelo, salida, primo, continua Como Logico
	
	Repetir
		
		salida <- Falso
		continua <- Falso
		primo_gemelo <- Falso
		primo <- Falso
		
		count <- 0
		
		Escribir "Digite el primer primo"
		Leer numero1
		
		Para i<-1 Hasta numero1 Con Paso 1 Hacer
			
			Si numero1 MOD i = 0 Entonces
				
				count <- count+1
				
			FinSi
			
		FinPara
		
		Escribir count
		
		Si count == 2 Y numero1 > 0 Entonces
			
			count <- 0
			
			Escribir "Digite el segundo primo"
			Leer numero2
			
			Para i<-1 Hasta numero2 Con Paso 1 Hacer
				
				Si numero2 MOD i = 0 Entonces
					
					count <- count+1
					
				FinSi
				
			FinPara
			
			Si count == 2 Y numero2 > 0 Entonces
				
				primo_gemelo <- son_Primos_Gemelos ( numero1, numero2 )
				
				Si primo_gemelo Entonces
					Escribir "Son primos gemelos"
					Escribir ""
				SiNo
					Escribir "No son primos gemelos"
					Escribir ""
				FinSi
				
			SiNo
				Escribir "El segundo primo debe ser un primo y positivo"
				Escribir ""
			FinSi
			
		SiNo
			Escribir "El primer primo debe ser un primo y positivo"
			Escribir ""
		FinSi
		
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
