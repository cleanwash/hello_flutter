import 'package:flutter/material.dart';

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
      home: const MyHomePage(),
    );
  }
}

//statefulWidget- 상태가 있는 위젯이라고 생각하면 된다. -> 변화가 있어야 되는 것이 필요할 때
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈'),
      ),
      body: Center(
        child: Text(
          '$count',
          style: TextStyle(
            color: Colors.red,
            fontSize: 70,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            //값이 화면에 랜더링 되려면, setState를 작성하면 좋다.
            setState(() {
              count++;
            });
          },
          child: Icon(Icons.add)),
    );
  }
}
