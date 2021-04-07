import 'package:flutter/material.dart';
import 'package:p_django/inicio.dart';
import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';
import 'package:p_django/templates/pragunta.dart';

enum SingingCharacter { op1, op2, op3, op4 }

class Test44 extends StatelessWidget {
  String grupoOpcion = '';
  Formulario form1 = new Formulario(
    pregunta: '¿Quien creo el Lenguaje Python?',
    o1: 'Dennis Ritchie',
    o2: 'Yukihiro Matsumoto',
    o3: 'Guido van Rossum',
    o4: 'Rasmus Lerdorf',
    grupo: '',
  );
  Formulario form2 = new Formulario(
    pregunta: '¿Como se llama la fundacion comunitaria de Python?',
    o1: 'Python Software Foundation',
    o2: 'Mision Statement of the Python',
    o3: 'Python Public Foundation',
    o4: 'Zope Public Licence of Python',
    grupo: '',
  );

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inicio',
      home: Scaffold(
        appBar: Header(
          title: Text(
            'Test Unidad 2 Tema 1',
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
                  //Aki incia pregunta
                  form1,
                  form2,
                  Text(''),
                  TextButton(
                    onPressed: () {
                      print('calculando');
                      String r1 = '3';
                      String r2 = '1';
                      int sol1 = 0;
                      int sol2 = 0;
                      if (form1.grupo == r1) {
                        sol1 = 1;
                      }
                      if (form2.grupo == r2) {
                        sol2 = 1;
                      }
                      print('calculando');
                      print('calculando');

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Inicio()));
                    },
                    child: Container(
                      width: screenWidth - 130,
                      color: Colors.yellow.shade700,
                      child: ImageIcon(
                        AssetImage('assets/images/test.png'),
                        color: Colors.blue.shade700,
                        size: screenWidth / 4,
                      ),
                    ),
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

void setState(Null Function() param0) {}
