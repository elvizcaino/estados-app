import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/models/usuario_model.dart';

import 'package:estados/bloc/usuario/usuario_bloc.dart';

class Pagina2Page extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
  final usuarioBloc = BlocProvider.of<UsuarioBloc>(context);
  
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
                final nuevoUsuario = UsuarioModel(
                  nombre: "Elvis",
                  edad: 43,
                  prefesiones: ["Fullstack Dev", "Frontend Dev"]
                );
                usuarioBloc.add(ActivarUsuario(nuevoUsuario));
              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text("Cambiar edad", style: TextStyle(color: Colors.white)),
              onPressed: () {
                usuarioBloc.add(CambiarEdad(25));
              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text("Añadir profesión", style: TextStyle(color: Colors.white)),
              onPressed: () {
                usuarioBloc.add(AgregarProfesion("Otra profesión"));
              },
            )
          ],
        )
     ),
   );
  }
}