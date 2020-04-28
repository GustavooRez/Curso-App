main(){
  // Operadores Aritméticos (Operadores Binários)
  int a = 7;
  int b = 8;
  int resultado = a + b;
  print(resultado);
  print(a-b);
  print(a*b);
  print(a/b);
  print(a%b);  
  print(a%2);
  print(a + b * a - b / a);


  //Operadores Lógicos
  bool fragil = true;
  bool caro = true;

  print(fragil && caro); //(E) só se os dois forem verdadeiros para dar verdadeiro
  print(fragil || caro); //(OU)
  print(fragil ^ caro); //(OU EXCLUSIVO)
  print(!fragil); // ! Nega o valor 
  print(!!fragil); // Volta ao valor original


}