import 'package:flutter/material.dart';
import 'package:br/components/cardapiolist.dart';

class Comida extends StatelessWidget {
  final Cardapio_list cardapio_pass;
  const Comida({Key key, this.cardapio_pass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          cardapio_pass.title,
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
                  cardapio_pass.image,
                  fit: BoxFit.cover,
                ),
              ),
              Card(
                color: Colors.blueGrey[50],
                child: Container(
                  padding: const EdgeInsets.all(3.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      cardapio_pass.title,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'Comfortaa',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  'Preço: ${cardapio_pass.price.toString()}R\$',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Comfortaa',
                  ),
                ),
              ),
              cardapio_pass.isveggie == true
                  ? Padding(
                      padding: const EdgeInsets.only(right:10.0, left:10.0,bottom: 15.0),
                      child: Text(
                        'Essa comida é segura para vegetarianos',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(right:10.0, left:10.0,bottom: 15.0),
                      child: Text(
                        'Essa comida não é segura para vegetarianos',
                        style: TextStyle(
                          fontSize: 20.0,
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
