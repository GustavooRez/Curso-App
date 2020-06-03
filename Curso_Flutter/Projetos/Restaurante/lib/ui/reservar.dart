import 'package:flutter/material.dart';
import 'package:br/components/reservar_class.dart';
import 'package:br/ui/reservar_form.dart';
import 'package:br/ui/reservar_list.dart';
import 'dart:math';

class Reservar extends StatefulWidget {
  @override
  _ReservarState createState() => _ReservarState();
}

class _ReservarState extends State<Reservar> {
  List<Reservar_list> _reservas = [
    
  ];

  _addReserva(String nome, String cpf, DateTime date, String pessoas) {
     var newReserva = Reservar_list(
      id: Random().nextDouble().toString(),
      nome: nome,
      cpf: cpf,
      date: date,
      pessoas: pessoas,     
    );

    setState(() {
      _reservas.add(newReserva);
    });
 
    Navigator.of(context).pop();
  }

  _openFormReserva(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return ReservaForm(_addReserva);
        });
  }

  Future _getTamanho(var count) async{
  setState(() {
  count ++;
});
 }

  
  @override
  Widget build(BuildContext context) {

    final actions = <Widget>[
      IconButton(
         icon: Icon(Icons.add),
         onPressed: ()  => _openFormReserva(context) ,
      ),
    ];


    final mediaQuery = MediaQuery.of(context);
    bool islandscape = mediaQuery.orientation == Orientation.landscape;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Reservas",
          style: TextStyle(
            fontFamily: 'Comfortaa',
          ),
        ),
        actions: actions,
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            "images/fundo.jpg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),


           ReservasList(_reservas)
           
          
        ],
      ),
    );
  }
}
 