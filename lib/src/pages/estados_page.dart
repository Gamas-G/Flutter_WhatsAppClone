import 'package:flutter/material.dart';

class EstadosPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Stack(
              children: [
                ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset('assets/gamas.jpg',
              height: 56.0,
              width: 56.0,
              fit: BoxFit.cover
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: Container(
                
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green
                ),
                // color: Colors.green,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20.0,
                ),
              )
            )
              ],
          ),
          title: Text('Mi Estado', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600)),
          subtitle: 
              Text('Añade una Actualización', style: TextStyle(fontSize: 16.0)),
        ),
      ],
    );
  }
}