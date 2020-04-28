import '../modelo/carro.dart';


main(){
  var velocidade = new Carro(200);

  while(!velocidade.estaNoLimite()){
    print("A velocidade atual é ${velocidade.acelerar()} Km/h");
  }

  print("O carro chegou há ${velocidade.velocidadeAtual} Km/h");


  while (velocidade.velocidadeAtual > 0){
    print("A velocidade atual é ${velocidade.frear()} Km/h");
  }

  velocidade.velocidadeAtual = 3;

    print("O carro parou com ${velocidade.velocidadeAtual} Km/h");

}