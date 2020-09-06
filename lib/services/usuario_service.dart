import 'dart:async';

import 'package:estados/models/usuario_model.dart';

class _UsuarioService {
  UsuarioModel _usuario;
  StreamController<UsuarioModel> _usuarioStreamController = new StreamController<UsuarioModel>.broadcast();

  UsuarioModel get usuario => this._usuario;
  bool get existeUsuario => (this._usuario != null) ? true : false;
  Stream<UsuarioModel> get usuarioStream => _usuarioStreamController.stream;

  void cargarUsuario(UsuarioModel user) {
    this._usuario = user;
    _usuarioStreamController.add(user);
  }

  void cambiarEdad(int edad) {
    this._usuario.edad = edad;
    _usuarioStreamController.add(this._usuario);
  }

  dispose() {
    _usuarioStreamController?.close();
  }
}

final usuarioService = new _UsuarioService();