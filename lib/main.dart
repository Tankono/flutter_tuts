import 'package:flutter/material.dart';
import 'package:flutter_tuts/data/demo_item.dart';
import 'package:flutter_tuts/ui/app_routes.dart';

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
      home: ListDemo(),
    );
  }
}

class ListDemo extends StatelessWidget {
  final List<DemoItem> demos = getList();
  ListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Tutorial';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                onTap: () => {entity.showScreen(context)},
              );
            },
          )),
    );
  }
}
