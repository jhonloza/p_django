import 'package:flutter/material.dart';
import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';
import 'package:p_django/templates/pragunta.dart';

enum SingingCharacter { op1, op2, op3, op4 }

class Test1 extends StatelessWidget{
  String grupoOpcion = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inicio',
      home: Scaffold(
        appBar: Header(
          title: Text(
            'Test Unidad 1 Tema 1',
            style: TextStyle(
              fontFamily: 'PatuaOne',
              fontSize: 32,
            ),
          ),
          color: Colors.indigo.shade900,
        ),
        drawer: LeftMenu(),
        body: ListView(
          children: [
            Container(
              color: Colors.greenAccent.shade100,
              child: Column(
                children: [
                  Text(''),
                  Text(''), //aki boton retroceso
                  Text(''),
                  
                  //Aki incia pregunta
                  Formulario(
                    pregunta: '¿Quien creo el Lenguaje Python?',
                    o1: 'Dennis Ritchie',
                    o2: 'Yukihiro Matsumoto',
                    o3: 'Guido van Rossum',
                    o4: 'Rasmus Lerdorf',
                  ),
                  Formulario(
                    pregunta: '¿Como se llama la fundacion comunitaria de Python?',
                    o1: 'Python Software Foundation',
                    o2: 'Mision Statement of the Python',
                    o3: 'Python Public Foundation',
                    o4: 'Zope Public Licence of Python',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void setState(Null Function() param0) {
}