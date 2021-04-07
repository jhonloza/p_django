import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';
import 'package:p_django/unidad1/test/test5.dart';

class Tema15 extends StatelessWidget {
  Test5 test = new Test5();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tema 5',
      home: Scaffold(
        appBar: Header(
          title: Text(
            'Unidad I, Tema 5',
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
                        'Herencias en Python',
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
                                'La herencia es una de las premisas y técnicas de la POO la cual permite a los programadores crear una clase general primero y luego más tarde crear clases más especializadas que re-utilicen código de la clase general. La herencia también le permite escribir un código más limpio y legible.\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/gMjdkdY/image.png'),
                              Text(
                                'Clase Base',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '''\nUse el diagrama anterior para ilustrar el concepto de la herencia, vea el caso de dos clases que tiene algo en común, ambas son personas, con atributos de datos personales y comportamiento típicos como hablar, comer, caminar, entonces para eso se crea una clase base llamada Persona. A continuación un ejemplo de la clase Persona con un método interno:\n\n''',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/H7X2RCL/image.png'),
                              Text(
                                '''\nLa clase Persona tiene los métodos __init__, __str__, hablar y getGenero. Sus atributos son cedula, nombre, apellido y sexo.

La instancia de dos nuevos objetos Persona seria de la siguiente forma:\n\n''',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/QYwn0KN/image.png'),
                              Text(
                                '''\nEl método constructor __init__ es un método especial el cual debe escribir como: MiClase(parámetros iniciales si hay cualquiera).

Usted puede llamar esos métodos y atributos con la siguiente notación: claseinstancia.metodo o claseinstancia.atributo.\n\n''',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/y4j98MP/image.png'),
                              Text(
                                'Diagramas de Herencia\n',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Image.network(
                                  'https://i.ibb.co/GcrBJZg/image.png'),
                              Text(
                                '\nEl siguiente es un ejemplo de la clase Supervisor que derivada de la clase Persona con función interna:\n',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Image.network(
                                  'https://i.ibb.co/gFpGFPW/image.png'),
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
