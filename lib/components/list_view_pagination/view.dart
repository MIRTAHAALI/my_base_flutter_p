import 'package:flutter/material.dart';
import 'package:my_base_flutter_p/model/item.dart';



class listViewPagination extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<listViewPagination> {
  List<String> itemList = []; // List of items
  int currentPage = 1; // Current page number
  int itemsPerPage = 20; // Number of items per page
  bool isLoading = false; // Loading indicator

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    fetchItems(currentPage); // Fetch items for the initial page
    _scrollController.addListener(_onScroll); // Listen to scroll events
  }

  @override
  void dispose() {
    _scrollController.dispose(); // Dispose the scroll controller
    super.dispose();
  }

  Future<void> fetchItems(int page) async {
    // Simulating API call or data fetching
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      // Generate dummy items for the page
      List<String> newItems = List.generate(itemsPerPage, (index) {
        return 'Item ${(page - 1) * itemsPerPage + index + 1}';
      });

      itemList.addAll(newItems); // Append new items to the list
      isLoading = false; // Reset loading indicator
    });
  }

  void _onScroll() {
    print('scrolled has client'+_scrollController.hasClients.toString());
    if (!_scrollController.hasClients) return;

    // Check if scroll position is near the bottom (80% of the total scrollable extent)
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      loadMoreItems(); // Load more items when reaching the end
    }
  }

  Future<void> loadMoreItems() async {
    if (!isLoading) {
      setState(() {
        isLoading = true; // Show loading indicator
      });

      currentPage++; // Increment the current page number
      await fetchItems(currentPage); // Fetch items for the next page
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View with Pagination'),
        ),
        body: ListView.builder(
          controller: _scrollController, // Assign the scroll controller
          itemCount: itemList.length + 1, // Add 1 for the loading indicator
          itemBuilder: (context, index) {
            if (index < itemList.length) {
              // Display list item
              return ListTile(
                title: Text(itemList[index]),
              );
            } else if (index == itemList.length) {
              // Display loading indicator at the end
              return Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else {
              return null;
            }
          },
        ),
      ),
    );
  }
}
