import 'package:br/models/item_model.dart';
import 'package:mobx/mobx.dart';
part 'controller.g.dart';


class Controller = ControllerBase  with _$Controller;

abstract class ControllerBase with Store{

@observable
ObservableList<ItemModel> listItens = [
  ItemModel(title:  'Item1', check: true),
  ItemModel(title:  'Item2', check: true),
  ItemModel(title:  'Item3', check: true),
  ItemModel(title:  'Item4', check: true),
].asObservable();
 
@action 
addItem(ItemModel model){
  listItens.add(model);
}

@computed 
int get totalChecked => listItens.where((item) => item.check).length;

@action 
removeItem(ItemModel model){
  listItens.removeWhere((item) => item.title == model.title);
}

}