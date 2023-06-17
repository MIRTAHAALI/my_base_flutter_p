import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_base_flutter_p/components/bottom_list_top_card/view.dart';
import 'package:my_base_flutter_p/components/bottom_navigation/view.dart';
import 'package:my_base_flutter_p/components/list_view_pagination/view.dart';

import '../controller/api_controller.dart';
import '../model/item.dart';
import 'item_details_view.dart';


class ItemListView extends StatefulWidget {
  @override
  _ItemListViewState createState() => _ItemListViewState();
}

class _ItemListViewState extends State<ItemListView> {
  APIController _apiController = APIController();
  List<Item> _items = [];

  @override
  void initState() {
    super.initState();
    _fetchItems();
  }



  void _fetchItems() async {
    try {
      List<Item> items = await _apiController.fetchItems();
      setState(() {
        _items = items;
      });
    } catch (e) {
      // Handle error
    }
  }
  void _logg(int index) async {
    debugPrint('Print $index');
  }
  void _openItemDetails(Item item) {

    if (item.id == '0') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => bottomListTopCard(item: item),
        ),
      );
    }
    if (item.id == '1') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => listViewPagination(),
        ),
      );
    }
    if (item.id == '6') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BottomNavigationView(selectedIndex: 0, onItemTapped:  _logg),
        ),
      );
    }
  }

  void _shareItems() {
    // Build a string containing the names of the items to share
    String sharedText = 'Check out these items:\n';
    for (Item item in _items) {
      sharedText += '- ${item.name}\n';
    }

    // Open the share dialog to share the items
    //Share.share(sharedText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item List'),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: _shareItems,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_items[index].name),
            onTap: () => _openItemDetails(_items[index]),
          );
        },
      ),
    );
  }
}
