import 'package:p_django/data/parametro.dart';
import 'package:postgres/postgres.dart';

class Conexion {
  var conn = PostgreSQLConnection("186.4.173.18", 5698, "pdjango", username: "pdjango", password: "PdJ@ngo2021");

  Conexion(){
  }
  resultQuery(String sql, List<Parametro> parametros) async {
    List<dynamic> datosObjeto = new List<dynamic>();
    Map<String, dynamic> lstParam = new Map<String, dynamic>();
    for(var p in parametros){
      lstParam[p.variable] = p.objeto;
    }
    await conn.open();
    List<List<dynamic>> result = await conn.query(
      sql, 
      substitutionValues: lstParam
    );
    for(final dato in result){
      for(int i=0; i< dato.length; i++){
        datosObjeto.add(dato[i]);
      }
    }
    return datosObjeto;
  }
}

