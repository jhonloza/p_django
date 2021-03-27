import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  final String pregunta, o1,o2,o3,o4; // receives the value

  Formulario({ Key key, this.pregunta, this.o1, this.o2, this.o3, this.o4}): super(key: key);

  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  String grupoSeleccion;
  @override
  void initState(){
    super.initState();
    grupoSeleccion = '';

  }
  cambioSeleccion(String val){
    setState(() {
      grupoSeleccion = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(''),
          Divider(),
          Text(
            widget.pregunta, 
            style: TextStyle(
                fontFamily: 'PatuaOne',
                fontSize: 38,
              ),
            textAlign: TextAlign.justify,
          ),
          Divider(),
          RadioListTile(
            value: '1', 
            groupValue: grupoSeleccion, 
            title: Text(
              widget.o1,
              style: TextStyle(
                fontFamily: 'PatuaOne',
                fontSize: 38,
              ),
            ),
            activeColor: Colors.green,
            onChanged: (val){
              print('Opcion seleccionada $val');
              cambioSeleccion(val);
            }
          ),
          RadioListTile(
            value: '2', 
            groupValue: grupoSeleccion, 
            title: Text(
              widget.o2,
              style: TextStyle(
                fontFamily: 'PatuaOne',
                fontSize: 38,
              ),
            ),
            activeColor: Colors.green,
            onChanged: (val){
              print('Opcion seleccionada $val');
              cambioSeleccion(val);
            }
          ),
          RadioListTile(
            value: '3', 
            groupValue: grupoSeleccion, 
            title: Text(
              widget.o3,
              style: TextStyle(
                fontFamily: 'PatuaOne',
                fontSize: 38,
              ),
            ),
            activeColor: Colors.green,
            onChanged: (val){
              print('Opcion seleccionada $val');
              cambioSeleccion(val);
            }
          ),
          RadioListTile(
            value: '4', 
            groupValue: grupoSeleccion, 
            title: Text(
              widget.o4,
              style: TextStyle(
                fontFamily: 'PatuaOne',
                fontSize: 38,
              ),
            ),
            activeColor: Colors.green,
            onChanged: (val){
              print('Opcion seleccionada $val');
              cambioSeleccion(val);
            }
          ),
          Divider(),
        ],
      ),
    );
  }
}