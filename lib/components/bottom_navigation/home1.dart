import 'package:flutter/material.dart';




class Home1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Item ID: abc',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            Text(
              'Item Name: abc',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
