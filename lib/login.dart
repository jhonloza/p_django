import 'package:flutter/material.dart';
import 'package:p_django/data/conexion.dart';
import 'package:p_django/data/parametro.dart';
import 'package:p_django/inicio.dart';
import 'package:p_django/registro.dart';

class Login extends StatelessWidget{
  String usuario ='', contrasena ='';
  List<String> user = new List();
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
                        Image.network('https://i.ibb.co/jHd9jXh/image.png'),
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
                        TextButton(
                          onPressed: () async {
                            Conexion con = new Conexion();
                            await con.conn.open();
                            String sql="SELECT nombre_completo, identificador FROM public.usuario where username = '"+usuario+"' and contraseña = '"+contrasena+"';";
                            List<List<dynamic>> resultado = await con.conn.query(sql);
                            if(resultado != null || resultado.isNotEmpty){
                              for (final dato in resultado) {
                                user.add(dato[0]);
                                user.add(dato[1]);
                              } 
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Inicio(usuario: user,)
                                )
                              );
                            }
                          }, 
                          child: Container(
                            width: screenWidth/3,
                            child: Image(
                              image: AssetImage('assets/images/login.png'),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Registro()
                              )
                            );
                          }, 
                          child: Text('¿No tienes cuenta?... Registrate aqui')
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