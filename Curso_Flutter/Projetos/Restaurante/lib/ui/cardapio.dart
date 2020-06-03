import 'package:br/components/cardapiolist.dart';
import 'package:br/ui/cardapio_page.dart';
import 'package:flutter/material.dart';

class Cardapio extends StatefulWidget {
  @override
  _CardapioState createState() => _CardapioState();
}

class _CardapioState extends State<Cardapio> {
  List<Cardapio_list> cardapio_list = [];

  @override
  void initState() {
    Cardapio_list cardapio_qqr_coisa = Cardapio_list();
    cardapio_list = cardapio_qqr_coisa.getallCardapio();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Cardápio',
          style: TextStyle(
            fontFamily: 'Comfortaa',
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: GridView.builder(
        padding: EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: cardapio_list.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Card(
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Image.network(
                      cardapio_list[index].image,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      cardapio_list[index].title,
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Comida(cardapio_pass: cardapio_list[index])));
            },
          );
        },
      ),
    );
  }
}
