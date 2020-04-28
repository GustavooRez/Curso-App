import 'dart:io';

main(){

  var digitando = '';

  while(digitando != 'sair'){
    stdout.write("Digite algo ou sair:");
    digitando = stdin.readLineSync();
  }
  // Do While é pra executar pelo menos uma vez
    do {
    stdout.write("Digite algo ou sair:");
    digitando = stdin.readLineSync();
  }while(digitando != 'sair');


}