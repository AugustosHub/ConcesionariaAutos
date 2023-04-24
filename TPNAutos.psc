Algoritmo TPNAutos
	Definir autoRojo, autoVerde, camioneta, autoBlanco, moto, i, num, num2, secreto, secreto2, precioBlanco, descuento, descuento2 Como Entero;
	Definir  ingresos,precioMoto, op, op2, op3, op4, op5, op6, op7, op8, op9, op10, op11, op12 como real;
	Definir bandera, cupon30, cupon10 Como Logico;
	
	ingresos <- 0;
	autoBlanco<- 5;
	autoRojo<- 3;
	autoVerde<- 2;
	camioneta<- 1;
	moto<- 1;
	
	precioMoto <- 700000;
	precioBlanco <- 500000;
	
	secreto<- Aleatorio(1,10);
	secreto2<- Aleatorio(1,6);
	
	bandera <- Verdadero;
	cupon30 <- falso;
	cupon10 <- Verdadero;
	
	Repetir
		Escribir "****** MENÚ ******";
		Escribir "1. Realizar una venta";
		Escribir "2. Ver Stock disponible";
		Escribir "3. Ver ingresos obtenidos";
		Escribir "4. Salir";
		Leer op;
		
		Mientras op <> 1 y op <> 2 y op <> 3 y op <> 4 Hacer
			Escribir "Opción invalida, intente de nuevo...";
			leer op;
		FinMientras
		
		Segun op Hacer
			1: 
				Limpiar Pantalla;
				Escribir "¿Qué vehiculo está por vender?";
				Escribir "1. Auto rojo";
				Escribir "2. Auto verde";
				Escribir "3. Auto blanco";
				Escribir "4. Camioneta";
				Escribir "5. Moto";
				Escribir "6. Ninguno";
				Leer op2;
				
				Mientras op2 <> 1 y op2 <> 2 y op2 <> 3 y op2 <> 4 y op2 <> 5 y op2 <> 6 Hacer
					Escribir "Opción invalida, intente de nuevo...";
					leer op2;
				FinMientras
				
				Segun op2 Hacer
					1:
						Escribir "¿El comprador tiene un cupón?";
						Escribir "1. SI";
						Escribir "2. NO";
						leer op3;
						
						Mientras op3 <> 1 y op3 <> 2 Hacer
							Escribir "Opción invalida, intente de nuevo...";
							leer op3;
						FinMientras
						
						Segun op3 Hacer
							1: 
								Escribir "----------------------------------------------------";
								Escribir "El usuario tiene la posibilidad de acceder a un 30% de descuento si adivina el número secreto";
								Escribir "*PISTA*";
								Escribir "El número secreto es entero y está entre 1 y 10";
								Escribir "----------------------------------------------------";
								Escribir "Elija un número";
								leer num;
								
								si num == secreto Entonces
									Escribir "El comprador adivino el número secreto y tiene un 30% de descuento";
									Escribir "El número secreto es ", secreto, " y el número ingresado fue " , num;
									
									cupon30 <- Verdadero;
									cupon10 <- falso;
								SiNo
									Escribir "(!) El comprador no adivinó el número secreto, se queda con un 10% de descuento otorgado por el cupón";
									Escribir "- El número secreto era ", secreto, " y el número ingresado fue ", num;
									
									cupon10 <- Verdadero;
								FinSi
								
								si autoRojo <> 0 y cupon30 == Verdadero Entonces
									Escribir "El auto rojo tiene un valor de 500.000";
									Escribir "Con el cupón de descuento tiene un valor de 350.000";
									Escribir "----------------------------------------";
									Escribir "¿Se realizó la venta del auto?";
									Escribir "1. SI";
									Escribir "2. NO";
									leer op4;
									
									Mientras op4 <> 1 y op4 <> 2 Hacer
										Escribir "Opción invalida, intente otra vez";
										Leer op4;
									FinMientras
									
									Segun op4 Hacer
										1:
											Limpiar Pantalla;
											Escribir "------------------------------------";
											Escribir "¡¡Buena venta!!";
											Escribir "------------------------------------";
											
											si autoRojo <> 0 Entonces
												autoRojo <- autoRojo - 1;
												ingresos <- ingresos + 350000;
											FinSi
										2:
											Limpiar Pantalla;
											Escribir "------------------------------------";
											Escribir "¡¡Suerte la próxima!!";
											Escribir "------------------------------------";
									FinSegun
								SiNo
									si autoRojo <> 0 y cupon10 == Verdadero Entonces
										Escribir " ° El auto rojo tiene un valor de 500.000";
										Escribir " ° Con el cupón de descuento tiene un valor de 450.000";
										Escribir "----------------------------------------";
										Escribir "¿Se realizó la venta del auto?";
										Escribir "1. SI";
										Escribir "2. NO";
										leer op5;
										
										Mientras op5 <> 1 y op5 <> 2 Hacer
											Escribir "Opción invalida, intente otra vez";
											Leer op5;
										FinMientras
										
										Segun op5 Hacer
											1:
												Limpiar Pantalla;
												Escribir "------------------------------------";
												Escribir "¡¡Buena venta!!";
												Escribir "------------------------------------";
												
												si autoRojo <> 0 Entonces
													autoRojo <- autoRojo - 1;
													ingresos <- ingresos + 450000;
												FinSi
											2:
												Limpiar Pantalla;
												Escribir "------------------------------------";
												Escribir "¡¡Suerte la próxima!!";
												Escribir "------------------------------------";
										FinSegun
									SiNo
										si (autoRojo == 0) y (cupon30 == Verdadero o cupon10 == Verdadero) Entonces
											Escribir "No hay autos rojos disponibles, pero puede guardar el cupón y usarlos cuando haya stock de nuevo";
										FinSi
									FinSi
								FinSi
								
							2:
								si autoRojo<>0 Entonces
									Escribir "El auto rojo tiene un valor de 500.000";
									Escribir "No hay descuento disponible";
									Escribir "----------------------------------------";
									Escribir "¿Se realizó la venta del auto?";
									Escribir "1. SI";
									Escribir "2. NO";
									leer op6;
									
									Mientras op6 <> 1 y op6 <> 2 Hacer
										Escribir "Opción invalida, intente otra vez";
										Leer op6;
									FinMientras
									
									Segun op6 Hacer
										1:
											Limpiar Pantalla;
											Escribir "------------------------------------";
											Escribir "¡¡Buena venta!!";
											Escribir "------------------------------------";
											si autoRojo <> 0 Entonces
												autoRojo <- autoRojo - 1;
												ingresos <- ingresos + 500000;
											FinSi
										2:
											Limpiar Pantalla;
											Escribir "------------------------------------";
											Escribir "¡¡Suerte la próxima!!";
											Escribir "------------------------------------";
									FinSegun
								SiNo
									si autoRojo == 0 Entonces
										Escribir "No hay autos rojos disponibles, intente con otro vehiculo";
									FinSi
								FinSi
						FinSegun
						
					2:
						si autoVerde <> 0 Entonces
							Escribir "----------------------------------------";
							Escribir "El auto verde tiene un valor de 450.000";
							Escribir "----------------------------------------";
							Escribir "¿Se realizó la venta del auto?";
							Escribir "1. SI";
							Escribir "2. NO";
							leer op7;
							
							Mientras op7 <> 1 y op7 <> 2 Hacer
								Escribir "Opción invalida, intente otra vez";
								Leer op7;
							FinMientras
							
							Segun op7 Hacer
								1:
									Limpiar Pantalla;
									Escribir "------------------------------------";
									Escribir "¡¡Buena venta!!";
									Escribir "------------------------------------";
									si autoVerde <> 0 Entonces
										autoVerde <- autoVerde - 1;
										ingresos <- ingresos + 450000;
									FinSi
								2:
									Limpiar Pantalla;
									Escribir "------------------------------------";
									Escribir "¡¡Suerte la próxima!!";
									Escribir "------------------------------------";
							FinSegun
						SiNo
							Escribir "No hay autos verdes disponibles";
						FinSi
						
					3:
						Escribir "------------------------------------------";
						Escribir "Actualmente hay ",autoBlanco, " en stock";
						Escribir "El precio unitario es de ", precioBlanco;
						Escribir "------------------------------------------";
						Escribir "¿Se realizó la venta del auto blanco?";
						Escribir "1. SI";
						Escribir "2. NO";
						leer op8;
						
						Mientras op8 <> 1 y op8 <> 2 Hacer
							Escribir "Opción invalida, intente de nuevo...";
							leer op8;
						FinMientras
						
						Segun op8 Hacer
							1:
								Limpiar Pantalla;
								Escribir "------------------------------------";
								Escribir "¡¡¡Buena venta!!!";
								Escribir "------------------------------------";
								
								si autoBlanco <> 0 Entonces
									autoBlanco <- autoBlanco - 1;
									precioBlanco <- precioBlanco + 50000;
								FinSi
								
							2:
								Limpiar Pantalla;
								Escribir "------------------------------------";
								Escribir "¡¡¡Suerte la próxima!!!";
								Escribir "------------------------------------";
						FinSegun
						
					4: 
						si camioneta <> 0 Entonces
							Escribir "----------------------------------------------------";
							Escribir "La cantidad de camionetas disponibles es ", camioneta, " camioneta/s.";
							Escribir "El precio unitario es de 2.000.000";
							Escribir "----------------------------------------------------";
							Escribir "¿Se realizó la venta de la camioneta?";
							Escribir "1. SI";
							Escribir "2. NO";
							leer op9;
							
							Mientras op9 <> 1 y op9 <> 2 Hacer
								Escribir "Opción invalida, intente de nuevo...";
								Leer op9;
							FinMientras
							
							Segun op9 Hacer
								1:
									Limpiar Pantalla;
									Escribir "------------------------------------";
									Escribir "¡¡¡Buena Venta!!!";
									Escribir "------------------------------------";
									
									camioneta <- camioneta - 1;
									ingresos <- ingresos + 2000000;
									
								2:
									Limpiar Pantalla;
									Escribir "------------------------------------";
									Escribir "¡¡¡Suerte la próxima!!!";
									Escribir "------------------------------------";
							FinSegun
						SiNo
							si camioneta == 0 Entonces
								Limpiar Pantalla;
								Escribir "------------------------------------";
								Escribir "No hay camionetas disponibles, intente con otro vehiculo";
								Escribir "------------------------------------";
							FinSi
						FinSi
						
					5: 
						Escribir "------------------------------------";
						si moto <> 0 Entonces
							Escribir "El precio unitario de las motos es de 700.000";
							Escribir " ° El comprador tiene la posibilidad de acceder a un descuento si adivina un número secreto";
							Escribir " ° Si descubre el número secreto se ganará un descuento (max 15% y 3 intentos)";
							Escribir "*PISTA* el número secreto se encuentra entre 1 y 6";
							
							
							para i<-1 hasta 3 Hacer
								Escribir "Ingrese un número";
								Leer num2;
								
								Mientras num2>6 o num2<1 Hacer
									Escribir "Número invalido, intente de nuevo...";
									leer num2;
								FinMientras
								
								si num2==secreto2 Entonces
									Escribir "El comprador encontró el número secreto";
									Escribir "El número secreto era el: " ,secreto2;
									
									i <- 4;
								FinSi
								
								si i == 3 Entonces
									Escribir "Intentos agotados";
									Escribir "El número secreto era: ",secreto2;
								FinSi
							FinPara
							
							si num2==secreto2 Entonces
								Escribir "Ingrese el día de la semana para calcula el descuento: ";
								Escribir "Hoy es: ";
								Escribir "1. Lunes";
								Escribir "2. Martes";
								Escribir "3. Miercoles";
								Escribir "4. Jueves";
								Escribir "5. Viernes";
								Escribir "6. Sábado";
								Leer op10;
								
								Mientras op10 <> 1 y op10 <> 2 y op10 <> 3 y op10 <> 4 y op10 <> 5 y op10 <> 6 Hacer
									Escribir "Opción invalida, intente de nuevo...";
									leer op10;
								FinMientras
								
								si op10 == secreto2 Entonces
									descuento<- (op10 * 2) + 3;
									
									si descuento >= 15 Entonces
										Escribir "Se ha superado el límite de descuento (15%)";
										descuento <- 15;
									FinSi
								SiNo
									descuento<- 3;
								FinSi
								
								Escribir "------------------------------------";
								Escribir "El precio unitario de la moto era de 700000";
								Escribir "El comprador consiguió un descuento del ",descuento,"%";
								descuento2<- ((precioMoto*descuento)/100);
								precioMoto<- precioMoto-descuento2;
								Escribir "El precio unitario de la moto ahora es de: ",precioMoto;
								Escribir "------------------------------------";
								Escribir "¿Se realizó la venta?";
								Escribir "1. SI";
								Escribir "2. NO";
								leer op11;
								
								Mientras op11 <> 1 y op11 <> 2 Hacer
									Escribir "Opción invalida, intente de nuevo...";
								FinMientras
								
								Segun op11 Hacer
									1:
										Limpiar Pantalla;
										Escribir "------------------------------------";
										Escribir "¡¡¡Buena Venta!!!";
										Escribir "------------------------------------";
										ingresos <- ingresos + precioMoto;
										moto<- moto - 1;
									2:
										Limpiar Pantalla;
										Escribir "------------------------------------";
										Escribir "¡¡¡Suerte la próxima!!!";
										Escribir "------------------------------------";
								FinSegun
							SiNo
								Escribir "No hay descuento disponible";
								Escribir "------------------------------------";
								Escribir "El precio unitario de la moto es de 700000";
								Escribir "El comprador no consiguió un descuento";
								Escribir "------------------------------------";
								Escribir "¿Se realizó la venta?";
								Escribir "1. SI";
								Escribir "2. NO";
								leer op12;
								
								Mientras op12 <> 1 y op12 <> 2 Hacer
									Escribir "Opción invalida, intente de nuevo...";
								FinMientras
								
								Segun op12 Hacer
									1:
										Limpiar Pantalla;
										Escribir "------------------------------------";
										Escribir "¡¡¡Buena Venta!!!";
										Escribir "------------------------------------";
										ingresos <- ingresos + precioMoto;
										moto<- moto - 1;
									2:
										Limpiar Pantalla;
										Escribir "------------------------------------";
										Escribir "¡¡¡Suerte la próxima!!!";
										Escribir "------------------------------------";
								FinSegun
							FinSi
						SiNo
							si moto == 0 Entonces
								Limpiar Pantalla;
								Escribir "------------------------------------";
								Escribir "No hay más motos disponibles";
								Escribir "------------------------------------";
							FinSi
						FinSi
					6:
						Limpiar Pantalla;;
				FinSegun
				
			2:
				Escribir "-----------------------------------";
				Escribir "***** STOCK *****";
				Escribir "Autos rojos: ",autoRojo;
				Escribir "Autos blancos: ", autoBlanco;
				Escribir "Autos verdes: ", autoVerde;
				Escribir "Camionetas: ", camioneta;
				Escribir "Motos: ",moto;
				Escribir "";
				Escribir "-----------------------------------";
				
			3:
				Escribir "-----------------------------------";
				Escribir "***** INGRESOS *****";
				Escribir "Se comprenden por ingresos las ganancias obtenidad durante el ejercicio fiscal del 01/01/2023 al dia de la fecha";
				Escribir "La suma de los mismos comprendidas por ganancias obviando las pérdidas es de " ,ingresos, " pesos";
				Escribir "-----------------------------------";
			4:
				Limpiar Pantalla;
				Escribir "Saliendo del programa...";
				bandera<- falso;
		FinSegun
		
	Hasta Que bandera == falso;
	
FinAlgoritmo
