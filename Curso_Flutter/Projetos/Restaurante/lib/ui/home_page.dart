import 'package:flutter/material.dart';
import 'package:br/ui/outros.dart';
import 'package:br/ui/cardapio.dart';
import 'package:br/ui/locais.dart';
import 'package:br/ui/reservar.dart';
import 'package:br/ui/funcionarios.dart';

class HomePage extends StatelessWidget {
  final String cardapio = 'Nosso Cardápio';
  final String reservar = 'Reservar Mesa';
  final String locais = 'Nossos Locais';
  final String opcoes = 'Outras Opções';
  final String funcionarios = 'Funcionários';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Restaurante Comida Boa",
          style: TextStyle(
            fontFamily: 'Comfortaa',
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            "images/fundo.jpg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),
          Container(
            alignment: Alignment(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, bottom: 15.0, left: 0.0, right: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buildButton(cardapio, context),
                  buildButton(reservar, context),
                  buildButton(funcionarios, context),
                  buildButton(locais, context),
                  buildButton(opcoes, context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildButton(String label, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      child: RaisedButton(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Text(
            '$label',
            style: TextStyle(
              fontSize: 23.0,
              backgroundColor: Colors.transparent,
              fontFamily: 'Raleway',
            ),
            textAlign: TextAlign.center,
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.purple)),
        onPressed: () {
          if (label == 'Outras Opções') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Opcoes()));
          }
          if (label == 'Nosso Cardápio') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cardapio()));
          }
          if (label == 'Nossos Locais') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Locais()));
          }
          if (label == 'Reservar Mesa') {
             Navigator.push(
                context, MaterialPageRoute(builder: (context) => Reservar())); 
          }
          if (label == 'Funcionários') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Funcionario()));
          }
        },
      ),
    ),
  );
}
