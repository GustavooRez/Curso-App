import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';



class BodyWidget extends StatelessWidget {
  
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

  @override
  Widget build(BuildContext context) {

        final controller = Provider.of<Controller>(context);

    return  Padding(
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
              builder: (_) {
                return RaisedButton(
                  onPressed: controller.isValid ? () {} : null,
                  child: Text('Salvar'),
                );
              },
            )
          ],
        ),
      );
  }
}