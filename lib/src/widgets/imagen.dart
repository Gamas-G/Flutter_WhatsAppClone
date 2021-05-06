import 'package:flutter/material.dart';


class Imagen extends StatelessWidget {
  const Imagen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

  final String name = ModalRoute.of(context).settings.arguments;
    
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(name, style: TextStyle(color: Colors.white),)
      ),
      body: Container(
      child: Center(
        child: Hero(tag: 'foto',
        child: Image.asset(
                    'assets/gamas.jpg',
                    height: 250.0,
                    fit: BoxFit.cover,
                  ),
        )
      ),
    ),
    );
  }
}