import 'package:flutter/material.dart';
import 'package:flutter_example/screen/new_page.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomeWidget(),
    ),
  );
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter에서 화면 이동하기'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to Page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const NewPage();
                },
              ),
            );
          },
        ), //화면이 넘어갈 준비를 해준다.
      ),
    );
  }
}
//보통 화면을 넘길때는 한 다트 파일에서 넘기지 않고 다른 다트파일에서 넘기는게 일반적
//screen 폴더를 만들어준다.
