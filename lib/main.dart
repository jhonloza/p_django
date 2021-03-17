import 'package:flutter/material.dart';
import 'package:p_django/inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Inicio inicio = new Inicio();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: inicio,
    );
  }
}