import 'package:flutter/material.dart';
import 'splash.dart';
import 'home.dart';
import 'chat.dart';
import 'buttonpg.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splash(), 
      routes: {
        '/home': (context) => const Home1(), 
        '/chatpg': (context) => const Chat1Pg(), 
        '/buttonpg': (context) => const ButtonPage(), 
      },
    );
  }
}
