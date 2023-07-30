import 'package:flutter/material.dart';
import '../data/demo_item.dart';
import '../ui/app_routes.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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

  Widget itemView(BuildContext context, DemoItem entity) {
    return ListTile(
      title: Text('${entity.title}'),
      onTap: () => {entity.showScreen(context)},
    );
  }

  Widget itemView1(BuildContext context, int pos, DemoItem entity) {
    return Card(
        color: Colors.amber[50],
        elevation: 0.5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          onTap: () => {entity.showScreen(context)},
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text(
              '${pos + 1}',
              style: const TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),
          textColor: Colors.black,
          title: Text(
            '${entity.title}',
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            '${entity.desc}',
            style: const TextStyle(color: Colors.black45),
          ),
          trailing: PopupMenuButton(
            onSelected: (value) {
              if (value == 'edit') {
                //open edit page
                // navigateToEditPage(item);
              } else if (value == 'delete') {
                //open delete page
                // deleteById(id);
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 'edit',
                  child: Text('Edit'),
                ),
                const PopupMenuItem(
                  value: 'delete',
                  child: Text('Delete'),
                ),
              ];
            },
          ),
        ));
  }

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
              return itemView1(context, index, entity);
              // return itemView(context, entity);
            },
          )),
    );
  }
}
