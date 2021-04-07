import 'package:flutter/material.dart';
import 'package:p_django/data/conexion.dart';
import 'package:p_django/data/parametro.dart';
import 'package:p_django/inicio.dart';
import 'package:animated_splash/animated_splash.dart';
import 'package:p_django/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Inicio inicio = new Inicio();
  Login login = new Login();
  @override
  Widget build(BuildContext context) {
    String mensaje;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplash(
        imagePath: 'assets/images/carga.gif',
        home: login,
        duration: 10000,
        type: AnimatedSplashType.StaticDuration,
      ),
    );
  }
}

