import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDropdownTextField extends StatefulWidget {
  @override
  _MyDropdownTextFieldState createState() => _MyDropdownTextFieldState();
}

class _MyDropdownTextFieldState extends State<MyDropdownTextField> {
  String? _selectedItem;
  List<String> _dropdownItems = ['Item 1', 'Item 2', 'Item 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // Set the desired height
        child: SafeArea(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            width: double.infinity,

            child: Text('Tra Cứu Kết Quả Xổ Số',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),

            // Other AppBar properties and widgets
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("dsasa", style: TextStyle(fontWeight: FontWeight.w600)),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedItem,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedItem = newValue;
                  });
                },
                items: _dropdownItems.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Select an item',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              Text("dsasa", style: TextStyle(fontWeight: FontWeight.w600)),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedItem,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedItem = newValue;
                  });
                },
                items: _dropdownItems.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Select an item',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              Text("dsasa", style: TextStyle(fontWeight: FontWeight.w600)),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedItem,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedItem = newValue;
                  });
                },
                items: _dropdownItems.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Select an item',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              Text("dsasa", style: TextStyle(fontWeight: FontWeight.w600)),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedItem,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedItem = newValue;
                  });
                },
                items: _dropdownItems.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Select an item',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
