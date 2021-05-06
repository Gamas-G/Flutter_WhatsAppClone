
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/src/widgets/imagen.dart';

class ImageAlert extends StatelessWidget {

  final String contact;

  ImageAlert({ this.contact });


  @override
  Widget build(BuildContext context) {

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
               Hero(
                 tag: 'foto',
               child: GestureDetector(
                 child:  Image.asset(
                    'assets/gamas.jpg',
                    height: 250.0,
                    fit: BoxFit.cover,
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, 'imagen', arguments: contact);
                    // Navigator.push(context,
                    // MaterialPageRoute(builder: (context) => Imagen()));
                  },
               )
               ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(5.0),
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  child: Text( contact, style: TextStyle(color: Colors.white, fontSize: 14.0)),
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
}