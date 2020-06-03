import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Opcoes extends StatefulWidget {
  @override
  _OpcoesState createState() => _OpcoesState();
}

class _OpcoesState extends State<Opcoes> {
  TextEditingController precocontroller = TextEditingController();

  void calculate() {
    setState(() {
      double precoFinal = double.parse(precocontroller.text);
      resultado = (83.99 * precoFinal / 100);
    });
  }

  double resultado = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            "Outras Opções",
            style: TextStyle(fontFamily: 'Comfortaa.bold'),
          ),
          centerTitle: true,
        ),
        body: Stack(children: <Widget>[
          Image.asset(
            "images/fundo.jpg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),
          SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0, bottom: 30.0),
                        child: Text(
                          'Opções Disponíveis',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Marmitex Pequena: 10 R\$',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0, bottom: 25.0),
                            child: Text(
                              'Marmitex Grande: 13 R\$',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Preço por KG: 83,99 R\$',
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top:30.0 , bottom:10.0),
                            child: Text(
                              'Simulador de Preço:',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          Container(
                            
                            height: 80.0,
                            width: 300.0,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                controller: precocontroller,
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  WhitelistingTextInputFormatter.digitsOnly
                                ],
                                decoration: InputDecoration(
                                  labelText: "Peso do seu prato", 
                                                                  
                                  icon: Icon(Icons.fastfood),
                                  suffixText: "Gramas",
                                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                  
                                  hintStyle: TextStyle(
                                    color: Colors.white
                                  ),
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                  )
                                  
                                ),
                                onSubmitted: (_){
                                  setState(() {
                                    double precoFinal =
                                        double.parse(precocontroller.text);
                                    resultado = (83.99 * precoFinal / 1000);
                                  });
                                },
                              ),
                            ),
                          ),
                         /*  Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              color: Colors.transparent,
                              height: 50.0,
                              child: RaisedButton(
                                onPressed: () {
                                  setState(() {
                                    double precoFinal =
                                        double.parse(precocontroller.text);
                                    resultado = (83.99 * precoFinal / 1000);
                                  });
                                },
                                child: Text(
                                  "Calcular",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                                color: Colors.purple,
                              ),
                            ),
                          ), */
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0, bottom: 10.0),
                            child: Card(
                              elevation: 5,
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Text(
                                'O Valor do seu prato é ${resultado.toStringAsFixed(2)} Reais',
                                style: TextStyle(
                                  fontSize: 15.0
                                ),
                              ),
                                                          ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ]));
  }
}
