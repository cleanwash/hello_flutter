import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}
//hot reload vs hot restart
//hot reload: Widget build 안 쪽에서, 내용을 수정할 때, 바로바로 변경이 가능하다.
//hot restart: 바깥에, int number 같이 변수들은 hot reload가 안됨 -> restart 버튼 클릭

class _MainPageState extends State<MainPage> {
  int number = 0;

  get center => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈'),
      ),
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
              '$number',
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
            ),
            //TextField 꾸미기 속성
            TextField(
              decoration: InputDecoration(
                labelText: '글자',
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                print(text);
              },
            ),
            //이미지 추가해보기
            Image.network(
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                'https://cdn.huffingtonpost.kr/news/photo/201505/4467_7195.jpeg'),
            Image.asset('assets/pic.jpg',
                width: 100, height: 100, fit: BoxFit.cover),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              number++;
            });
          },
          child: Icon(Icons.add)),
    );
  }
}
