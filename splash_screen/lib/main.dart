import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen()
    )
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('asset/img/test.jpg'),
          CircularProgressIndicator(color: Colors.white,)
        ],
      ),
    );
  }
}