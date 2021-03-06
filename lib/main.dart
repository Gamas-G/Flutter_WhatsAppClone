import 'package:flutter/material.dart';
import 'package:whatsapp_clone/src/pages/home_page.dart';
import 'package:whatsapp_clone/src/pages/image_alert.dart';
import 'package:whatsapp_clone/src/widgets/imagen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'WhatsAppClone',
      initialRoute: '/',
      routes: {
        '/'     : (BuildContext context) => HomePage(),
        'alert' : (BuildContext context) => ImageAlert(),
        'imagen' : (BuildContext context) => Imagen()
      },
      // home: HomePage()
    );
  }
}