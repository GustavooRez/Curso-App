import 'package:mobx/mobx.dart';
part 'client.g.dart';


class Client = ClientBase  with _$Client;

abstract class ClientBase with Store{

  @observable
  String nome = '';

  @observable
  String cpf = '';

  @observable
  String email = '';

  @action
  mudarNome(String novoNome){
    nome = novoNome;
  }

  @action
  mudarCPF(String novocpf){
    cpf = novocpf;
  }

  @action
  mudarEmail(String novoemail){
    email = novoemail;
  }
}