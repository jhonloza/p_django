import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';
import 'package:p_django/unidad3/test/test4.dart';

class Tema34 extends StatelessWidget {
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
            'Unidad III, Tema 4',
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
                        'Bases de Datos en Django',
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
                                'Dentro de la aplicacion existe la configuracion de MVC en el cual permite la migracion de Modelos desde bases de datos de muchos motores, el predeterminado se encuentra con SQLite3 el cual crea archivos donde almacenara la informacion de forma textual para bases de datos pequeñas y moviles.\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                'Motores de base de datos dispobnibles',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '''\nExiste multiples motores de base de datos que puede ocupar Django los mas conocidos son:

Cada uno de estos esta con su ENGINE correspondiente
\t - Mysql/MariaDB - 'django.db.backends.postgresql_psycopg2'
\t - PostgreSQL - 'django.db.backends.mysql'
\t - Microsoft SQL Server - 'sql_server.pyodbc'
\t - Oracle - 'django.db.backends.oracle'\n\n''',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                '''\nInstalando cada motor de base datos sera:''',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                '''\nMysql/MariaDB''',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/TLxTfPT/image.png'),
                              Text(
                                '''\nPostgreSQL''',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/Mg3f50P/image.png'),
                              Text(
                                '''\nMicrosoft SQL Server''',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/BfjpGvM/image.png'),
                              Text(
                                '''\nOracle''',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/ydfFnFj/image.png'),
                              Text(
                                '\nAl configurar nuestras bases de datos tendremos "INSTALLED_APP" que cuenta con las siguientes caracteristias en la base de datos\n\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/frShQxt/image.png'),
                              Text(
                                'Configuracion de una base de datos',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '\nLa configuracion de bases de datos es igual para todas a excepcion de SQLite ya que crea archivos de forma local para su funcionamiento.\n\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                '\nEsta configuracion se la debera de realizar en el archivo settings.py de la aplicacion principal.\n\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/D5CC1mh/image.png'),
                              Text(
                                'Creacion de la base',
                                style: TextStyle(
                                  fontFamily: 'PatuaOne',
                                  fontSize: 38,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '\nUna vez configurada nuestra base procedemos con el comando siguiente a crear la base de datos por ejemplo:.\n\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/0DSztKB/image.png'),
                              Text(
                                '\nLa cual creara las siguientes tablas a utilizar.\n\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              Image.network(
                                  'https://i.ibb.co/Gvt5fX4/image.png'),
                              Text(
                                '\nPara mas informacion sobre el uso de base de datos y creacion de tablas individuales visite:.\n',
                                style: TextStyle(
                                    fontFamily: 'PatuaOne', fontSize: 24),
                                textAlign: TextAlign.justify,
                              ),
                              TextButton(
                                onPressed: () {
                                  launch(
                                      'https://docs.djangoproject.com/es/3.1/intro/tutorial02/');
                                },
                                child: Text(
                                  'DataBase - Django Official',
                                  style: TextStyle(
                                      fontFamily: 'PatuaOne', fontSize: 24),
                                  textAlign: TextAlign.justify,
                                ),
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
