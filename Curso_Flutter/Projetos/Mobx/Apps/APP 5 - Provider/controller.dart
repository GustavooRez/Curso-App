import 'package:mobx/mobx.dart';
import 'client.dart';
part 'controller.g.dart';


class Controller = ControllerBase  with _$Controller;

abstract class ControllerBase with Store{

  var client = Client();

  @computed
  bool get isValid{
    return validateName() == null && validateEmail() == null && validateCPF() == null;
  }

  String validateName(){

    if(client.nome == null || client.nome.isEmpty){
      return "Este Campo é obrigatório";
    }
    else if(client.nome.length < 3){
      return "Seu nome precisa ter mais que 3 caracteres";
    }
  }

  String validateEmail(){

    if(client.email == null || client.email.isEmpty){
      return "Este Campo é obrigatório";
    }
    else if(!client.email.contains('@')) {
      return "Seu email precisa ser válido";
    }
  }

  String validateCPF(){

    if(client.cpf == null || client.cpf.isEmpty){
      return "Este Campo é obrigatório";
    }
    else if(client.cpf.length < 11){
      return "Seu cpf precisa ter 12 caracteres";
    }
  }

  dispose(){
    
  }


}