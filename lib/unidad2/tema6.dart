import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';
import 'package:p_django/unidad2/test/test26.dart';

class Tema26 extends StatelessWidget {
  List<String> usuario = new List();
  Tema26({Key key, this.usuario}):super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tema 6',
      home: Scaffold(
        appBar: Header(
          title: Text(
            'Unidad 2, Tema 6',
            style: TextStyle(
              fontFamily: 'PatuaOne',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        drawer: LeftMenu(),
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
                        'Servicio Web con PyPI',
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
                              'Los servicios web pueden considerarse generalmente como funciones o funcionalidades de aplicaciones o sistemas expuestos a través de la Web utilizando formatos de mensaje estandarizados y normalmente interconectados a otros programas informáticos mediante API tradicionales, aunque el uso "centrado en mensajes" de dichos servicios también es posible y puede ser favorecido por ciertas tecnologías.',
                              style: TextStyle(
                                  fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text(''),
                            Text(
                              'Cree y consuma servicios web (también conocidos como API) en Python.',
                              style: TextStyle(
                                  fontFamily: 'PatuaOne', fontSize: 38),
                              textAlign: TextAlign.justify,
                            ),
                            Text(''),
                            Image.network(
                                'https://i.postimg.cc/2j1dN98J/dadadad.jpg'),
                            Text(''),
                            Text(
                              'Suponemos que tiene una configuración API_KEYS que es un diccionario de claves públicas que se asignan a claves privadas.',
                              style: TextStyle(
                                  fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text(''),
                            Image.network(
                                'https://i.postimg.cc/8PKjkNKm/dwq.jpg'),
                            Text(''),
                            Text(
                              'Con esto podremo hacer la utlizacion o creación de servicios web en PyPI',
                              style: TextStyle(
                                  fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
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
                                        builder: (context) => test));
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
