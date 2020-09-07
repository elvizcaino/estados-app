import 'package:estados/models/usuario_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/bloc/usuario/usuario_bloc.dart';


class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 1"),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              BlocProvider.of<UsuarioBloc>(context).add(BorrarUsuario());
            },
          )
        ],
      ),
      body: BlocBuilder<UsuarioBloc, UsuarioState>(
        builder: (_, state) {
          if(state.existeUsuario) {
            return InformacionUsuario(state.usuario);
          } else {
            return Center(child: Text("No hay usuario seleccionado"));
          }
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
  final UsuarioModel _usuario;

  const InformacionUsuario(this._usuario);
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
          ListTile(title: Text("Nombre: ${this._usuario.nombre}")),
          ListTile(title: Text("Edad: ${this._usuario.edad}")),
          Text("Prefesiones", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),
          ...this._usuario.prefesiones.map((p) => ListTile(title: Text(p))).toList()
        ],
      ),
    );
  }
}