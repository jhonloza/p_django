  
import 'package:flutter/material.dart';

class Header extends AppBar{
  Header(
  {
    Key key,
    Widget title,
    Color color,
    bool centrar,
    List<Widget> actions
  }) : super(key: key, title: title, backgroundColor: color, centerTitle: centrar, actions: actions);
}