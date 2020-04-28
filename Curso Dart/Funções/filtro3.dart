List<double> filtrar(List<double> lista, bool Function(double) fn){
  List<double> ListaFiltrada = [];
  for(double elemento in lista){
    if(fn(elemento)){
      ListaFiltrada.add(elemento);
    }
  }
  return ListaFiltrada;
}

main(){
  var notas = [9.2, 1.2, 4.6, 7.6];
  var boasNotasFn = (double nota) => nota >= 7.5;

  var somenteNotasBoas = filtrar(notas, boasNotasFn);
  print(somenteNotasBoas);
}