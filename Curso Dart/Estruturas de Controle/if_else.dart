import 'dart:math';

main(){
  var nota = Random().nextInt(11);

  print("Nota selecionada foi $nota.");

  if(nota >= 6){
    print('Aprovado!');
    print('Fim!');
  } else if(nota >= 5){
    print("Vai fazer recuperação, corno!");
  }  else{
    print("Reprovado!");
    print("Pena, more");
  }
}