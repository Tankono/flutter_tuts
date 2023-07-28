import 'package:flutter/material.dart';

class List2 extends StatelessWidget {
  List products = List<String>.generate(500, (i) => "Product List: $i");

  List2({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Flutter Basic List Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(appTitle),
          ),
          body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('${products[index]}'),
              );
            },
          )),
    );
  }
}
