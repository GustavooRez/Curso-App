// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Client on ClientBase, Store {
  final _$nomeAtom = Atom(name: 'ClientBase.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$cpfAtom = Atom(name: 'ClientBase.cpf');

  @override
  String get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  final _$emailAtom = Atom(name: 'ClientBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$ClientBaseActionController = ActionController(name: 'ClientBase');

  @override
  dynamic mudarNome(String novoNome) {
    final _$actionInfo =
        _$ClientBaseActionController.startAction(name: 'ClientBase.mudarNome');
    try {
      return super.mudarNome(novoNome);
    } finally {
      _$ClientBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarCPF(String novocpf) {
    final _$actionInfo =
        _$ClientBaseActionController.startAction(name: 'ClientBase.mudarCPF');
    try {
      return super.mudarCPF(novocpf);
    } finally {
      _$ClientBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarEmail(String novoemail) {
    final _$actionInfo =
        _$ClientBaseActionController.startAction(name: 'ClientBase.mudarEmail');
    try {
      return super.mudarEmail(novoemail);
    } finally {
      _$ClientBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
cpf: ${cpf},
email: ${email}
    ''';
  }
}
