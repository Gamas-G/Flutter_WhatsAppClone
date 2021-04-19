import 'dart:ui';

import 'package:flutter/material.dart';
// Import package  
import 'package:contacts_service/contacts_service.dart';

class ChatPage extends StatelessWidget {
    List<Contact> contacts = [];
    
    // @override
    // void initState() { 
    //   // super.initState();
    //   getAllContacto();
    // }

//   getAllContacto() async{
//   Iterable<Contact> _contacts = (await ContactsService.getContacts(withThumbnails: false)).toList();
// contacts = _contacts;
  
//   }
  

  @override
  Widget build(BuildContext context) {
    // contacts = getAllContacto();
    // print(contacts.length);
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, index){
        return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Image.asset('assets/desconocido.jpg',
            height: 56.0,
            width: 56.0,
            fit: BoxFit.cover
            )
          ),
          title: Row(
            children: [
              Expanded(child: Text('Gamas $index', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),)),
              Text('8:40 p.m.')
            ],
          ),
          subtitle: 
              Text('Buenos dias'),
        );
        // Divider(),
      }
      // children: [
      //   ListTile(
      //     leading: ClipRRect(
      //       borderRadius: BorderRadius.circular(50.0),
      //       child: Image.asset('assets/contacto.jpg',
      //       height: 56.0,
      //       width: 56.0,
      //       fit: BoxFit.cover
      //       )
      //     ),
      //     title: Row(
      //       children: [
      //         Expanded(child: Text('Gamas')),
      //         Text('8:40 p.m.')
      //       ],
      //     ),
      //     subtitle: 
      //         Text('Buenos dias'),
      //   ),
      //   Divider(),
      //   ListTile(
      //     leading: ClipRRect(
      //       borderRadius: BorderRadius.circular(50.0),
      //       child: Image.asset('assets/desconocido.jpg',
      //       height: 56.0,
      //       width: 56.0,
      //       fit: BoxFit.cover
      //       )
      //     ),
      //     title: Row(
      //       children: [
      //         Expanded(child: Text('+52999999999')),
      //         Text('8:40 p.m.')
      //       ],
      //     ),
      //     subtitle: 
      //         Text('Buenos dias'),
      //   ),
      //   Divider(),
      // ],
    );
  }
}