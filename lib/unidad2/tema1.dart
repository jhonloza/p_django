import 'package:flutter/material.dart';

import 'package:p_django/templates/header.dart';
import 'package:p_django/templates/leftmenu.dart';

class Tema21 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget build(BuildContext context) {
      final screenSize = MediaQuery.of(context).size;
      final screenWidth = screenSize.width;
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tema 1',
        home: Scaffold(
          appBar: Header(
            title: Text(
              'Unidad I, Tema 1',
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
                      children: [],
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
}
