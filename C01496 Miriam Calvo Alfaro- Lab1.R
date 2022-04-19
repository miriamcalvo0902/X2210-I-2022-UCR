menu <- as.numeric(readline("Digite un numero entre 1 y 4"))

if( menu == 1 ){
  #Calcular las soluciones de una ecuación cuadrática 
  a <- as.numeric(readline("Digite un valor para a"))
  b <- as.numeric(readline("Digite un valor para b"))
  c <- as.numeric(readline("Digite un valor para c"))
  
  discriminante <- b**2-4*a*c
  if(discriminante > 0){ 
    print("La ecuación cuadrática tiene dos soluciones reales")
  
    print(-b+sqrt(discriminante))/(2*a)
    print(-b-sqrt(discriminante))/(2*a)
  }
  if(discriminante == 0) {
    print("La ecuación cuadrática tiene una única solución real")
    print(-b+sqrt(discriminante))/(2*a)
  }
  if(discriminante < 0)  {
    print("No tiene solución")
  }
  
}

if( menu == 2){
  #Comprobar si 3 valores pueden representar los lados de un triángulo
  a <- as.numeric(readline("Digite un numero para a"))
  b <- as.numeric(readline("Digite un numero para b"))
  c <- as.numeric(readline("Digite un numero para c"))
  
  if(a+b>c & a+c>b & b+c>a){
    print("Sí es triángulo")
  } else{ print("No es triángulo")
      
    }
}
  
if( menu == 3 ) {
  #Verificar si un año es bisiesto o no
  año = as.numeric( readline("Indique el año a consultar") )
  
  if(año %% 4 == 0 & año %% 100 != 0 | año %% 400 == 0) {
    print("Es un año bisiesto")
  }
  
  else{
    print("No es un año bisiesto")
  }
}

if( menu == 4 ) {
  #Indicar la hora que es un segundo después de una hora dada
 
  hora <- as.numeric(readline("Digite una hora, sin incluir los minutos ni segundos, bajo el sistema de 24 horas"))
  minutos <- as.numeric(readline("Digite los minutos"))
  segundos <- as.numeric(readline("Digite los segundos"))
  
  if( segundos == 59 & minutos == 59  ) {
    print("La hora es:")
    hora_final <- paste(as.character(hora+1),as.character("00"),as.character("00"), sep = ":")
    print(hora_final)
    }
    if( segundos == 59 & minutos <  59) {
      print("La hora es:")
      hora_final <- paste(as.character(hora),as.character(minutos+1),as.character("00"), sep = ":")
      print(hora_final)
    }
    if(segundos < 59 & minutos <  59) {
      print("La hora es:")
      hora_final <- paste(as.character(hora),as.character(minutos),as.character(segundos+1), sep = ":")
      print(hora_final)
    }
   if(segundos < 59 & minutos ==  59) {
     hora_final <- paste(as.character(hora),as.character(minutos),as.character(segundos+1), sep = ":")
     print("La hora es:")
     print(hora_final)
   }
  if(segundos > 60) {
    print("Por favor digite la hora de nuevo") 
  }
  if(minutos > 60) {
    print("Por favor digite la hora de nuevo") 
  }
  if(hora > 23) {
    print("Por favor digite la hora de nuevo") 
  }
}

