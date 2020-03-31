import 'package:consultar_dni_flutter/mostrar_dni.dart';
import 'package:flutter/material.dart';

String dni;


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: const EdgeInsets.all(18.0), child: _insertarDNI()),
            _tocame(context),
          ],
        ),
      ),
    );
  }

  _insertarDNI() {
    return TextField(
      decoration: InputDecoration(hintText: "INGRESA DNI"),
      onChanged: (valor) {
        dni = valor;
      },
    );
  }

  _tocame(context) {
    return RaisedButton(
        child: Text("CONSULTA DNI"),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MostrarDni()));
        });
  }
}
