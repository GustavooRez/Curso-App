import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Locais extends StatefulWidget {
  @override
  _LocaisState createState() => _LocaisState();
}

class _LocaisState extends State<Locais> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(-22.245521, -45.467883);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            "Nossos locais",
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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            'Nosso Endereço:',
                            style: TextStyle(
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Pedralva, Rua Padre Marino',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            'Bairro Centro, nº25',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          width: 300.0,
                          height: 300.0,
                          child: Card(
                            elevation: 5,
                            child: GoogleMap(
                              onMapCreated: _onMapCreated,
                              initialCameraPosition: CameraPosition(
                                target: _center,
                                zoom: 17.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
