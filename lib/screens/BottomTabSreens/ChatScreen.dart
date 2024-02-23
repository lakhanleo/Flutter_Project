import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: const AssetImage("assets/images/chat.jpg"),
              colorFilter: ColorFilter.mode(Colors.transparent.withOpacity(0.6),BlendMode.luminosity),fit: BoxFit.cover)
        ),
      ),
    );
  }
}
