import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_massega_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://c.files.bbci.co.uk/B3D7/production/_110093064_ennotimetodie.jpg',
            ),
          ),
        ),
        title: Text('Ana de Armas'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return MyMassegaBubble();
                },
              ),
            ),

            Text('Mundo'),
          ],
        ),
      ),
    );
  }
}
