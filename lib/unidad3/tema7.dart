import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';

class Tema37 extends StatelessWidget{
  List<String> usuario = new List();
  Tema37({Key key, this.usuario}):super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tema 7',
      home: Scaffold(
        appBar: Header(
          title: Text(
            'Unidad III, Tema 7',
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
                      new Text(''),
                      new Text('creando servicios web en Django',
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
                              'Es una alternativa en auge a otros protocolos estándar de intercambio de datos como SOAP, que disponen de una gran capacidad pero también mucha complejidad. A veces es preferible una solución más sencilla de manipulación de datos como REST.\n',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text('Operaciones soportadas en el servicio web',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '''\n• GET: Se utiliza para consultar, leer y en definitiva acceder a un recurso

• POST: Envía datos para crear un recurso. Como en cualquier petición POST, los datos deben ir incluidos en el cuerpo de la petición.

• PUT: Utilizado para editar un recurso. Al igual que el POST, los datos deben ir en el cuerpo de la petición.

• DELETE: Es la opción para eliminar un recurso

• PATCH: Se utiliza para modificar parcialmente un recurso, aunque se utiliza en muy pocas ocasiones. Normalmente se utiliza simplemente PUT.\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text('Generando el servicio',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '\nPara generar el servicio importaremos a nuestro modelo los valores resultantes de los lenguajes de programacion que podra consumir el servicio y generaremos un Rest_Framework para generarlo.\n\n',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/7ntJ8CN/image.png'),
                            Image.network('https://i.ibb.co/gM05kWQ/image.png'),
                            Text('Generamos las urls correspondiente para importar estas funciones a travez de la vista y tendremos un consumo de servicio rest en nuestra aplicacion de Django',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 24,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Image.network('https://i.ibb.co/cgrQBKd/image.png'),
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