import 'package:flutter/material.dart';
import 'package:flutter_project/ios_style_screen.dart';
import 'package:flutter_project/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        //useMaterial3 속성을 false로 바뀌면, 화면 theme 색상이 변경된다.
        useMaterial3: false,
      ),
      // home: const MainPage(),
      home: const IosStyleScreen(),
    );
  }
}
