import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';
import 'package:p_django/unidad1/test/test7.dart';

class Tema17 extends StatelessWidget {
  List<String> usuario = new List();
  Tema17({Key key, this.usuario}) : super(key: key);
  Test7 test = new Test7();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tema 7',
      home: Scaffold(
        appBar: Header(
          title: Text(
            'Unidad I, Tema 7',
            style: TextStyle(
              fontFamily: 'PatuaOne',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        drawer: LeftMenu(
          usuario: usuario,
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.lightBlue.shade100,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Image(
                      image: AssetImage('assets/images/atras.png'),
                      height: 75,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.lightBlue.shade100,
              child: Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Column(
                    children: [
                      new Text(
                        'Excepciones en Python',
                        style: TextStyle(
                          fontFamily: 'PatuaOne',
                          fontSize: 38,
                        ),
                      ),
                      new Text(''),
                      new Container(
                          width: screenWidth - 25,
                          child: Column(
                            children: [
                              Text(
                                'Los errores de ejecuci??n son llamados com??nmente excepciones y por eso de ahora en m??s utilizaremos ese nombre. Durante la ejecuci??n de un programa, si dentro de una funci??n surge una excepci??n y la funci??n no la maneja, la excepci??n se propaga hacia la funci??n que la invoc??.\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                'manejo de excepciones',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '''\nPara el manejo de excepciones los lenguajes proveen ciertas palabras reservadas, que nos permiten manejar las excepciones que puedan surgir y tomar acciones de recuperaci??n para evitar la interrupci??n del programa o, al menos, para realizar algunas acciones adicionales antes de interrumpir el programa.

En el caso de Python, el manejo de excepciones se hace mediante los bloques que utilizan las sentencias try, except y finally.\n\n''',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/1GHYg8j/image.png'),
                              Text('\n\n'),
                              Text(
                                'Micro Test\n',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Test7(usuario: usuario)));
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
                          )),
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
