import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvaider extends ChangeNotifier {
  // Your code here
  List<Message> message = [
    Message(text: 'Hola amor', fromWho: FomWho.me),
    Message(text: 'Ya regresaste del trabajo', fromWho: FomWho.me),
  ];

  Future<void> sendMessage() async {
    // TODO: enviar mensaje
  }
}