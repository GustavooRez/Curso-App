import './1 - pessoa(import).dart';
/* Se tiver em alguma pasta o caminho vai ser
import '../(nome da pasta)/(arquivo)'*/

main(){
  var p1 = Pessoa();
  p1.nome = 'João';

  print("O nome da pessoa é $p1.nome");
}