import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final List<String> messages = [
    "Hola amigo",
    "Como estas?",
    "Este es un mensaje de prueba",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return Container(
          height: 80,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/walter.jpeg'),
            ),
            title:
                Text('Contacto ${index + 1}'),
            subtitle: Text(messages[index]),
          ),
        );
      },
    );
  }
}
