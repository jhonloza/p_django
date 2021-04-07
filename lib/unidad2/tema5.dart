import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';
import 'package:p_django/unidad2/test/test25.dart';

class Tema25 extends StatelessWidget {
  List<String> usuario = new List();
  Tema25({Key key, this.usuario}):super(key: key);
  Test25 test = new Test25();
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
            'Unidad 2, Tema 5',
            style: TextStyle(
              fontFamily: 'PatuaOne',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        drawer: LeftMenu(usuario: usuario,),
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
                        'Servicios e Interfaces',
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
                            Text(''),
                            new Text(
                              'Interfaces',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 38,
                              ),
                            ),
                            Text(''),
                            Text(
                              'interfaz es una biblioteca para declarar interfaces y para afirmar estáticamente que las clases implementan esas interfaces. Su objetivo es proporcionar una semántica más estricta y mejores mensajes de error que el módulo abc integrado de Python. interfaz es compatible con Python 2.7 y Python 3.4+.',
                              style: TextStyle(
                                  fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text(''),
                            Image.network(
                                'https://i.postimg.cc/4dkrzHdb/asdf2332323.jpg'),
                            Text(''),
                            Text(
                              'Servicio',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 38,
                              ),
                            ),
                            Text(''),
                            Text(
                              'Este paquete facilita la escritura de servicios Unix, es decir, procesos en segundo plano ("demonios") controlados por una aplicación en primer plano (por ejemplo, un script de consola).',
                              style: TextStyle(
                                  fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text(''),
                            Text(
                              ' Siendo el comanto "pip install service" para instalar dicho paquete',
                              style: TextStyle(
                                  fontFamily: 'PatuaOne', fontSize: 38),
                              textAlign: TextAlign.justify,
                            ),
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
