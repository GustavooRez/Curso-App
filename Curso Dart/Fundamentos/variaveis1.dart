main(){
  print("Olá Dart");

  var n1 = 3;
  var n2 = 3.456;

  print(n1 + n2);

  var t1 = "Ola ";

  print(t1 + (n1 + n2).toString());
  print(t1.runtimeType);
  print(n2.runtimeType);
  print(n1 is int);
  print(t1 is int);
}