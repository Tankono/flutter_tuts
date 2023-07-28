import '../../api/api.dart';
import '../../data/JsonHelper.dart';
import '../../data/PostModel.dart';
import '../../data/ProductDataModel.dart';
import 'package:flutter/material.dart';

class List4 extends StatefulWidget {
  const List4({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<List4> {
  Json<ProductDataModel> jb = Json<ProductDataModel>(ProductDataModel.new);

  Widget itemView(PostModel entity) {
    return ListTile(
      title: Text('$entity'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Json from Assets, delay 2 seconds',
          ),
        ),
        body: FutureBuilder(
          future: api.doRequest(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(child: Text("${data.error}"));
            } else if (data.hasData) {
              var items = data.data as List<PostModel>;

              return ListView.builder(
                  itemCount: items == null ? 0 : items.length,
                  itemBuilder: (context, index) {
                    var item = items[index];
                    return itemView(item);
                  });
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
