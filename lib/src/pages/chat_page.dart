import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/src/pages/image_alert.dart';

class ChatPage extends StatelessWidget {
    final List<String> _tempContacts = [
      'Gamas',
      'Jesus',
      'Najera',
      'Obama',
      'Optimus Primeeeeeee',
      'Jesus',
      'Najera',
      'Gamas',
      'Jesus',
      'Najera',
      'Obama',
      'Optimus Prime',
      'Jesus',
      'Najera',
    ];

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: _tempContacts.length,
      itemBuilder: (BuildContext context, index){
        return ListTile(
          onTap: null,
          leading: Container(
            child: Hero(
                tag: 'foto',
            
              child: GestureDetector(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset('assets/gamas.jpg',
                height: 56.0,
                width: 56.0,
                fit: BoxFit.cover
            ),
          ),
              
          onTap: (){
            final _nombre = _tempContacts[index];
            showDialog(
              
              context: context,
              builder: ( context ){
                return ImageAlert( contact: _nombre, );
              }
              );
          },
            )
            ),
          ),
          title: Row(
            children: [
              Expanded(child: Text(_tempContacts[index], style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600), overflow: TextOverflow.ellipsis)),
              Text('8:40 p.m.')
            ],
          ),
          subtitle: 
              Text('Buenos dias', overflow: TextOverflow.ellipsis),
        );
      }
    );
  }
}