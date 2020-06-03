import 'package:br/components/funcionarios_class.dart';
import 'package:br/ui/funcionarios.dart';
import 'package:flutter/material.dart';

class Funcionario_Page extends StatelessWidget {
  final Funcionarios_list funcionario_pass;
  const Funcionario_Page({Key key, this.funcionario_pass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          funcionario_pass.name,
          style: TextStyle(
            fontFamily: 'Comfortaa',
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Image.asset(
            "images/fundo.jpg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(15.0),
                child: Image.network(
                  funcionario_pass.image,
                  fit: BoxFit.cover,
                ),
              ),
              Card(
                color: Colors.blueGrey[50],
                child: Container(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    funcionario_pass.name,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Comfortaa',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  'Idade: ${funcionario_pass.idade}',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Comfortaa',
                  ),
                ),
              ),
              
                  Padding(
                      padding: const EdgeInsets.only(right:10.0, left:10.0,bottom: 15.0),
                      child: Text(
                        'Cargo: ${funcionario_pass.cargo}',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                    ),
                   Padding(
                      padding: const EdgeInsets.only(right:10.0, left:10.0,bottom: 15.0),
                      child: Text(
                        'Tempo no Restaurante: ${funcionario_pass.tempo} anos',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                    )
            ],
          ),
        ],
      ),
    );
  }
}
