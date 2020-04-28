/* 
  -NÚMEROS
  -STRING
  -BOOLEANO
*/

main(){
  int n1=3;
  double n2 = (-5.67).abs();
  double n3 = double.parse("12.765");
  num n4 = 6;

  print(n1.abs() + n2 + n3 + n4);

  n4 = 6.7;
  print(n1.abs() + n2 + n3 + n4);  

  String s1 = "lala";
  String s2 = "lulu";

  print(s1 + s2.toUpperCase() + "!!");

  bool chovendo = true;
  bool frio = false; 

  print(chovendo && frio);

  dynamic x = "Um texto legal";
  print(x);

  x = 123;
  print(x); 

}