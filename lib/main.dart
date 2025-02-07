import 'package:flutter/material.dart';
import 'package:flutter_application_whatsapp/whatsapp_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI Clone',
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        hintColor: Color(0xff25D366),
      ),
      home: const WhatsAppHome(),
    );
  }
}
