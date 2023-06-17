import 'package:flutter/material.dart';

import '../../model/item.dart';

class bottomListTopCard extends StatelessWidget {
  final Item item;

  bottomListTopCard({required this.item});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scoreboard'),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Scoreboard',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Text('1'),
                    ),
                    title: Text('Player 1'),
                    subtitle: Text('Score: 10'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Text('2'),
                    ),
                    title: Text('Player 2'),
                    subtitle: Text('Score: 8'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Text('3'),
                    ),
                    title: Text('Player 3'),
                    subtitle: Text('Score: 6'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Text('4'),
                    ),
                    title: Text('Player 4'),
                    subtitle: Text('Score: 4'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Text('5'),
                    ),
                    title: Text('Player 5'),
                    subtitle: Text('Score: 2'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
