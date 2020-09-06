import 'package:flutter/material.dart';


class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 1"),
      ),
      body: InformacionUsuario(),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.forward),
       onPressed: () => Navigator.pushNamed(context, "pagina2"),
     ),
   );
  }
}

class InformacionUsuario extends StatelessWidget {

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
          ListTile(title: Text("Nombre: ")),
          ListTile(title: Text("Edad: ")),
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