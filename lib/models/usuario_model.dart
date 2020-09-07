class UsuarioModel {
  final String nombre;
  final int edad;
  final List<String> prefesiones;

  UsuarioModel({this.nombre, this.edad, this.prefesiones});

  UsuarioModel copyWith({
    String nombre,
    int edad,
    List<String> prefesiones
  }) => UsuarioModel(
    nombre: nombre ?? this.nombre,
    edad: edad ?? this.edad,
    prefesiones: prefesiones ?? this.prefesiones
  );
}