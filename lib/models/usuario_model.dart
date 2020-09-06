import "package:meta/meta.dart";

class UsuarioModel {
  String nombre;
  int edad;
  List<String> prefesiones;

  UsuarioModel({@required this.nombre, this.edad, this.prefesiones})
    :assert(nombre != null);
}