import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';
import 'package:p_django/unidad3/test/test1.dart';

class Tema31 extends StatelessWidget {
  List<String> usuario = new List();
  Tema31({Key key, this.usuario}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tema 1',
      home: Scaffold(
        appBar: Header(
          title: Text(
            'Unidad III, Tema 1',
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
                        'DJANGO',
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
                                'Debido a que Django fue desarrollado en un ambiente de sala de redacci??n de ritmo r??pido, fue dise??ado para hacer tareas comunes de desarrollo web de forma r??pida y f??cil. Aqu?? se incluye una introducci??n informal de c??mo escribir una aplicaci??n web que utiliza una base de datos con Django.\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/Pmv1C0R/image.png'),
                              Text(
                                'Aplicaciones Web Basadas en Django y Python',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '''\nDjango es un framework de aplicaciones web gratuito y de c??digo abierto, el cual tiene muchas caracter??sticas que lo hacen especial, cuenta con varios componentes internos, con los que se puede desarrollar un sitio web escalable, y por supuesto si quieres agregar alguna funcionalidad extra, seguramente existe un paquete que lo realiza, tambi??n por estar escrito en Python, nos da acceso a todas las librer??as disponibles y as?? poderlas integrar a nuestro c??digo de manera sencilla, esta combinaci??n de Python Django permite desarrollar muy r??pido para la web.\n\n''',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                'Componentes principales',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '''\nEl Administrador: Es autogenerado, permite personalizarse de forma sencilla y cuenta con opciones avanzadas.

ORM: Es lo que permite facilitar la conexi??n con la base de datos, puede optimizarse y permite consultas avanzadas, este soporta m??ltiples motores de base de datos y algunos de ellos extienden funcionalidades extra como por ejemplo Postgresql e incluso PostGIS que es una extension para manejo de base de datos geogr??ficas.\n\n''',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/Dtc152g/image.png'),
                              Text(
                                'Estructura MVC de Django',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '\nLas aplicaciones web de Django normalmente agrupan el c??digo que gestiona cada uno de estos pasos en ficheros separados:\n\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/jrsb445/image.png'),
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
                                              Test1(usuario: usuario)));
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
