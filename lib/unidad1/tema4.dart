import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';
import 'package:p_django/unidad1/test/test4.dart';

class Tema14 extends StatelessWidget {
  List<String> usuario = new List();
  Tema14({Key key, this.usuario}) : super(key: key);
  Test4 test = new Test4();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tema 4',
      home: Scaffold(
        appBar: Header(
          title: Text(
            'Unidad I, Tema 4',
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
                        'OOP (Object-Oriented Programming)',
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
                                'La OOP tiene sus ra??ces en la d??cada del 60 con el lenguaje de programaci??n Simula que en 1967, el cual fue el primer lenguaje que posee las caracter??sticas principales de un lenguaje orientado a objetos.\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                'POO en Python',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '''\nEl mecanismo de clases de Python agrega clases al lenguaje con un m??nimo de nuevas sintaxis y sem??nticas.

En Python las clases es una mezcla de los mecanismos de clase encontrados en C++ y Modula-3.

Como es cierto para los m??dulos, las clases en Python no ponen una barrera absoluta entre la definici??n y el usuario, sino que m??s bien se apoya en la cortes??a del usuario de no ??forzar la definici??n??.

Sin embargo, se mantiene el poder completo de las caracter??sticas m??s importantes de las clases: el mecanismo de la herencia de clases permite m??ltiples clases base, una clase derivada puede sobrescribir cualquier m??todo de su(s) clase(s) base, y un m??todo puede llamar al m??todo de la clase base con el mismo nombre.\n\n''',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                'Clases y Objetos',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '''\nEn programaci??n orientada a objetos (POO), un objeto es una entidad que agrupa un estado y una funcionalidad relacionada. El estado se define a trav??s de las variables denominadas atributos y la funcionalidad a trav??s de funciones denominadas en POO c??mo m??todos. Por otro lado, una clase, no es m??s que una plantilla gen??rica a partir de la cu??l instanciamos los objetos. Dicho de otra manera, una clase es una abstracci??n en la que se define el comportamiento que va a tener el objeto.

En Python, las clases se declaran mediante la palabra reservada class seguida del nombre de la clase, la clase base de la cual hereda, si no extiende de ninguna debe hacerlo de object; a continuaci??n dos puntos (:), luego el indentado y el cuerpo de la clase.

El m??todo constructor de la clase se define con la palabra clave __init__ y al igual que el resto de m??todos definidos en la clase recibe como primer par??metro self, el interprete de python requiere de este argumento para referenciarlos como m??todos de instancia.\n\n''',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/ck0MSRk/image.png'),
                              Text(
                                'Estructuras de control de flujo',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
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
                                          builder: (context) =>
                                              Test4(usuario: usuario)));
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
