main(){

  saudarPessoa(nome: "João", idade: 33);
  saudarPessoa(idade: 49, nome: "Maria");
  imprimirdata(10);
  imprimirdata(11, ano: 2020);
}

saudarPessoa({String nome, int idade}){
  print("Olá $nome nem parece que você tem $idade anos.");
}

imprimirdata(int dia, {int ano = 1970, int mes = 10}){
  print('$dia/$mes/$ano');
}