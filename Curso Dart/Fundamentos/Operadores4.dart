import 'dart:io';

main(){
  print("Está chovendo? (s/N)");
  bool estaChovendo = stdin.readLineSync() == 's';

  print("Está frio? (s/N)");
  bool estaFrio = stdin.readLineSync() == 's';
  
  String resultado = estaChovendo || estaFrio ? "Ficar em casa" : "Sair de casa";
  // O ? serve para fazer atribuição de sim ou não, o : serve para separar o sim e não
  
  print(resultado);
  print(estaChovendo && estaFrio ? "Azarado!" : "Sortudo!");
}