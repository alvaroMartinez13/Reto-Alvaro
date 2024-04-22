Funcion retiro <- retiro_personalizado ( valor_retirar )
	
	Definir billetes100000, billetes50000, billetes20000, billetes10000 Como Real
	Definir retiro Como Logico

	retiro <- Falso
	
	Si (valor_retirar MOD 10000 = 0) Entonces

		Escribir "Su retiro de $",valor_retirar," fue exitoso"
		Escribir "Se le otorga los siguientes billetes:"
		
		billetes100000 <- Trunc(valor_retirar / 100000)
		valor_retirar <- valor_retirar % 100000
		
		billetes50000 <- Trunc(valor_retirar / 50000)
		valor_retirar <- valor_retirar % 50000
		
		billetes20000 <- Trunc(valor_retirar / 20000)
		valor_retirar <- valor_retirar % 20000
		
		billetes10000 <- Trunc(valor_retirar / 10000)
		
		Escribir billetes100000, " billete(s) de $100,000"
		Escribir billetes50000, " billete(s) de $50,000"
		Escribir billetes20000, " billete(s) de $20,000"
		Escribir billetes10000, " billete(s) de $10,000"
		
		retiro <- Verdadero
	SiNo
		Escribir "Debe ser multiplo de $10.000"
	FinSi
	
	
Fin Funcion


Algoritmo cajero_automatico
	
	Definir valor_retirar, opcion_retirar, opcion_salida Como Entero
	Definir salida, retiro_exitoso, continua Como Logico	
	salida <- Falso
	continua <- Falso
	retiro_exitoso <- Falso
	
	Repetir
		
		Repetir
			
			Escribir "Bienvenido al cajero automático"
			Escribir "¿Cuánto desea retirar?"
			Escribir "1. $10.000"
			Escribir "2. $20.000"
			Escribir "3. $50.000"
			Escribir "4. $100.000"
			Escribir "5. Digitar cantidad personalizada"
			Leer opcion_retirar
			
			Escribir ""
			
			Segun opcion_retirar Hacer
				1:
					Escribir "Su retiro de $10.000 es exitoso"
					retiro_exitoso <- Verdadero
				2:
					Escribir "Su retiro de $20.000 es exitoso"
					retiro_exitoso <- Verdadero
				3:
					Escribir "Su retiro de $50.000 es exitoso"
					retiro_exitoso <- Verdadero
				4:
					Escribir "Su retiro de $100.000 es exitoso"
					retiro_exitoso <- Verdadero
				5:
					Escribir "Digitar el dinero a retirar"
					Leer valor_retirar
					
					Si valor_retirar>0 Y valor_retirar>10000 Entonces
						retiro_exitoso <- retiro_personalizado(valor_retirar)
					Sino
						Escribir "Debes digitar montos positivos o mayores de $10.000"
					FinSi
					
				De Otro Modo:
					Escribir "Debe de seleccionar alguna opción del menú"
			FinSegun
			
			Escribir ""
			
		Mientras Que retiro_exitoso = Falso
		
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
