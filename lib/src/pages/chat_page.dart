import 'dart:ui';

import 'package:flutter/material.dart';
// Import package  
import 'package:contacts_service/contacts_service.dart';

class ChatPage extends StatelessWidget {
    List<Contact> contacts = [];
    List<String> _temp_contacts = [
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
    // contacts = getAllContacto();
    // print(contacts.length);
    return ListView.builder(
      itemCount: _temp_contacts.length,
      itemBuilder: (BuildContext context, index){
        return ListTile(
          leading: Container(
            child: GestureDetector(
              child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset('assets/desconocido.jpg',
                height: 56.0,
                width: 56.0,
                fit: BoxFit.cover
            ),
          ),
          onTap: (){
            _alert(context, _temp_contacts[index]);
            // Navigator.pushNamed(context, 'alert', arguments: _temp_contacts[index]);
          },
            )
          ),
          title: Row(
            children: [
              Expanded(child: Text(_temp_contacts[index], style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600), overflow: TextOverflow.ellipsis)),
              Text('8:40 p.m.')
            ],
          ),
          subtitle: 
              Text('Buenos dias', overflow: TextOverflow.ellipsis),
        );
        // Divider(),
      }
    );
  }
  void _alert( BuildContext context, String contacto ){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          backgroundColor: Colors.white,
          contentPadding: EdgeInsets.all(0.0),
          
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
              padding: EdgeInsets.all(0.0),
              child: Stack(
                children: [
                Image.asset(
                  'assets/desconocido.jpg',
                  height: 250.0,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(5.0),
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  child: Text(contacto, style: TextStyle(color: Colors.white, fontSize: 14.0)),
                )
              ],
            ),
          ),
                     Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
              icon: Icon(Icons.message, color: Colors.green,),
              onPressed: null
            ),
            IconButton(
              icon: Icon(Icons.phone, color: Colors.green,),
              onPressed: null
            ),
            IconButton(
              icon: Icon(Icons.videocam, color: Colors.green,),
              onPressed: null
            ),
            IconButton(
              icon: Icon(Icons.info_outline_rounded, color: Colors.green,),
              onPressed: null
            ),
              ],
            )
          ],
          )
        );
      }
    );
  }
}