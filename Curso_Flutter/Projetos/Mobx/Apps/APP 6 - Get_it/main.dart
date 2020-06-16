import 'package:flutter/material.dart';
import 'controller.dart';
import 'homepage.dart';
import 'package:get_it/get_it.dart';

void main() {

  GetIt getIt = GetIt.I;
  getIt.registerSingleton<Controller>(Controller());

  runApp(AppWidget());
  } 

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: MyHomePage(),
          theme: ThemeData(
            fontFamily: 'Comfortaa',
            hintColor: Colors.white,
          ),
        );
  }
}
