import 'package:br/body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MyHomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final controller = Provider.of<Controller>(context);

    return Scaffold(
      appBar: AppBar(
        title: Observer(builder: (_){
          return Text(controller.isValid ? 
          "Formulário Validado" : "Formulário Não Validado");
        })
      ),
      body: BodyWidget()
    );
  }
}
