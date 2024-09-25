
import 'package:flutter/material.dart';

class SilverAppBarExample extends StatelessWidget {
  const SilverAppBarExample({super.key});

  @override
  Widget build(BuildContext context)=>
      Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false
                pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('SliverAppBar'),
                background: Image.network(
                  'https://via.placeholder.com/200'
                ),
              ),
            ),

          ],
        ),
      );
}
