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
            Observer(builder: (_){
              return Text(
              '$controller.counter',
              style: TextStyle(
                color: Colors.black,
              ),
            );
            })],
            )
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.increment();
        },
        child: Icon(Icons.add)
      ),
    );
  }
}