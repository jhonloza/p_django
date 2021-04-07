import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';
import 'package:p_django/unidad1/test/test3.dart';

class Tema13 extends StatelessWidget {
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
                                'La sintaxis de Python es extremadamente "limpia", no se requiere de ningún caracter que indique el final de una secuencia y los bloques se definen a través de la indentación del código. Los comentarios de una sola línea se definen con el carácter almohadilla (#) y las cadenas de multiples líneas (""") se suelen emplear para escribir comentarios multilínea.\n',
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
                                '''\nLos operadores aritméticos +, - y / significan en Python lo mismo que en matemáticas. El asterisco (*) es el símbolo para la multiplicación, el % se usa para obtener el módulo, // para división entera y ** es el símbolo para las potencias. También disponemos de los operadores incrementar (+=) y decrementar (-=).

Existen tres operadores lógicos: and, or, y not. La semántica (significado) de estos operadores es similar a sus significados en inglés (en español “y”, “o” y “no”).

La asignación de valores, como en la mayoría de lenguajes, se realiza con el símbolo "igual" (=). La doble igualdad (==) se usa para comprobar que dos valores son iguales, además disponemos de estos operadores de comparación: distinto que (!=), mayor que (>), menor que (<), mayor o igual (>=) y menor o igual (<=)..\n\n''',
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
                                '\nLos tipos de datos básicos en Python son los numéricos formados por enteros, los reales y los complejos; las cadenas de texto y los booleanos. La función type nos devuelve el tipo:.\n\n',
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
                                '\nLas sentencias de control de flujo, son bloques de código en los que se agrupan instrucciones de manera controlada. Por un lado tenemos las estruturas condicionales (if, if .. else, if ..elif ..else) y por otro las estructuras iterativas (for, while).\n\n',
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
                                '\nUna función no es más que un bloque de código reutilizable encargado de realizar una determinada tarea. Para definir una función en Python debemos utilizar la palabra reservada "def" seguido del nombre de la función y los parámetros los indicamos entre parentesis.\n\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                '\nEn el ejemplo anterior hemos visto varias formas de definir y ejecutar a las funciones en Python, ya sea con parámetros por con valores por defecto o keywords como argumentos. Nos faltaría ver como llamarlas con colecciones como argumentos, una forma muy común de pasar valores a las funciones en Python, y que en muchas ocasiones cuesta entender. Para ello debemos tener claro que las tupla como colección de argumentos se define con *args y el diccionario con **kwargs.\n\n',
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
