import 'package:br/components/reservar_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class ReservasList extends StatelessWidget {
  final List<Reservar_list> reservas;

  ReservasList(this.reservas);
 
  var count = 1;

  @override
  Widget build(BuildContext context) {
    return reservas.isEmpty
        ? LayoutBuilder(
            builder: (ctx, constraints) {
              return Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Nenhuma reserva feita para hoje!',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              );
            },
          )
        : ListView.builder(                 
            itemCount: reservas.length,
            itemBuilder: (ctx, index) {                          
              final tr = reservas[index];
              
              return Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 5,
                ),
                
                child: ListTile(
                  
                  leading: CircleAvatar(
                    radius: 30,
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: FittedBox(
                        child: Text('${DateFormat('d MMM').format(tr.date)}'),
                      ),
                    ),
                  ),
                  title: Text(
                    tr.nome,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  subtitle:
                      Text('Mesa para: ${tr.pessoas} Pessoa(as)'),
                ),
              );
            });
  }
}
