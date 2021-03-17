import 'package:flutter/material.dart';

class LeftMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Mi cuenta', style: TextStyle(fontFamily: 'PatuaOne'),),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Tabla de posiciones', style: TextStyle(fontFamily: 'PatuaOne'),),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Invita a tus amigos', style: TextStyle(fontFamily: 'PatuaOne'),),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Califica la App', style: TextStyle(fontFamily: 'PatuaOne'),),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Ajustes', style: TextStyle(fontFamily: 'PatuaOne'),),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }

}