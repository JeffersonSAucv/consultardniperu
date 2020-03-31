//HTTP
import 'dart:convert';

import 'package:consultar_dni_flutter/modelo_dni.dart';
import 'package:http/http.dart' as http;
import 'consulta_dni.dart';

class ConsultaDniProvider {
  Future<List<Dni>> getConsulta() async {
    final url =
        'http://dniruc.apisperu.com/api/v1/dni/$dni?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6InNhbnRvczk3LmFqZ0BnbWFpbC5jb20ifQ.ZIuXcxIEAJXMMPjMyDt98ZFskBQ2pzP4LnXnBrgtu18';
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final dnicons = new DniConsulta.fromJsonList(decodedData);
    print(resp.body);
    return dnicons.items;
  }
}
