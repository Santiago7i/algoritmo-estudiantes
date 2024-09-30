


Funcion menu <- menus
	
	Escribir " "
	Escribir "            Menu           "
	Escribir "1. Crear usuario"
	Escribir "2. notas parciales"
	Escribir "3. inasistencias"
	Escribir "4. Enlistar estudiantes"
	Escribir "5. Calcular nota final"
	Escribir "0. Salir"
	Leer menu
	
FinFuncion



Funcion CrearUsuario(nombre,codigo)
	
	Para j = 1 Hasta 10 Con Paso 1 Hacer
	
	Escribir "Ingrese su codigo "
	Leer codigo(j, 1)
	
	Escribir "Ingrese su nombre "
	Leer nombre(j, 2)
	
	Escribir " "
	
FinPara
FinFuncion

Funcion NotasParciales(nota1,nota2,nota3) 
	
	Escribir "Digite su primera nota "
	Leer nota1
	Escribir " "
	Escribir "Digite su segunda nota "
	Leer nota2
	Escribir " "
	Escribir "Digite su tercera nota "
	Leer nota3
	Escribir " "
	NotaFinish = (nota1+nota2+nota3) / 3
	
FinFuncion


Funcion InasistenciasTotal(NumInasistencias)
	
	Escribir "Digite el numero de inasistencias que tiene"
	Leer inasistencias
	
	si inasistencias >= 10 y inasistencias < 15 Entonces
		
		NotaFinish = NotaFinish -0.5
	FinSi
	
	si inasistencias > 15 Entonces
		
		NotaFinish = NotaFinish -1
	FinSi
	
FinFuncion




Funcion CalcularNotaFinal(codigo,nombre,nota1,nota2,nota3,inasistencias,NotaFinish)
	
	Escribir "CODIGO"
	Escribir codigo(j,1)
	Escribir " "
	Escribir "NOMBRE"
	Escribir nombre(j,2)
	Escribir " "
	Escribir "Nota1"
	Escribir nota1
	Escribir ""
	Escribir "Nota2"
	Escribir nota2
	Escribir ""
	Escribir "Nota3"
	Escribir nota3
	Escribir ""
	Escribir "INASISTENCIAS"
	Escribir inasistencias
	Escribir ""
	Escribir "NOTA FINAL"
	Escribir NotaFinish
	Escribir ""
	
FinFuncion


Funcion ListadoEstudiantes(nombre,codigo)
	
	Escribir "-------Nombre-------Codigo-------"
	Escribir         nombre(j,1)       codigo(j,2)
	
FinFuncion
	















Algoritmo estudiantes_camper
	
	Repetir
		j = 1
		Dimensionar codigo(10,1)
		Dimensionar nombre(10,2)
		
		Definir codigo Como Real
		Definir nota1, nota2, nota3, NotaFinish Como Real
		Definir nombre Como Caracter
		
		menu <- menus
		
		Segun menu Hacer
			
			
			1:
				CrearUsuario(nombre,codigo)
				
				
				
				
			2:
				NotasParciales(nota1,nota2,nota3)
				
				
				
				
			3:
				InasistenciasTotal(NumInasistencias)
				
				
				
			4:	
				ListadoEstudiantes(nombre,codigo)
				
				
				
				
			5:	
				
			
		FinSegun
		
	Hasta Que menu = 0
	
	
	
	
	
	
FinAlgoritmo
