import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';

class Tema33 extends StatelessWidget{
  
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
            'Unidad III, Tema 3',
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
                      new Text('Python en Django',
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
                              'En ejecucuon de Django este puede inicializar con el proceso de creacion del mismo y ejecutar peticiones HTTP asi como utilizar metodos de render tomando desde los modelos en una base de datos y crearlas en CRUDs a travez de paginas web.\n',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text('Creando un entorno de Django e inicializarlo',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            //paso1
                            Text(
                              '''\nPara la creacion de un entorno basado en Python debemos tener en cuenta la instalacion del Framework de Django con el siguiente comando\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/k0CFqKd/image.png'),
                            //paso 2
                            Text(
                              '''\nComprobaremos nuestra version de DJANGO con el comando siguiente en el shell de python\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/vDF8VB1/image.png'),
                            //paso 3
                            Text(
                              '''\nCrearemos nuestro entorno de trabajo con el sigueitne comando\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/g3KGbd6/image.png'),
                            //paso 4
                            Text(
                              '''\nNos dirigiremos a nuestra carpeta creada usando el terminal o CMD "Windows" y ejecutaremos el sigueite comando para inicializar nuestra aplicacion en DJANGO\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/CHQ6r7z/image.png'),
                            //paso 5
                            Text(
                              '''\nAbrimos un explorador de internet y tendremos en nuestra direccion 127.0.0.1:8000 a nuestro servicio de Django ejecutado\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/VNp726L/image.png'),
                            Text('Estructura de la aplicacion Django',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '\nLa aplicacion creada consta de varios componentes los cuales se mostrara en la sigueitne imagen\n\n',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/2dtngy1/image.png'),
                            Text('Los archivos indicados son:',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '''\nEstos archivos son:

° The outer mysite/ root directory is a container for your project. Its name doesn’t matter to Django; you can rename it to anything you like.

° manage.py: Una utilidad de la línea de comandos que le permite interactuar con este proyecto Django de diferentes formas. Puede leer todos los detalles sobre :archivo:`manage.py` en el :doc: :/ref/django-admin.

° En interior del directorio mysite/ es el propio paquete de Python para su proyecto. Su nombre es el nombre del paquete de Python que usted tendrá que utilizar para importar todo dentro de este (por ejemplo, mysite.urls).

° mysite/__init__.py: Un archivo vacío que le indica a Python que este directorio debería ser considerado como un paquete Python. Si usted es un principiante lea más sobre los paquetes en la documentación oficial de Python.

° mysite/settings.py: Ajustes/configuración para este proyecto Django. Django settings le indicará todo sobre cómo funciona la configuración.

° mysite/urls.py: Las declaraciones URL para este proyecto Django; una «tabla de contenidos» de su sitio basado en Django. Puede leer más sobre las URLs en URL dispatcher.

° mysite/asgi.py: An entry-point for ASGI-compatible web servers to serve your project. See How to deploy with ASGI for more details.

° mysite/wsgi.py: Un punto de entrada para que los servidores web compatibles con WSGI puedan servir su proyecto. Consulte :doc:`/howto/deployment/wsgi/index`para más detalles.\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/RcnF6fY/image.png'),
                            Text('Vistas a manejar y editar en Django',
                              style: TextStyle(
                                fontFamily: 'PatuaOne',
                                fontSize: 38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '\nEl control de view.py es uno de los principales donde podremos establecer la forma que se mostrara nuestra aplicacion web a travez de los exploradores de interet asi como renderizar variables que pueden ingresar o acciones con controles de ingreso HttpRequest y devolverlos con HttpResponse.\n\n',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/c66XMYg/image.png'),
                            Text(
                              '''\nEn este caso devolvemos una linea de texto que sera devuelta a travez de la pagina web

Si deseamos integrar un modelo o plantilla HTML crearemos una ruta de plnatillas y la insertaremos en nuestra view de la siguiente manera.

Tomaremos una plantilla de boostrap para ingresar en la plantilla base de nuestra vista1.

Creamos nuestra ruta de templates/vista1 como se presenta la siguiente rama\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/tpVZVS6/image.png'),

                            Text(
                              '''\nCopiaremos nuestro contenido de la plantilla a utilizar en nuestro caso sera la sigueitne\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/ySGvtRw/image.png'),

                            Text(
                              '''\nAñadiremos los archivos a la carpeta template y seguido configuramos nuestra vista 1 para importar toda la plantilla de la siguiente manera\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/W6HZ5Sb/image.png'),
                            Text(
                              '''\nConfiguraremos nuestra ruta de templates en el archivo setings.py, importanteo la libreria OS y añadiendo la ruta en la parte de templates\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/ChkLD3J/image.png'),
                            Text(''),
                            Image.network('https://i.ibb.co/C7zzx0R/image.png'),
                            Text(
                              '''\nPor ultimo configuraremos nuestras rutas de vista para que la vista pueda detectar nuestro template\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Text(
                              '''\nEste sera nuestro archivo de vista1/urls.py, si no se encuentra este archivo puede crearlo en blanco\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/zP02YG8/image.png'),
                            Text(
                              '''\nEste sera nuestro archivo de myapp/urls.py, Aqui se establece todas las rutas de multiples aplicaciones

En este archivo importaremos la libreria include para incorporar las rutas de mas aplicaciones\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/M1YyT4j/image.png'),
                            Text(
                              '''\nAhora al ingresar a nuestra aplicacion utilizaremos la ruta 127.0.0.1:8000/vista1\n\n''',
                              style: TextStyle(fontFamily: 'PatuaOne', fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            Image.network('https://i.ibb.co/0jQ4BMh/image.png'),

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