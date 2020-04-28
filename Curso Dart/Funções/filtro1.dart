main(){
  var notas = [9.2, 1.2, 4.6, 7.6];
  var notasBoas = [];

  for(var nota in notas){
    if(nota >= 7){
      notasBoas.add(nota);
    }
  }

  print(notasBoas);
}