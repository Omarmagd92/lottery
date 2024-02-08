import 'package:flutter/material.dart';

class HomePage6 extends StatelessWidget {
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
    'Item 11',
    'Item 12',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView.builder Example'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // Number of columns in the grid
            mainAxisSpacing:
                10.0, // Spacing between each item along the main axis
            crossAxisSpacing:
                10.0, // Spacing between each item along the cross axis
            childAspectRatio:
                1.0, // The ratio between the width and height of each item
          ),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  items[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
