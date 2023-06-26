import 'package:blog_web_view/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();  // Flutter 프레임워크가 앱을 실행할 준비가 될 때까지 기다림

  runApp(
    MaterialApp(
      home: HomeScreen(),
    )
  );
}
