import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';

class Tema16 extends StatelessWidget{
  List<String> usuario = new List();
  Tema16({Key key, this.usuario}):super(key: key);
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
            'Unidad I, Tema 6',
            style: TextStyle(
              fontFamily: 'PatuaOne',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        drawer:  LeftMenu(),
        body: ListView(
          children: [
            Container(
              color: Colors.lightBlue.shade100,
              child: Row(
                children: [
                  TextButton(
                    onPressed: (){
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
                      new Text('Colecciones',
                        style: TextStyle(
                          fontFamily: 'PatuaOne',
                          fontSize: 38,
                        ),
                      ),
                      new Text(''),
                      new Container(
                        width: screenWidth-25,
                        child: Column(
                          children: [
                            Text(
                              'Las colecciones son un tipo de datos diseñados específicamente para agrupar objetos y llevar a cabo tareas con ellos.  Las estructuras de datos más utilizadas en Python son las listas, tuplas (listas inmutables) y los diccionarios, aunque personalmente también suelo usar mucho los conjuntos (sets).\n',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://runestone.academy/runestone/static/pythoned/_images/inheritance1.png'),
                            Text('Estructuras implementadas en Colecciones',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '''\nNo todas las estructuras de datos exponen exactamente las mismas operaciones, por ejemplo una lista no deja buscar por clave (si bien sí por índice) y un conjunto no deja buscar ni por una cosa ni por otra.

El siguiente playground está dividido en tres ficheros, main.py desde el que se importa listas.py y diccionarios.py, para ver los resultados de uno u otro, elimina o comenta su respectivo import.\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text('Listas',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '''\nUna lista es una estructura de datos y un tipo de dato en python con características especiales. Lo especial de las listas en Python es que nos permiten almacenar cualquier tipo de valor como enteros, cadenas y hasta otras funciones.

Una lista es un arreglo de elementos donde podemos ingresar cualquier tipo de dato, para acceder a estos datos podemos hacer mediante un índice.\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/nDLcqz6/image.png'),
                            Text('Tuplas',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '''\nEn programación, en general, al querer modelar objetos de la vida real, es muy común que querramos describir un objeto como un agrupamiento de datos de distintos tipos. Veamos algunos ejemplos:

Una fecha la podemos querer representar como la terna día (un número entero), mes (una cadena de caracteres), y año (un número entero), y tendremos por ejemplo: (25, "Mayo", 1810).\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/tQbmQb6/image.png'),
                            Text('Diccionarios',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '''\nUn Diccionario es una estructura de datos y un tipo de dato en Python con características especiales que nos permite almacenar cualquier tipo de valor como enteros, cadenas, listas e incluso otras funciones. Estos diccionarios nos permiten además identificar cada elemento por una clave (Key).\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/Pr2qvGQ/image.png'),
                            Text('\n\n'),
                            Text('Micro Test\n',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            TextButton(
                              onPressed: null, /*() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => test));
                              },*/
                              child: Container(
                                width: screenWidth-130,
                                color: Colors.yellow.shade700,
                                child: ImageIcon(
                                  AssetImage('assets/images/test.png'), 
                                  color: Colors.blue.shade700,
                                  size: screenWidth/4,
                                ),
                              ),
                            ),
                          ],
                        )
                      ),
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