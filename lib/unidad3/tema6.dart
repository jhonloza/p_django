import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';
import 'package:p_django/unidad3/test/test6.dart';

class Tema36 extends StatelessWidget{
  List<String> usuario = new List();
  Tema36({Key key, this.usuario}):super(key: key);
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
                      new Text(''),
                      new Text(
                        'Consumo de Datos y recursos',
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
                                'Para el consumo de datos y recursos en Django implementaremos la api personalizada de Django q nos ofrece al utilizar una conexion con la base de datos, una vez realizada la conexion establecido por la base de datos crearemos nuestros modelos en el archivo models.py de la aplicacion.\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/QHb4q31/image.png'),
                              Text(
                                'Tipos de Datos',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '''\nUna vez creado ejecutaremos eo comando "python manage.py makemigrations myapp", en cual hara la conexion con la base y creara las tablas con sus respectivas numeraciones, primary_key y Foreaign_key si fuese el caso de tablas relacionadas

de igual manera antes de ejecutar nuestro comando SQL dentrod e la base podemos observar con el comando "python manage.py sqlmigrate myapp 0001" la creacion del archivo sql para ingresar a la base de datos\n\n''',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/h8WvPVp/image.png'),
                              Text(
                                'Una vez comprobado todo podremos hacer la creacion con el comando "python manage.py migrate" el cual nos dara el siguiente resultado',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Image.network(
                                  'https://i.ibb.co/RcnF6fY/image.png'),
                              Text(
                                'Implementando API Django',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '\nPara el consumo de nuestros datos desde la base vamos a utilizar la api integrada de django con el modelo diseñado en la aplicacion para mostrar los diferentes datos dentro de la misma\n\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/9vs4j4d/image.png'),
                              Text(
                                '\nDe igual manera para corregir salidas de informacion modificaremos en el modelo la salida de string para q nos de el resultado y no el objeto como tal, asi como un valor de fecha mas valido para la aplicacion web y no lo que nos devuelve de la base de datos.\n\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/mNGRB7G/image.png'),
                              Image.network(
                                  'https://i.ibb.co/K5qD6r0/image.png'),
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
                                onPressed: null,
                                /*() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => test));
                              },*/
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
