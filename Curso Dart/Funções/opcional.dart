import 'dart:math';

main(){
  int n1 = numeroAleatorio(100);
  print(n1);

  int n2 = numeroAleatorio(90);
  print(n2);

  imprimirData(11, 10, 2020);

}
int numeroAleatorio(int maximo){
  return Random().nextInt(maximo);
}

int imprimirData(int dia, int mes, int ano){
  print('$dia, $mes, $ano ');
}