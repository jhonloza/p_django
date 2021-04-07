import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';
import 'package:p_django/unidad1/test/test2.dart';

class Tema12 extends StatelessWidget {
  Test2 test = new Test2();
  List<String> usuario = new List();
  Tema12({Key key, this.usuario}) : super(key: key);
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
            'Unidad I, Tema 2',
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
                        'PyCharm',
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
                                'PyCharm es un IDE para desarrollo de aplicaciones Python de forma profesional, esta posee un diseño mas productivo, al ser profesional obtiene un asistente inteligente que ayuda a autocompletar codigo, maneja una navegacion simple en el proyecto y permite la deteccion de errores en tiempo real sin necesidad de compilar el codigo.',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://resources.jetbrains.com/storage/products/pycharm/img/meta/preview.png'),
                              Text(
                                'Permite la calidad de codigo mas pulida, mantiene el control con comprobaciones PEP8, un asistente de pruebas, refactorizacion inteligente y gran calidad de inspecciones.\n\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i0.wp.com/wazusoft.com/wp-content/uploads/2019/09/PyCharm-wazusoft.png'),
                              Text(
                                'Asistencia inteligente, Calidad de Docigo y Simplicidad',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '\nPyCharm conoce el codigo de python, lo que permite finalizar el codigo de manera inteligente, permite la deteccion de errore sobre la marcha y arreglos rapidos, de igual manera permite mantener un codigo limpio para tener el control del mismo en todo momento, incluso PyCharm esta diseñado de forma simple por programadores y para programadores con el fin de promocionar todas las herramientas que necesita para un desarrollo productivo en el lenguaje Python.\n\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://2.bp.blogspot.com/-2FA9tQhiUuw/WkuhkuYZQDI/AAAAAAAAHwY/MGXVdmV8dfMUHCUJ5G32cRY31vpGvPTRwCLcBGAs/s1600/pycharm.gif'),
                              Text(
                                '\nEl gran software es soportado por grandes personas. La base de usuarios es entusiasta, dedicada a fomentar el uso del lenguaje y comprometida a que sea diversa y amigable.\n\n',
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
                                          builder: (context) =>
                                              Test2(usuario: usuario)));

                                  ///AGREGAREMOS EL VALOR DE EL LIST AKI
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
