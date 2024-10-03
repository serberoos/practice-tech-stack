import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller; // 컨트롤러 변수 생성

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Namu wiki'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if (controller != null) {
                controller!.goBack();
              }
            },
            icon: Icon(
              Icons.arrow_back,
            ),
          ),
          IconButton(
            onPressed: () {
              if (controller != null) {
                controller!.goForward();
              }
            },
            icon: Icon(
              Icons.arrow_forward,
            ),
          ),
          // Expanded(child: Container()),
          IconButton(
            onPressed: () {
              if (controller != null) {
                controller!.loadUrl('https://namu.wiki');
              }
            },
            icon: Icon(
              Icons.home,
            ),
          ),

        ],
      ),
      body: WebView(
          initialUrl: 'https://namu.wiki',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            this.controller = controller;
          }),
    );
  }
}
