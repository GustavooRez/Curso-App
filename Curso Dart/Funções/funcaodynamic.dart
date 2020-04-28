main(){
  juntar(1,9);
  juntar('Bom', 'Dia');
  var resultado = juntar("O valor de Pi é", 3.1415);
  print(resultado);
}

dynamic juntar(dynamic a,b){
  print(a.toString() + b.toString());
  return (a.toString() + b.toString());
}