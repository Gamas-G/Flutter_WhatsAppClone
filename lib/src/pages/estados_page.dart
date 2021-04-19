import 'package:flutter/material.dart';

class EstadosPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Image.asset('assets/contacto.jpg',
            height: 56.0,
            width: 56.0,
            fit: BoxFit.cover
            ),
          ),
          title: Text('Mi Estado', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600)),
          subtitle: 
              Text('Añade una Actualización', style: TextStyle(fontSize: 16.0)),
        ),
      ],
    );
  }
}