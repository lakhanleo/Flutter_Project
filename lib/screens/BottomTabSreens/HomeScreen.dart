import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(radius: 50,backgroundImage: AssetImage("assets/images/profile_placeholder.png"),),
      ),
      body: SafeArea(
          child: ListView(
            children: [

            ],
          ),
      ),
    );
  }
}
