import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> with TickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 2, vsync: this); // 컨트롤러 초기화 하기
    controller!.addListener(tabListener);
  }

  tabListener() {
    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller!.removeListener(tabListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: renderChildren(),
      ),
      bottomNavigationBar: renderBottomNavigation(),
    );
  }

  List<Widget> renderChildren() {
    return [
      Container(
        child: Center(
          child: Text(
            'Tab 1',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      Container(
        child: Center(
          child: Text(
            'Tab 2',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ];
  }

  BottomNavigationBar renderBottomNavigation() {
    // 탭 네비게이션을 구현하는 위젯
    return BottomNavigationBar(
        //현재 화면에 렌더링되는 탭의 인덱스
        currentIndex: controller!.index,
        onTap: (int index) {
          // 탭이 선택될 떄마다 실행되는 함수
          setState(() {
            controller!.animateTo(index);
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.edgesensor_high_outlined,
            ),
            label: '주사위',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: '설정',
          ),
        ]);
  }
}
