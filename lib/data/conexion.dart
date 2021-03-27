import 'package:postgres/postgres.dart';

class Conexion {
  static var conn = PostgreSQLConnection("http://host-186-4-173-18.netlife.ec", 5698, "pdjango", username: "jdjango", password: "dart");

  Conexion(){
  }

  void conectar(){
    try {
      conn.open();
    } catch (e) {
      print('error de conexion: '+ e);
    }
  }

}

