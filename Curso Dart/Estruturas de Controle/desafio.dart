main(){

  var valor = '#';

  for(var i = 0; i<6; i++){
    print(valor);
    valor += '#';
  }


  for(valor ; valor != '#######'; valor += '#'){
    print(valor);
  }
}