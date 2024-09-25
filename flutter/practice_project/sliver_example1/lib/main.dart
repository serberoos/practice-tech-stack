import 'package:flutter/material.dart';
export 'examples/ex_1_silver_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SilverExampleNavigatorList(),
    );
  }
}

final List<Map<String, dynamic>> _examples = [
{
'title' : 'SliverAppBar',
'widget': const SliverAppBarExample()}
];

class SilverExampleNavigatorList extends StatelessWidget {
  const SilverExampleNavigatorList({super.key});

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text('sliver examples', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.primaries.first,
        ),
        body: ListView.builder(
            itemCount: _examples.length,
            itemBuilder: (context, index) =>
                ListTile(
                    title: Text(_examples[index]['title']),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) = _examples[index]['widget'],),
                      );
                    }
                )
        ),
      );
}

