// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on ControllerBase, Store {
  Computed<List<ItemModel>> _$listFilteresComputed;

  @override
  List<ItemModel> get listFilteres => (_$listFilteresComputed ??=
          Computed<List<ItemModel>>(() => super.listFilteres,
              name: 'ControllerBase.listFilteres'))
      .value;
  Computed<int> _$totalCheckedComputed;

  @override
  int get totalChecked =>
      (_$totalCheckedComputed ??= Computed<int>(() => super.totalChecked,
              name: 'ControllerBase.totalChecked'))
          .value;

  final _$filterAtom = Atom(name: 'ControllerBase.filter');

  @override
  String get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(String value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
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
  dynamic setFilter(String value) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setFilter');
    try {
      return super.setFilter(value);
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
filter: ${filter},
listFilteres: ${listFilteres},
totalChecked: ${totalChecked}
    ''';
  }
}
