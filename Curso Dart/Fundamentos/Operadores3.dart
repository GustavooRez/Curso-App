main(){
  int a = 3;
  int b = 4;

  a++;
  a--;

  print(a);
  print(a++ == --b); /*É verdadeiro porque quando é colocado depois da letra ele não tem
  urgência para fazer, quando colocado antes ele já é feito, então ficaria 3 == 3*/
  

}