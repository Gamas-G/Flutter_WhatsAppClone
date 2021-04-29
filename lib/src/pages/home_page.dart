import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:whatsapp_clone/src/pages/camara_page.dart';
import 'package:whatsapp_clone/src/pages/chat_page.dart';
import 'package:whatsapp_clone/src/pages/estados_page.dart';
import 'package:whatsapp_clone/src/pages/llamadas_page.dart';
import 'package:whatsapp_clone/src/search/search_delegate.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(18, 114, 126, 1),
          title: Text('WhatsApp_Clone'),
          bottom: TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: 0.0),
            indicatorColor: Colors.white,
            labelStyle: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'CHATS',),
              Tab(text: 'ESTADOS',),
              Tab(text: 'LLAMADAS',)
              
            ]
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: (){
                  showSearch(
                    context: context,
                    delegate: DataSearch()
                  );
                }
              ),
              _menu( context )
            ],
        ),
        body: 
        /*CustomScrollView(
          slivers: [
            _crearAppBar( context ),

          ],
        ),*/
        TabBarView(
          children: _paginas()
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: Color.fromRGBO(37, 211, 102, 1),
            child: Icon(Icons.chat),
            ),
      ),
    );
  }

  Widget _crearAppBar(BuildContext context){
    return SliverAppBar(
      expandedHeight: 100.0,
      title: Text('WhatsApp_Clone'),
      actions: _acciones( context ),
      backgroundColor: Color.fromRGBO(18, 114, 126, 1),
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        title: null
      ),
    );
  }

  List<Widget> _acciones(BuildContext context){
    return [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: (){
          showSearch(
            context: context,
            delegate: DataSearch()
          );
        }
      ),
      _menu( context )
    ];
  }

  
  Widget _menu(BuildContext context){
    return PopupMenuButton(
      itemBuilder: (BuildContext context){
        return [
          PopupMenuItem(
            child: Text('Nuevo Grupo')
          ),
          PopupMenuItem(
            child: Text('Nueva difusiòn')
          ),
          PopupMenuItem(
            child: Text('WhatsApp Web')
          ),
          PopupMenuItem(
            child: Text('Mensajes Destacados')
          ),
          PopupMenuItem(
            child: GestureDetector(
              child: Text('Ajustes'),
              onTap: null
            )
          ),
        ];
      }
    );
  }

  List<Widget> _paginas(){
    return [
            CamaraPage(),
            ChatPage(),
            EstadosPage(),
            LlamadasPage()
      ];
  }

}