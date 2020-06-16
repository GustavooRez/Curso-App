import 'package:mobx/mobx.dart';
part 'controller.g.dart';


class Controller = ControllerBase  with _$Controller;

abstract class ControllerBase with Store{

  @computed
  String get nomeCompleto => "$nome $sobrenome";

  @observable
  String nome = '';

  @observable
  String sobrenome = '';

  @action
  mudarNome(String novoNome){
    nome = novoNome;
  }

  @action
  mudarSobrenome(String novoSobrenome){
    sobrenome = novoSobrenome;
  }
}