import 'package:flutter/material.dart';
import 'ui/inputs/input_page.dart';
import 'package:flutter_tuts/ui/route_utils.dart';
import 'package:flutter_tuts/data/demo_item.dart';

void main() async {
  // await initHive();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: InputPage(),
    );
  }
}

class ListDemo extends StatelessWidget {
  final List<DemoItem> demos = DemoItem.getList();
  ListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Tutorial';

    void show(DemoItem item) {
      print("show: ${item.screenName}");
      Widget src = screenOf(item.screenName!)!;
      nav(context, src);
    }

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(appTitle),
          ),
          body: ListView.builder(
            itemCount: demos.length,
            itemBuilder: (context, index) {
              DemoItem entity = demos[index];
              return ListTile(
                title: Text('${entity.title}'),
                onTap: () => {show(entity)},
              );
            },
          )),
    );
  }
}
