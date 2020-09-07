part of "usuario_bloc.dart";

class UsuarioState {
  final bool existeUsuario;
  final UsuarioModel usuario;

  UsuarioState({UsuarioModel user})
    : usuario = user ?? null,
      existeUsuario = (user != null) ? true : false;

  UsuarioState copyWith({UsuarioModel usuario}) => UsuarioState(
    user: usuario ?? this.usuario
  );

  UsuarioState estadoInicial() => new UsuarioState();
}