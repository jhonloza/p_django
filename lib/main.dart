import 'package:flutter/material.dart';
import 'package:p_django/data/conexion.dart';
import 'package:p_django/data/parametro.dart';
import 'package:p_django/inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  /*void respuesta(String sql, List<Parametro> param){
    List<dynamic> listado = new List<dynamic> ();
    Conexion conector = new Conexion();
    try {
      listado = conector.resultQuery(sql, param);
      print (listado[1]);
    } catch (e) {
      print('Error: '+e);
    } 
  }*/

  Inicio inicio = new Inicio();
  @override
  Widget build(BuildContext context) {
    String mensaje;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: inicio,
      /*home: Scaffold(
        body: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value){
                      mensaje = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'Enter your username'
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      List<Parametro> listaParamtros = new List<Parametro>();
                      Parametro para = new Parametro('vIdentificador','A2101');
                      listaParamtros.add(para);
                      respuesta('SELECT idusuario, username, nombre_completo, telefono, contraseña, identificador, fecha_de_nacimineto FROM public.usuario where identificador=@vIdentificador', listaParamtros);

                    },
                    child: Text('Comprobar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),*/
    );
  }
}