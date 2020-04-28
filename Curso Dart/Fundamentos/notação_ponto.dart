// Com a notação ponto você consegue fazer várias características, comportamentos

main(){
  double nota = 6.99.roundToDouble();
  print(nota);

  print("Texto".toUpperCase());

  String s1 = "Gustavo Rezende";
  String s2 = s1.substring(0,7);
  String s3 = s2.toUpperCase();
  String s4 = s3.padRight(15, "!");

  var s5 = "Gustavo Rezende".substring(0,8)
  .toUpperCase().padRight(15, '!');

  print(s3);
  print(s4);
  print(s5);
}