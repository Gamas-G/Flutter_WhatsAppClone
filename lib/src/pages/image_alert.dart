import 'package:flutter/material.dart';

class ImageAlert extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    final _contact = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Container(
      color: Colors.transparent,
      child: Center(child: Text(_contact)),
    ),
    );
  }
}