Algoritmo ascendentes_descendentes
	
	Dimension nums[10], ordenadosAsc[10], ordenadosDesc[10]
	generarNumeros(nums, ordenadosAsc, ordenadosDesc)
	ascendentes(ordenadosAsc)
	descendentes(ordenadosDesc)
	
	
FinAlgoritmo


Funcion generarNumeros(nums, ordenadosAsc, ordenadosDesc)
	
	Escribir "Original: ";
	Para i=1 Hasta 10 Hacer
		nums[i] = Aleatorio(1,10);
		ordenadosAsc[i] = nums[i];
		ordenadosDesc[i] = nums[i];
		Escribir Sin Saltar nums[i], ", ";
		
	FinPara
	Escribir ""
FinFuncion

Funcion ascendentes(ordenadosAsc)
	Escribir "Los números ordenados de manera ascendente son: ";
	Para i=1 Hasta 10 Hacer
		Para j=1 Hasta 9 Hacer
			
			Si ordenadosAsc[j] > ordenadosAsc[j+1] Entonces
				aux = ordenadosAsc[j];
				ordenadosAsc[j] = ordenadosAsc[j+1];
				ordenadosAsc[j+1]=aux;
			FinSi
		FinPara
	FinPara
	Para i=1 Hasta 10 Hacer
		Escribir Sin Saltar ordenadosAsc[i], ", ";
	FinPara
	Escribir ""
FinFuncion

Funcion descendentes(ordenadosDesc)
	Escribir"Los números ordenados de manera descendente son: ";
	Para i=1 Hasta 10 Hacer
		Para j=1 Hasta 9 Hacer
			
			Si ordenadosDesc[j] < ordenadosDesc[j+1] Entonces
				aux = ordenadosDesc[j];
				ordenadosDesc[j] = ordenadosDesc[j+1];
				ordenadosDesc[j+1]=aux;
			FinSi
		FinPara
	FinPara
	Para i=1 Hasta 10 Hacer
		Escribir Sin Saltar ordenadosDesc[i], ", ";
	FinPara
	
FinFuncion
	