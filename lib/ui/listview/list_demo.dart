import '../../data/DemoItem.dart';
import 'package:flutter/material.dart';

class ListDataDemo extends StatelessWidget {
  final List<DemoItem> products = [
    DemoItem.from("List Static", "list1"),
    DemoItem.from("List Data Local", "list2"),
    DemoItem.from("List Data Remote", "list3"),
  ];

  ListDataDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demo List Data'),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            DemoItem item = products[index];
            return ListTile(
              title: Text('${item.title}'),
              onTap: () => item.showScreen(context),
            );
          },
        ));
  }
}
