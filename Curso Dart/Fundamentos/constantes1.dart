import 'dart:io';

main(){
  // Área da circunferência = PI * raio * raio
  // print("Informe o Raio: ") Pode ser usada, mas o valor digitado será aparecido em baixo
  // readLineSync lê uma entrada do usuário
  stdout.write("Informe o Raio: ");
  final entradaDoUsuario = stdin.readLineSync();
  
  const PI = 3.1415;
  // Parse transforma string em double
 
  final raio = double.parse(entradaDoUsuario);

  var area= raio * PI * raio;
  print("O valor da Área é: "+ area.toString());
}
