import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome new Page'),
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(
                child: const Text('Go to Back'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              TextButton(
                child: const Text('Go to New Page2'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewPage2()) );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to New Page2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            child: Text('Go to Back'),
            onPressed: () {
              Navigator.pop(context);
            }
          )
          TextButton(
              child: Text('Go to Home'),
              onPressed: () {
                Navigator.pop(context);
              }
          )
        ],
      )
    );
  }
}
