main(){
  var alunos = [
    {'nome:': 'Alfredo', 'nota:': 9.9},
    {'nome:': 'Pedro', 'nota:': 7.9},
    {'nome:': 'Augusto', 'nota:': 8.9},
    {'nome:': 'Gustavo', 'nota:': 3.9},
    {'nome:': 'Rafa', 'nota:': 5.9},
  ];
  String Function(Map elemento) pegarnome = (aluno) => aluno['nome'];
  int Function(String) qtdletras = (texto) => texto.length;
  Function(int) dobro = (numero) => numero * 2;
  var quantidadesletras = alunos.map(pegarnome).map(qtdletras);
  var nomes = alunos.map(pegarnome);
  print(nomes);
  print(qtdletras);
}