import '../../api/api.dart';
import '../../data/PostModel.dart';
import '../../ui/listview/base_list.dart';
import 'package:flutter/material.dart';

class List3 extends StatefulWidget {
  const List3({super.key});

  @override
  State<List3> createState() => _List3State();
}

class _List3State extends ListPageState<PostModel, List3> {
  @override
  Future<List<PostModel>> loadData() async {
    List<PostModel> items = await api.doRequest();
    return items;
  }

  @override
  Widget itemView(PostModel entity) {
    return Card(
      // key: ValueKey(_items[index]["id"]),
      margin: const EdgeInsets.all(5),
      color: Colors.amber.shade100,
      child: ListTile(
        leading: Text('${entity.title}'),
        // title: Text(_items[index]["name"]),
        // subtitle: Text(_items[index]["description"]),
      ),
    );
  }
}
