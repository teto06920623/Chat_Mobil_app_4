import 'package:flutter/material.dart';
import 'package:chat/chat.dart';
class FristScrean extends StatefulWidget {
  const FristScrean({super.key});

  @override
  State<FristScrean> createState() => _FristScreanState();
}

class _FristScreanState extends State<FristScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat, size: 100, color: Colors.white),
            Text(
              'Welcome to the Chat App',
              style: TextStyle(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Chat()),
                );
              },
              child: Text(
                'Get Started',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
