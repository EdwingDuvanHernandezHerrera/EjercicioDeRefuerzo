Algoritmo alzas_dolar
	
	Escribir "Ingrese el n�mero de d�as para a analizar: "
	Leer cantidadDias
	Dimension preciosDolar[cantidadDias];
	Dimension alzas[2, cantidadDias];
	ingresoDatos(cantidadDias, preciosDolar);
	calcularAlzas(cantidadDias, preciosDolar, alzas)
	ordenarAlzas(cantidadDias,alzas)
	si alzas[1, 1] == 0  Entonces
		Escribir "No se presentaron alzas en el precio del d�lar para el periodo estimado"
	SiNo
		Escribir "En el cambio del d�a ",alzas[2,1]," para el d�a ",alzas[2,1]+1," se present� la mayor alza en el precio del d�lar por valor de ", alzas[1, 1];
	FinSi
	
	
FinAlgoritmo


Funcion ingresoDatos(cantidadDias, preciosDolar)
	Definir precioDolar Como Real
	Para i=1 Hasta cantidadDias Con Paso 1 Hacer
		Escribir "Ingrese el precio del d�lar en el d�a ", i, ": ";
		Leer precioDolar;
		preciosDolar[i] = precioDolar;
		Escribir preciosDolar[i]
	FinPara
	
FinFuncion


Funcion calcularAlzas(cantidadDias, preciosDolar, alzas)
	Para i=1 Hasta cantidadDias-1 Con Paso 1 Hacer
		
		alzas[1, i] = preciosDolar[i+1] - preciosDolar[i];
		alzas[2, i] = i;
		Escribir alzas[1, i]
	FinPara
	
FinFuncion

Funcion ordenarAlzas(cantidadDias,alzas)
	Escribir "Las alzas ordenadas de manera descendente son: ";
	Para i=1 Hasta cantidadDias Hacer
		Para j=1 Hasta cantidadDias-1 Hacer
			
			Si alzas[1, j] < alzas[1, j+1] Entonces
				aux = alzas[1, j];
				alzas[1,j] = alzas[1, j+1];
				alzas[1, j+1]=aux;
				
				
				ind = alzas[2, j];
				alzas[2,j] = alzas[2, j+1];
				alzas[2, j+1]=ind;
			FinSi
		FinPara
	FinPara
	Para i=1 Hasta cantidadDias Hacer
		Escribir Sin Saltar alzas[1, i], ", ";
	FinPara
	Escribir ""
FinFuncion


