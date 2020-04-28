main(){
  var notas = [9.2, 1.2, 4.6, 7.6];

  var notasBoasFn = (double nota) => nota >= 7 ;
  var notasmuitoBoasFn = (double nota) => nota >= 8.8 ;

  var notasBoas = notas.where(notasBoasFn);
  var notasmuitoBoas = notas.where(notasmuitoBoasFn);
 
  print(notasmuitoBoas); 
  print(notasBoas);
  print(notas);
}