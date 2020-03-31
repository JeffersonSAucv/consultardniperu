import 'package:consultar_dni_flutter/consulta_dni_provider.dart';
import 'package:consultar_dni_flutter/dni_consulta_detalle.dart';
import 'package:flutter/material.dart';

final consultadni = ConsultaDniProvider();

class MostrarDni extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: consultadni.getConsulta(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            return DniConsultaDetalle(dni: snapshot.data);
          }

          return Center(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("Estamos procesando su consulta...",
                      style: TextStyle(fontSize: 20.0))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
