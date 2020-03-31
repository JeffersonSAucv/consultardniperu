class DniConsulta {
  List<Dni> items = List();
  DniConsulta();
  DniConsulta.fromJsonList(item) {
    final dni = Dni.fromJsonMap(item);
    items.add(dni);
  }
}

class Dni {
  String dni;
  String nombres;
  String apellidoPaterno;
  String apellidoMaterno;
  String codVerifica;

  Dni({
    this.dni,
    this.nombres,
    this.apellidoPaterno,
    this.apellidoMaterno,
    this.codVerifica,
  });

  Dni.fromJsonMap(Map<String, dynamic> json) {
    dni = json['dni'];
    nombres = json['nombres'];
    apellidoPaterno = json['apellidoPaterno'];
    apellidoMaterno = json['apellidoMaterno'];
    codVerifica = json['codVerifica'];
  }
}
