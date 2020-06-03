import 'package:flutter/material.dart';
import 'package:br/auxiliares/botao.dart';
import 'package:br/auxiliares/date_picker.dart';
import 'package:br/auxiliares/text.dart';


class ReservaForm extends StatefulWidget {
  final void Function( String, String, DateTime, String) onSubmit;

  ReservaForm(this.onSubmit);

  @override
  _ReservaFormState createState() => _ReservaFormState();
}

class _ReservaFormState extends State<ReservaForm> {
  final _nameController = TextEditingController();
  final _cpfController = TextEditingController();
  final _pessoasController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  _submitForm() {
    final nome = _nameController.text;
    final cpf = _cpfController.text;
    final pessoas = _pessoasController.text;

    if (nome.isEmpty || cpf.length < 12 || _selectedDate == null ) {
      return;
    }

    widget.onSubmit(nome, cpf,_selectedDate,pessoas);
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.only(
              top: 10,
              right: 10,
              left: 10,
              bottom: 10 + MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              children: <Widget>[
                AdaptativeTextField(
                  controller: _nameController,
                  onSubmitted: (_) => _submitForm(),
                  label:  "Nome Completo",
                  
                ),
                
                AdaptativeTextField(
                  label:  "CPF",
                  controller: _cpfController,
                  onSubmitted: (_) => _submitForm(),
                ),

                AdaptativeTextField(
                  label:  "Quantidade de Pessoas",
                  controller: _pessoasController,
                  onSubmitted: (_) => _submitForm(),
                ),
                
                
                AdaptativeDatePicker(
                  selectedDate: _selectedDate,
                  onDateChanged: (newDate){
                    setState(() {
                      _selectedDate = newDate;
                    });
                  },                  
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: <Widget>[
                  AdaptativeButton(
                    label: 'Fazer Reserva',
                    onPressed: _submitForm,
                  ),
                ]),
              ],
            ),
          )),
    );
  }
}
