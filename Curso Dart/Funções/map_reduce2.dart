main(){
  var notas = [7.3, 5.4, 7.8, 9.9, 10.1];
  var total = notas.reduce(somar);
  print(total);

  var nome = ["Bia", 'Carlos'];
  print(nome.reduce(juntar));

}

double somar(double a, double b){
  print("$a $b");
  return a + b;
}

String juntar(String ac,String elemento){
  return "$ac,$elemento";
}