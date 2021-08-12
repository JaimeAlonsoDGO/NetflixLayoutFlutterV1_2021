import 'package:flutter/material.dart';
import 'package:netflix/paginas/inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Se sobreescribe el metodo build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: InicioPage());
  }
}
