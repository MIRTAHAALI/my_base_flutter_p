import 'package:flutter/material.dart';
import 'package:my_base_flutter_p/view/item_list_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MVC Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ItemListView(),
    );
  }
}





