import 'package:br/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'item_widget.dart';
import 'controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = Controller();

  _dialog() {
    var model = ItemModel();

    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('Adicionar Item'),
            content: TextField(
              onChanged: model.setTitle,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Novo Item',
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  controller.addItem(model);
                  Navigator.pop(context);
                },
                child: Text('Salvar'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancelar'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: controller.setFilter,
          decoration: InputDecoration(hintText: "Pesquisa"),
        ),
        actions: <Widget>[
          IconButton(
            icon: Observer(builder: (_) {
              return Text("${controller.totalChecked}");
            }),
            onPressed: () {},
          )
        ],
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
          itemCount: controller.listFilteres.length,
          itemBuilder: (_, index) {
            var item = controller.listFilteres[index];
            return ItemWidget(
              item: item,
              removeClicked: () {
                controller.removeItem(item);
              },
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            _dialog();
          }),
    );
  }
}
