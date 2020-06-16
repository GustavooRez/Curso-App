import 'package:flutter/material.dart';
import 'controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MyHomePage extends StatelessWidget {
  _textField({String labelText, onChanged, String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MobX APP 4 - Formulário"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Observer(
              builder: (_) {
                return _textField(
                    errorText: controller.validateName,
                    labelText: "Nome",
                    onChanged: controller.client.mudarNome);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Observer(
              builder: (_) {
                return _textField(
                    errorText: controller.validateEmail,
                    labelText: "Email",
                    onChanged: controller.client.mudarEmail);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Observer(
              builder: (_) {
                return _textField(
                    errorText: controller.validateCPF,
                    labelText: "CPF",
                    onChanged: controller.client.mudarCPF);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Observer(
              builder: (_){
                RaisedButton(
                  onPressed: controller.isValid ? () {} : null,
                  child: Text('Salvar'),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
