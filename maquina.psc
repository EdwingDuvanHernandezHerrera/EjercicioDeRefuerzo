Algoritmo maquina_alimentos
	Escribir "MÁQUINA DE ALIMENTOS"
	Escribir "*PRECIOS*"
	Escribir "1. Producto A -------------------$270"
	Escribir "2. Producto B -------------------$340"
	Escribir "3. Producto C -------------------$390"
	
	Escribir "BIENVENIDO"
	Escribir "Por favor seleccione la opción correspondiente al producto que desea comprar: "
	Leer producto
	
	
	Dimension productosPrecio[3,2]
	
	productosPrecio[1,1] = "Producto A"
	productosPrecio[2,1] = "Producto B"
	productosPrecio[3,1] = "Producto C"
	productosPrecio[1,2] = "270"
	productosPrecio[2,2] = "340"
	productosPrecio[3,2] = "390"
	
	efectivo = 0;
	
	Mientras efectivo  < ConvertirANumero(productosPrecio[producto, 2])  Hacer
		
		Escribir "CREDITO INGESADO: ", efectivo
		Escribir "SALDO RESTANTE: ", ConvertirANumero(productosPrecio[producto, 2]) - efectivo
		Escribir "Usted ha elegido el ",productosPrecio[producto, 1], "por valor de $",productosPrecio[producto,2], " Por favor ingrese únicamente mnonedas de $10, $50 o $100 para pagar: "
		Leer moneda
		
		Si moneda==10 | moneda == 50 | moneda == 100 Entonces
			efectivo = efectivo + moneda
		SiNo
			Escribir "La moneda ingresada no es válida, solo se aceptan monedas de $10, $50 o $100"
			
		FinSi
		
		
	FinMientras
	
	Si efectivo > ConvertirANumero(productosPrecio[producto, 2]) Entonces
		Escribir "Su cambio es de ",  efectivo - ConvertirANumero(productosPrecio[producto, 2])
		Escribir "Gracias por su compra"
	SiNo
		Escribir "Ha pagado el valor exacto"
		Escribir "Gracias por su compra"
	FinSi
	
	
	
FinAlgoritmo
