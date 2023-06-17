import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/item.dart';

class APIController {
  Future<List<Item>> fetchItems() async {
    // final response = await http.get(Uri.parse('https://api.example.com/items'));
    //
    // if (response.statusCode == 200) {
    //   final data = json.decode(response.body);
    //   final List<Item> items = [];
    //
    //   for (var itemData in data) {
    //     final item = Item(
    //       id: itemData['id'],
    //       name: itemData['name'],
    //     );
    //     items.add(item);
    //   }
    //
    //   return items;
    // } else {
    //   throw Exception('Failed to fetch items from the API');
    // }
    final List<Item> items = [];
    items.add(Item(
      id: '0',
      name: 'List View Bottom, card at top',
    ));
    items.add(Item(
      id: '1',
      name: 'List View Pagination',
    ));
    items.add(Item(
      id: '2',
      name: 'Floating Button, Toast Message, Screen Loader',
    ));
    items.add(Item(
      id: '3',
      name: 'Sign Up Form',
    ));
    items.add(Item(
      id: '4',
      name: 'List View WhatsApp',
    ));
    items.add(Item(
      id: '5',
      name: 'Setting Page',
    ));
    items.add(Item(
      id: '6',
      name: 'Bottom Nav',
    ));
    items.add(Item(
      id: '7',
      name: 'Top Nav',
    ));
    return items;
  }
}
