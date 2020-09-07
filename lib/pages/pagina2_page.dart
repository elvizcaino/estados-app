import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";

import 'package:estados/bloc/usuario/usuario_cubit.dart';
import 'package:estados/models/usuario_model.dart';

class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final usuarioCubit = context.bloc<UsuarioCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              child: Text("Establecer usuario", style: TextStyle(color: Colors.white)),
              onPressed: () {
                final newUsuario = UsuarioModel(
                  nombre: "Elvis",
                  edad: 43,
                  prefesiones: ["Fullstack Developer", "Frontend Developer"]
                );
                usuarioCubit.seleccionarUsuario(newUsuario);
              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text("Cambiar edad", style: TextStyle(color: Colors.white)),
              onPressed: () {
                usuarioCubit.cambiarEdad(25);
              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text("Añadir profesión", style: TextStyle(color: Colors.white)),
              onPressed: () {
                usuarioCubit.agregarProfesion();
              },
            )
          ],
        )
     ),
   );
  }
}