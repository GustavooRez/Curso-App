import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller.dart';
import 'homepage.dart';

void main() => runApp(AppWidget());

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<Controller>(
            create: (_) => Controller(),
            dispose: (_, controller) => controller.dispose(),
          )
        ],
        child: MaterialApp(
          home: MyHomePage(),
          theme: ThemeData(
            fontFamily: 'Comfortaa',
            hintColor: Colors.white,
          ),
        ));
  }
}
