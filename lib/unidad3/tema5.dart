import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';

class Tema35 extends StatelessWidget{
  List<String> usuario = new List();
  Tema35({Key key, this.usuario}):super(key: key);
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
            'Unidad III, Tema 5',
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
                      new Text('Rutas y Complementos DOM',
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
                              'La asignacion de rutas es uno de los principales componentes implementados en Django.\n',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text('Rutas para multipaginas en Django',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '''\nLas rutas permite administrar multiples paginas o incluso multiples aplicaciones en Django por el cual se realiza la configuracion dentro de nuestro archivo myapp/urls.py para nuestra aplicacion o admin/urls.py para todas las aplicaciones en conjunto


aqui realizaremos las rutas para una aplicacion y para mostrar paginas implementando MVC desde la base de datos.\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/DVtXMtP/image.png'),
                            Text('Rutas para aplicaciones',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '\nSe ingresara para cada aplicacion la ruta en admin/urls.py.\n\n',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/M1YyT4j/image.png'),
                            Text('Ingreso de Rutas en la aplicación',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '\nLas rutas pueden seringresadas dentro de una misma aplicacion para redirigir a paginas dentro de la misma aplicacion, estas rutas se añadiran en el archivo myapp/urls.py.\n\n',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/zP02YG8/image.png'),
                            Text('Otros complementos en Django',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '\nExiste muchos complementos que pueden ser ingresados y administrados desde las vistas hasta sus propias templates como los siguientes casos.\n\n',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text(
                              '\nIngreso de Formularios.\n\n',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text(
                              '\nEste es un formulario diñedao dentro de una platilla html y de igual manera importado a nuestra vista para su posterior utilizacion dentro de la aplicacion.\n\n',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/6nWrRQ5/image.png'),
                            Text(''),
                            Image.network('https://i.ibb.co/XSHBckM/image.png'),
                            Text(
                              '\nPruebas automatizadas.\n\n',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text(
                              '\nLas pruebas se ejecutan en diferentes niveles. Algunas pruebas se pueden aplicar a un pequeño detalle mientras que otras examinan el total funcionamiento del software.\n\n',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text(
                              '\nLas respectivas pruebas pueden ser ejecutadas en nuestro Shell de python para comprobar el funcionamiento y luego mostrar en nuestra aplicacion web.\n\n',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/10Qpctz/image.png'),
                            Text(
                              '\nLa siguiente es una creacion de prueba para mostrar en la aplicacion web errores de codigo o bugs del mismo.\n\n',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/3FNWTD4/image.png'),
                            Text(
                              '\nPersonalizacion de apariencia.\n\n',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text(
                              '''\nEn primer lugar, cree un directorio llamado static en su directorio polls. Django buscará archivos estáticos allí, del mismo modo cómo Django encuentra las plantillas dentro de polls/templates/.

La opción STATICFILES_FINDERS de Django contiene una lista de buscadores que saben cómo hallar archivos estáticos de diversas fuentes. Uno de los predeterminados es AppDirectoriesFinder que busca un subdirectorio «static» en cada una de las INSTALLED_APPS, como el que está en polls que acabamos de crear. El sitio administrativo utiliza la misma estructura de directorios para sus archivos estáticos.\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/Y06QQJC/image.png'),
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