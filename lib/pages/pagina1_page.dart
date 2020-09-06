import 'package:flutter/material.dart';

import 'package:estados/models/usuario_model.dart';
import 'package:estados/services/usuario_service.dart';


class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 1"),
      ),
      body: StreamBuilder<UsuarioModel>(
        stream: usuarioService.usuarioStream ,
        builder: (context, snapshot){
          return snapshot.hasData
            ? InformacionUsuario(snapshot.data)
            : Center(child: Text("No hay información del usuario"));
        },
      ),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.forward),
       onPressed: () => Navigator.pushNamed(context, "pagina2"),
     ),
   );
  }
}

class InformacionUsuario extends StatelessWidget {
  final UsuarioModel usuario;

  const InformacionUsuario(this.usuario);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("General", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),
          ListTile(title: Text("Nombre: ${usuario.nombre}")),
          ListTile(title: Text("Edad: ${usuario.edad}")),
          Text("Prefesiones", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),
          ListTile(title: Text("Prefesión 1: ")),
          ListTile(title: Text("Prefesión 2: ")),
          ListTile(title: Text("Prefesión 3: ")),
        ],
      ),
    );
  }
}