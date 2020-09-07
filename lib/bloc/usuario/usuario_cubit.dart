import "package:meta/meta.dart";

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:estados/models/usuario_model.dart';

part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  UsuarioCubit() : super(UsuarioInitial());
  
  void seleccionarUsuario(UsuarioModel usuario) {
    emit(UsuarioActivo(usuario));
  }

  void cambiarEdad(int edad) {
    final currentState = state;

    if(currentState is UsuarioActivo) {
      final nuevoUsuario = currentState.usuario.copyWith(edad: edad);

      emit(UsuarioActivo(nuevoUsuario));
    }
  }

  void agregarProfesion() {
    final currentState = state;

    if(currentState is UsuarioActivo) {
      final newProfesiones = [
        ...currentState.usuario.prefesiones,
        "Profesion ${currentState.usuario.prefesiones.length + 1}"
      ];

      final nuevoUsuario = currentState.usuario.copyWith(prefesiones: newProfesiones);

      emit(UsuarioActivo(nuevoUsuario));
    }
  }

  void borrarUsuario() {
    emit(UsuarioInitial());
  }

}