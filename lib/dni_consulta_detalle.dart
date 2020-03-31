import 'package:consultar_dni_flutter/modelo_dni.dart';
import 'package:flutter/material.dart';

class DniConsultaDetalle extends StatelessWidget {
  final List<Dni> dni;

  const DniConsultaDetalle({Key key, @required this.dni}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return dni.isEmpty
        ? Text("DNI VACIO")
        : ListView.builder(
            itemCount: dni == null ? 0 : dni.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  SizedBox(height: 300.0),
                  Text(
                    "HOLA:",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "${dni[index].nombres}",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text(
                    "${dni[index].apellidoPaterno} ${dni[index].apellidoMaterno}",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "YA TE JACKIE GAAAAA!!",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              );
            },
          );
  }
}
