import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';
import 'package:p_django/unidad4/test/test42.dart';

class Tema42 extends StatelessWidget {
  List<String> usuario = new List();
  Tema42({Key key, this.usuario}) : super(key: key);
  Test42 test = new Test42();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tema 2',
      home: Scaffold(
        appBar: Header(
          title: Text(
            'Unidad 4, Tema 2',
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
                        'MULTIMEDIA, \n TURTLE \n Y JSON2JSON',
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
                              'MULTIMEDIA PYTHON',
                              style: TextStyle(
                                  fontFamily: 'PatuaOne', fontSize: 38),
                              textAlign: TextAlign.justify,
                            ),
                            Text(''),
                            Text(
                              'Hay numerosas bibliotecas multimedia para las que hay enlaces de Python disponibles. Estas bibliotecas permiten trabajar con diferentes tipos de medios, como im??genes, audio, v??deo, juegos. ',
                              style: TextStyle(
                                  fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network(
                                'https://i.postimg.cc/MHV1TTnr/Captura-de-pantalla-2021-03-24-112716.jpg'),
                            Text(''),
                            Text(
                              'TURTLE PYTHON.',
                              style: TextStyle(
                                  fontFamily: 'PatuaOne', fontSize: 38),
                              textAlign: TextAlign.justify,
                            ),
                            Text(''),
                            Text(
                              'M??dulo de programaci??n gr??fica para Python utilizado como m??todo para ense??ar programaci??n a trav??s de coordenadas relativas. El objeto a programar recibe el nombre de tortuga, elemento clave en el lenguaje de programaci??n Logo, creado por Seymour Papert a finales de la d??cada de los 60.',
                              style: TextStyle(
                                  fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text(''),
                            Image.network(
                                'https://i.postimg.cc/pLqVHZ1m/u4xk1bxw4jp9py47qpv3.png'),
                            Text(''),
                            Text(''),
                            Text(
                              'json2json en PYTHON.',
                              style: TextStyle(
                                  fontFamily: 'PatuaOne', fontSize: 38),
                              textAlign: TextAlign.justify,
                            ),
                            Text(''),
                            Text(
                              'Es un formato de intercambio de datos ligero. Es f??cil para los humanos leer y escribir. Es f??cil para las m??quinas analizar y generar. ',
                              style: TextStyle(
                                  fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text(''),
                            Image.network(
                                'https://i.postimg.cc/CKwNZjYT/Captura-de-pantalla-2021-03-24-114728.jpg'),
                            Text(''),
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
                                            Test42(usuario: usuario)));
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
