import 'dart:math';

void executar(Function fnpar, Function fnimpar){
  Random().nextInt(10) % 2 == 0 ? fnpar() : fnimpar();
}

void executarPor(int qtd, Function(String) fn, String valor){
  for(int i = 0; i< qtd; i++){
    fn(valor);
  }
}

main() {
  var minhaFnpar = () => print("O Valor é par!");
  var minhaFnimpar = () => print("O Valor é impar!");

  executar(minhaFnpar, minhaFnimpar);

  executarPor(10, print, "Muito Legal");
}