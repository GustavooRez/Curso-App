import 'dart:math';

main(){

  int a = 2;
  int b = 3;

somaComPrint(a, b);

  int c = 4;
  int d = 5;
somaComPrint(c,d);

SomaNumeros();

print(SomaNumerosRetorna());
}
  

void somaComPrint(int a, int b){
  print(a+b);
  }

void SomaNumeros(){
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  print("Os dois valores foram $n1 $n2");
  print(n1 + n2);
}


int SomaNumerosRetorna(){
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  return (n1+n2);
}


  

