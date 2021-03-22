import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';

class Tema23 extends StatelessWidget {
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
            'Unidad 2, Tema 3',
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
                  Expanded(
                    child: Container(),
                  ),
                  Column(
                    children: [
                      new Text(''),
                      new Text(
                        'Instalación de paquetes',
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
                              'Para instalar un paquete cualquiera debes ejecutar el comando pip de la siguiente manera:',
                              style: TextStyle(
                                  fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text(''),
                            Image.network(
                                'https://i.postimg.cc/TwQjnLYK/1-Shared-Screenshot.jpg'),
                            Text(''),
                            Text(
                              'Tambien tenemos la opcion de instalar un grupo de paquetes, tomando como el ejemplo el archivo "requirements.txt", que define las dependencias de la aplicación, pueden ser instaladas todas ejecutando.',
                              style: TextStyle(
                                  fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network(
                                'https://i.postimg.cc/N05XVstn/2.jpg'),
                            Text(''),
                            Text(
                              'Ubicación de los paquetes instalados',
                              style: TextStyle(
                                  fontFamily: 'PatuaOne', fontSize: 38),
                              textAlign: TextAlign.justify,
                            ),
                            Text(''),
                            Text(
                              'Todo paquete que instales usando pip se instalará y almacenará en el directorio .local de tu hosting. De la misma forma, cualquier binario o ejecutable incluido en un paquete que hayas instalado, se ubicará en .local/bin .',
                              style: TextStyle(
                                  fontFamily: 'PatuaOne', fontSize: 24),
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
                              onPressed: () {},
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
