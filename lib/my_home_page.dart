import 'package:flutter/material.dart';

//Camel Case(낙타형)
//Snake_Case(뱀)
//띄어쓰기는 둘다 없다.
//변수는 항상 소문자로 시작한다.
//build(메서드)도 소문자로 시작한다.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  get center => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈'),
      ),
      //body에서, Center로 쌓여있는데, 왜 가운데로 오지 않았냐 -> Center는 이미 가운데로 되어 있음
      //하지만, Center 영역안에는 Center가 안되어 있음
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '숫자',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            Text(
              '$count',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
              ),
            ),
            //Elevated Button 사용
            ElevatedButton(
              onPressed: () {
                print('Elevated Button');
              },
              child: Text('Elevated Button'),
            ),
            TextButton(
              onPressed: () {
                print('Text Button');
              },
              child: Text('Text Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('OuntLined Button'),
            )
          ],
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
