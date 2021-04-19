import 'package:flutter/material.dart';

class LlamadasPage extends StatelessWidget {
  final _fontSize = TextStyle(fontSize: 18.0, color: Colors.grey[600]);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Para llamar a contactos que', style: _fontSize,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('tienen WhatsApp, toca ', style: _fontSize,),
              Icon(Icons.add_call),
              Text(' en', style: _fontSize,)
            ],
          ),
          Text('la parte inferior de la pantalla.', style: _fontSize,),
        ],
      ),
    );
  }
}