import 'package:flutter/material.dart';
import '../bottom_navigation/model.dart';
import '../bottom_navigation/view.dart';

class BottomNavigationController extends StatefulWidget {
  @override
  _BottomNavigationControllerState createState() => _BottomNavigationControllerState();
}

class _BottomNavigationControllerState extends State<BottomNavigationController> {
  BottomNavigationModel _model = BottomNavigationModel();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationView(
      selectedIndex: _model.selectedIndex,
      onItemTapped: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _model.selectedIndex = index;
    });
  }
}
