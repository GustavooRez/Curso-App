import 'package:flutter/material.dart';
import 'controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MyHomePage extends StatelessWidget {

  final controller = Controller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MobX APP 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText:'Nome'),
              onChanged: controller.mudarNome,
            ),
            SizedBox(
              height: 20
            ),
            TextField(
              decoration: InputDecoration(labelText:'Nome'),
              onChanged: controller.mudarSobrenome,
            ),
            SizedBox(
              height: 20
            ),
            Observer(builder: (_){
              return Text('${controller.nomeCompleto}');
            })
            ],
            )
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){        },
      ),
    );
  }
}