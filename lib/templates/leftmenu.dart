import 'package:flutter/material.dart';

class LeftMenu extends StatelessWidget{
  List<String> usuario = new List();
  LeftMenu({Key key, this.usuario}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text(usuario[0], style: TextStyle(fontFamily: 'PatuaOne', fontSize: 38),),
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