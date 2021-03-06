import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';
import 'package:p_django/unidad1/test/test3.dart';

class Tema13 extends StatelessWidget {
  List<String> usuario = new List();
  Tema13({Key key, this.usuario}) : super(key: key);
  Test3 test = new Test3();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tema 3',
      home: Scaffold(
        appBar: Header(
          title: Text(
            'Unidad I, Tema 3',
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
                        'Fundamentos Basicos en Python',
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
                                'La sintaxis de Python es extremadamente "limpia", no se requiere de ning??n caracter que indique el final de una secuencia y los bloques se definen a trav??s de la indentaci??n del c??digo. Los comentarios de una sola l??nea se definen con el car??cter almohadilla (#) y las cadenas de multiples l??neas (""") se suelen emplear para escribir comentarios multil??nea.\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                'Operadores',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '''\nLos operadores aritm??ticos +, - y / significan en Python lo mismo que en matem??ticas. El asterisco (*) es el s??mbolo para la multiplicaci??n, el % se usa para obtener el m??dulo, // para divisi??n entera y ** es el s??mbolo para las potencias. Tambi??n disponemos de los operadores incrementar (+=) y decrementar (-=).

Existen tres operadores l??gicos: and, or, y not. La sem??ntica (significado) de estos operadores es similar a sus significados en ingl??s (en espa??ol ???y???, ???o??? y ???no???).

La asignaci??n de valores, como en la mayor??a de lenguajes, se realiza con el s??mbolo "igual" (=). La doble igualdad (==) se usa para comprobar que dos valores son iguales, adem??s disponemos de estos operadores de comparaci??n: distinto que (!=), mayor que (>), menor que (<), mayor o igual (>=) y menor o igual (<=)..\n\n''',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/NKVKgVS/image.png'),
                              Text(
                                'Tipos de Datos',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '\nLos tipos de datos b??sicos en Python son los num??ricos formados por enteros, los reales y los complejos; las cadenas de texto y los booleanos. La funci??n type nos devuelve el tipo:.\n\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/Q93Gj55/image.png'),
                              Text(
                                'Estructuras de control de flujo',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '\nLas sentencias de control de flujo, son bloques de c??digo en los que se agrupan instrucciones de manera controlada. Por un lado tenemos las estruturas condicionales (if, if .. else, if ..elif ..else) y por otro las estructuras iterativas (for, while).\n\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/RcnF6fY/image.png'),
                              Text(
                                'Funciones',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '\nUna funci??n no es m??s que un bloque de c??digo reutilizable encargado de realizar una determinada tarea. Para definir una funci??n en Python debemos utilizar la palabra reservada "def" seguido del nombre de la funci??n y los par??metros los indicamos entre parentesis.\n\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                '\nEn el ejemplo anterior hemos visto varias formas de definir y ejecutar a las funciones en Python, ya sea con par??metros por con valores por defecto o keywords como argumentos. Nos faltar??a ver como llamarlas con colecciones como argumentos, una forma muy com??n de pasar valores a las funciones en Python, y que en muchas ocasiones cuesta entender. Para ello debemos tener claro que las tupla como colecci??n de argumentos se define con *args y el diccionario con **kwargs.\n\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/v1pk9H9/image.png'),
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
                                              Test3(usuario: usuario)));
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
