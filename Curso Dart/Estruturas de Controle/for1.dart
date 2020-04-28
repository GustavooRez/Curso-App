main(){

  for(int a = 0; a < 10; a++){
    print('a = $a');
  }

  for(int a = 100; a >= 0; a-= 10){
    print('a = $a');
  }


  var notas = [8.9, 9.1, 7.8, 6.9];
  for(var i = 0; i< notas.length; i++){
    print("Notas ${i+1} = ${notas[i]}.");
  }

  for(var nota in notas){
    print("O valor da nota é $nota.");
  }

  var matriz = [
    [8.9, 9.1, 7.8, 6.9],
    [8.9, 9.1, 7.8, 6.9],
    [8.9, 9.1, 7.8, 6.9],
  ];

    for(var cordenada in matriz){
      for(var ponto in cordenada){
        print("Valor do ponto é $ponto");
      }
    }
}