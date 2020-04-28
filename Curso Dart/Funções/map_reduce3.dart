main(){
  var alunos = [
    {'nome:': 'Alfredo', 'nota:': 9.9},
    {'nome:': 'Pedro', 'nota:': 7.9},
    {'nome:': 'Augusto', 'nota:': 8.9},
    {'nome:': 'Gustavo', 'nota:': 3.9},
    {'nome:': 'Rafa', 'nota:': 5.9},
  ];
  var notasFinais = alunos.map((aluno) => aluno['nota'])
  .map((nota) => (nota as double).roundToDouble())
  .where((nota) => nota >= 8.1);

  var total = notasFinais.reduce((t,a) => t +a);
  print("O valor da média é: ${total/ notasFinais.length}.");
}