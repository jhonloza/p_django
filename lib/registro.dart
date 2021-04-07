import 'package:flutter/material.dart';
import 'package:p_django/data/conexion.dart';
import 'package:p_django/data/parametro.dart';
import 'package:p_django/login.dart';
import 'Dart:math';

class Registro extends StatelessWidget{
  int iduser=0;
  String usuario ='', contrasena ='', nombreC ='', ident ='';
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeigth = screenSize.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inicio',
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              width: screenWidth,
              height: screenHeigth*0.15,
              color: Colors.blue.shade700,
              child: Text(''),
            ),
            Container(
              width: screenWidth,
              height: screenHeigth*0.7,
              color: Colors.blue.shade700,
              child: Row(
                children: [
                  Container(
                    width: screenWidth*0.075,
                    height: screenHeigth*0.7,
                    color: Colors.blue.shade700,
                  ),
                  Container(
                    width: screenWidth*0.85,
                    height: screenHeigth*0.7,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Su nombre de usuario',
                            labelText: 'Usuario',
                          ),
                          textAlign: TextAlign.center,
                          validator: (val){
                            if (val == null || val.isEmpty) {
                              return 'Ingrese un nombre de usuario';
                            }
                            return null;
                          },
                          onChanged: (valor){
                            usuario = valor;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Contraseña de cuenta',
                            labelText: 'Contraseña',
                          ),
                          textAlign: TextAlign.center,
                          obscureText: true,
                          validator: (val){
                            if (val == null || val.isEmpty) {
                              return 'Ingrese la contraseña';
                            }
                            return null;
                          },
                          onChanged: (valor){
                            contrasena = valor;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Nombre completo',
                            labelText: 'Nombre y apellido',
                          ),
                          textAlign: TextAlign.center,
                          validator: (val){
                            if (val == null || val.isEmpty) {
                              return 'Ingrese un nombre valido';
                            }
                            return null;
                          },
                          onChanged: (valor){
                            nombreC = valor;
                          },
                        ),
                        TextButton(
                          onPressed: () async {
                            Random ran = new Random();
                            var r = ran.nextInt(200);
                            ident = r.toString();
                            Conexion con = new Conexion();
                            await con.conn.open();
                            String sql1="select public.NuevoUsuario('"+usuario+"', '"+contrasena+"', '"+nombreC+"', '"+ident+"');";//creacion de cuenta
                            String sql2="SELECT idusuario FROM public.usuario where identificador = '"+ident+"';";
                            await con.conn.query(sql1);
                            List<List<dynamic>> resultado = await con.conn.query(sql2);
                            if(resultado != null || resultado.isNotEmpty){
                              for (final dato in resultado) {
                                iduser = dato[0];
                              } 
                            }
                            String sql3="select public.VaciarDatos('"+ident+"', "+iduser.toString()+");";//vacio de datos
                            await con.conn.query(sql3);
                            print('Registrado correctamente');
                            Navigator.pop(context);
                          }, 
                          child: Container(
                            width: screenWidth/1.75,
                            child: Image(
                              image: AssetImage('assets/images/register.png'),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          }, 
                          child: Text('¿Ya posees cuenta?... Ingresa aqui')
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth*0.075,
                    height: screenHeigth*0.7,
                    color: Colors.blue.shade700,
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeigth*0.15,
              color: Colors.blue.shade700,
              child: Text(''),
            ),
          ],
        ),
      ),
    );
  }

}