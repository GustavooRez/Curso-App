// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on ControllerBase, Store {
  Computed<int> _$totalCheckedComputed;

  @override
  int get totalChecked =>
      (_$totalCheckedComputed ??= Computed<int>(() => super.totalChecked,
              name: 'ControllerBase.totalChecked'))
          .value;

  final _$listItensAtom = Atom(name: 'ControllerBase.listItens');

  @override
  ObservableList<ItemModel> get listItens {
    _$listItensAtom.reportRead();
    return super.listItens;
  }

  @override
  set listItens(ObservableList<ItemModel> value) {
    _$listItensAtom.reportWrite(value, super.listItens, () {
      super.listItens = value;
    });
  }

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  dynamic addItem(ItemModel model) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.addItem');
    try {
      return super.addItem(model);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItem(ItemModel model) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.removeItem');
    try {
      return super.removeItem(model);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listItens: ${listItens},
totalChecked: ${totalChecked}
    ''';
  }
}
