import 'package:flutter/material.dart';
import 'package:flutter_application_whatsapp/widget/call_screen.dart';
import 'package:flutter_application_whatsapp/widget/camera_screen.dart';
import 'package:flutter_application_whatsapp/widget/chat_screen.dart';
import 'package:flutter_application_whatsapp/widget/status_screen.dart';

class WhatsAppHome extends StatelessWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xff075E54),
          actions: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                  color: Colors.white,
                ),
                PopupMenuButton<String>(
                  icon: Icon(Icons.more_vert, color: Colors.white),
                  onSelected: (String result) {
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'Nuevo Grupo',
                      child: Text('Nuevo Grupo'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Mensajes Destacados',
                      child: Text('Mensajes Destacados'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Dispositivos Conectados',
                      child: Text('Dispositivos Conectados'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Ajustes',
                      child: Text('Ajustes'),
                    ),
                  ],
                ),
              ],
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.white, 
            unselectedLabelColor: Colors.white, 
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CameraScreen(),
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
      ),
    );
  }
}
