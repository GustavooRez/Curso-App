main(){
  int Function(int, int) soma1 = somaFn;
  print(soma1(23,312));

 var soma2 = ([ int x = 1, int y = 2]){
    return x + y;
  };

  print(soma2(30, 250));
  print(soma2(7, 99));
}

int somaFn(int a, int b){
  return a + b;
}