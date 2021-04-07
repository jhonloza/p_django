import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';
import 'package:p_django/unidad1/tema1.dart';
import 'package:p_django/unidad1/tema2.dart';
import 'package:p_django/unidad1/tema3.dart';
import 'package:p_django/unidad1/tema4.dart';
import 'package:p_django/unidad1/tema5.dart';
import 'package:p_django/unidad1/tema6.dart';
import 'package:p_django/unidad1/tema7.dart';
import 'package:p_django/unidad2/tema1.dart';
import 'package:p_django/unidad2/tema2.dart';
import 'package:p_django/unidad2/tema3.dart';
import 'package:p_django/unidad2/tema4.dart';
import 'package:p_django/unidad2/tema5.dart';
import 'package:p_django/unidad2/tema6.dart';
import 'package:p_django/unidad3/tema1.dart';
import 'package:p_django/unidad3/tema2.dart';
import 'package:p_django/unidad3/tema3.dart';
import 'package:p_django/unidad3/tema4.dart';
import 'package:p_django/unidad3/tema5.dart';
import 'package:p_django/unidad3/tema6.dart';
import 'package:p_django/unidad3/tema7.dart';
import 'package:p_django/unidad3/tema8.dart';
import 'package:p_django/unidad3/tema9.dart';
import 'package:p_django/unidad4/tema1.dart';
import 'package:p_django/unidad4/tema2.dart';
import 'package:p_django/unidad4/tema3.dart';
import 'package:p_django/unidad4/tema4.dart';
import 'package:p_django/unidad4/tema5.dart';
import 'package:p_django/unidad4/tema6.dart';

class Inicio extends StatelessWidget {
  List<String> usuario = new List();
  Inicio({Key key, this.usuario}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inicio',
      home: Scaffold(
        appBar: Header(
          title: Text(
            'Django con Python',
            style: TextStyle(
              fontFamily: 'PatuaOne',
              fontSize: 32,
            ),
          ),
          color: Colors.indigo.shade900,
        ),
        drawer: LeftMenu(
          usuario: usuario,
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.greenAccent.shade100,
              child: Column(
                children: [
                  new Text(''),
                  new Text(''),
                  //UNIDAD 1
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: null,
                              child: Image.asset(
                                'assets/images/Unidad1.png',
                                height: 200,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/flecha.png'),
                          height: 75,
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema11(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema1/tema11.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/flecha.png'),
                          height: 75,
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema12(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema1/tema12.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/flecha.png'),
                          height: 75,
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema13(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema1/tema13.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/flecha.png'),
                          height: 75,
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema14(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema1/tema14.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/seltriple.png'),
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema15(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema1/tema15.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema16(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema1/tema16.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema17(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema1/tema17.png',
                                height: 100,
                              )),
                        ),
                      ),
                    ],
                  ),
                  new Text(''),
                  new Row(
                    children: [
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                            onPressed: null,
                            child: Image.asset(
                              'assets/images/Separador.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  new Text(''),
                  //UNIDAD 2
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: null,
                              child: Image.asset(
                                'assets/images/Unidad2.png',
                                height: 200,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/flecha.png'),
                          height: 75,
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema21(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema2/tema21.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/flecha.png'),
                          height: 75,
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema22(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema2/tema22.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/seldoble.png'),
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema23(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema2/tema23.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema24(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema2/tema24.png',
                                height: 100,
                              )),
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/seldobleinv.png'),
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/flecha.png'),
                          height: 75,
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema25(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema2/tema25.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/seldoble.png'),
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema26(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema2/tema26.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: null,
                              child: Image.asset(
                                'assets/images/tema2/tema27.png',
                                height: 100,
                              )),
                        ),
                      ),
                    ],
                  ),
                  //UNIDAD 3
                  new Text(''),
                  new Row(
                    children: [
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                            onPressed: null,
                            child: Image.asset(
                              'assets/images/Separador.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  new Text(''),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: null,
                              child: Image.asset(
                                'assets/images/Unidad3.png',
                                height: 200,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/flecha.png'),
                          height: 75,
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema31(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema3/tema31.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/flecha.png'),
                          height: 75,
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema32(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema3/tema32.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/seldoble.png'),
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema33(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema3/tema33.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema34(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema3/tema34.png',
                                height: 100,
                              )),
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/seldobleinv.png'),
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/seldoble.png'),
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema35(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema3/tema35.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema36(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema3/tema36.png',
                                height: 100,
                              )),
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/seldobleinv.png'),
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/flecha.png'),
                          height: 75,
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema37(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema3/tema37.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/seldoble.png'),
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema38(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema3/tema38.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema39(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema3/tema39.png',
                                height: 100,
                              )),
                        ),
                      ),
                    ],
                  ),
                  new Text(''),
                  new Row(
                    children: [
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                            onPressed: null,
                            child: Image.asset(
                              'assets/images/Separador.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  new Text(''),
                  //Unidad 4
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: null,
                              child: Image.asset(
                                'assets/images/Unidad4.png',
                                height: 200,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/flecha.png'),
                          height: 75,
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema41(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema4/tema41.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/flecha.png'),
                          height: 75,
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema42(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema4/tema42.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/seldoble.png'),
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema43(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema4/tema43.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema44(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema4/tema44.png',
                                height: 100,
                              )),
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/seldobleinv.png'),
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/seldoble.png'),
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema45(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema4/tema45.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tema46(usuario: usuario,)));
                              },
                              child: Image.asset(
                                'assets/images/tema4/tema46.png',
                                height: 100,
                              )),
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/seldobleinv.png'),
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/flecha.png'),
                          height: 75,
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: null,
                              child: Image.asset(
                                'assets/images/tema4/tema47.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                            child: Image(
                          image: AssetImage('assets/images/flecha.png'),
                          height: 75,
                        )),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Expanded(child: Container()),
                      new Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: null,
                              child: Image.asset(
                                'assets/images/tema4/tema48.png',
                                height: 100,
                              )),
                        ),
                      ),
                      new Expanded(child: Container()),
                    ],
                  ),
                  new Text(''),
                  new Text(''),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
