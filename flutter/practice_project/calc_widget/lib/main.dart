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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              alignment: Alignment.centerRight,
              child: Text('1 + 2', style: TextStyle(fontSize: 24)), //현재 입력 표시
            ),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              alignment: Alignment.centerRight,
              child: Text('0', style: TextStyle(fontSize: 48)), //결과를 표시합니다.
            ),
            Column(
              // 계산기 버튼
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    _BuildButton('1'),
                    _BuildButton('2'),
                    _BuildButton('3'),
                    _BuildButton('/'),
                  ],
                ),
                Row(
                  children: [
                    _BuildButton('4'),
                    _BuildButton('5'),
                    _BuildButton('6'),
                    _BuildButton('*'),
                  ],
                ),
                Row(
                  children: [
                    _BuildButton('7'),
                    _BuildButton('8'),
                    _BuildButton('9'),
                    _BuildButton('-'),
                  ],
                ),
                Row(
                  children: [
                    _BuildButton('c'),
                    _BuildButton('0'),
                    _BuildButton('='),
                    _BuildButton('+'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _BuildButton extends StatelessWidget {
  final String label;

  const _BuildButton(this.label);

  @override
  Widget build(BuildContext context) => Expanded(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[200],
          foregroundColor: Colors.black,
        ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 24),
        ),
        onPressed: () {},
      ));
}
