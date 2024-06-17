import 'package:flutter/material.dart';
import 'package:flutter_project/main_ppage.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
//f2키를 누르면, 한꺼번에 바꿀 수 있다. 다만, 로지텍에서는 fn+2키를 눌러야 작동할 수 있다. 
//파일은 그냥 rename 할 시에, 자동으로 변한다. 