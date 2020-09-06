import 'package:flutter/material.dart';

import 'package:estados/models/usuario_model.dart';
import 'package:estados/services/usuario_service.dart';

class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder<UsuarioModel>(
          stream: usuarioService.usuarioStream ,
          builder: (context, snapshot){
            return snapshot.hasData
              ? Text("Nombre: ${snapshot.data.nombre}")
              : Text("No hay usuario");
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              child: Text("Establecer usuario", style: TextStyle(color: Colors.white)),
              onPressed: () {
                final nuevoUsuario = UsuarioModel(nombre: "Elvis", edad: 43);

                usuarioService.cargarUsuario(nuevoUsuario);
              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text("Cambiar edad", style: TextStyle(color: Colors.white)),
              onPressed: () {
                usuarioService.cambiarEdad(25);
              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text("Añadir profesión", style: TextStyle(color: Colors.white)),
              onPressed: () {

              },
            )
          ],
        )
     ),
   );
  }
}