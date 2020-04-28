main(){
  Map<String, double> notas = {
    "João Pedro" : 9.2,
    "Ana" : 5.2,
    "Pedro" : 3.2,
    "Rafael" : 6.2,
  };

  for(String nome in notas.keys){
    print('Nome do aluno é $nome');
  }

  for(var nota in notas.values){
    print("A nota foi $nota");
  }

  for(var registro in notas.entries){
    print("O ${registro.key} tem nota ${registro.value}");
  }

}