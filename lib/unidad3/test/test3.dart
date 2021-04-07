import 'package:flutter/material.dart';
import 'package:p_django/inicio.dart';
import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';
import 'package:p_django/templates/pragunta.dart';

enum SingingCharacter { op1, op2, op3, op4 }

class Test3 extends StatelessWidget {
  List<String> usuario = new List();
  Test3({Key key, this.usuario}) : super(key: key);
  String grupoOpcion = '';
  Formulario form1 = new Formulario(
    pregunta: '¿cual es el comando para instalar django?',
    o1: 'python -m pip install Django',
    o2: 'Repositorio de codigo',
    o3: 'Python Package Index',
    o4: 'Software adicional',
    grupo: '',
  );
  Formulario form2 = new Formulario(
    pregunta: '¿Con que comando se comprueba la version de Django?',
    o1: 'print(django.get_version())',
    o2: 'print(version)',
    o3: 'import version',
    o4: 'clone import',
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
