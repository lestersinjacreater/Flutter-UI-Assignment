import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  List<bool> isSelected = List.generate(5, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            trailing: Checkbox(
              value: isSelected[index],
              onChanged: (value) {
                setState(() {
                  isSelected[index] = value!;
                });
              },
            ),
            onTap: () {
              setState(() {
                isSelected[index] = !isSelected[index];
              });
            },
          );
        },
      ),
    );
  }
}