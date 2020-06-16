import 'package:br/models/item_model.dart';
import 'package:mobx/mobx.dart';
import 'package:rxdart/rxdart.dart';
part 'controller.g.dart';


class Controller = ControllerBase  with _$Controller;

abstract class ControllerBase with Store{

  final listItens = BehaviorSubject<List<ItemModel>>.seeded([]);
  final filter = BehaviorSubject<String>.seeded('[]');

/* @observable
ObservableList<ItemModel> listItens = [
  ItemModel(title:  'Item1', check: true),
  ItemModel(title:  'Item2', check: true),
  ItemModel(title:  'Item3', check: true),
  ItemModel(title:  'Item4', check: true),
].asObservable(); */
 
@action 
addItem(ItemModel model){
  listItens.add(model);
}

@computed
List<ItemModel> get listFilteres{
  if(filter.isEmpty){
    return listItens;
  }else{
    return listItens.where((item) => item.title.toLowerCase().contains(filter.toLowerCase())).toList();
  }
}

@computed 
int get totalChecked => listItens.where((item) => item.check).length;

@observable 
String filter = '';

@action 
setFilter(String value) => filter = value;

@action 
removeItem(ItemModel model){
  listItens.removeWhere((item) => item.title == model.title);
}

}