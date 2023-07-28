import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../data/JsonHelper.dart';
import '../../data/PostModel.dart';

FetchJSON() async {
  const url = "https://jsonplaceholder.typicode.com/posts";

  final http.Response response = await http.get(
    Uri.parse(url),
    headers: {"Accept": "application/json"},
  );

  if (response.statusCode == 200) {
    String responseBody = response.body;
    var responseJSON = json.decode(responseBody);
    print('response: $responseBody');
  } else {
    print('Something went wrong. \nResponse Code : ${response.statusCode}');
  }
}

class api {
  static Future<List<PostModel>> doRequest() async {
    const url = "https://jsonplaceholder.typicode.com/posts";
    final jb = Json<PostModel>(PostModel.new);

    List<PostModel> result = [];

    final http.Response response = await http.get(
      Uri.parse(url),
      headers: {"Accept": "application/json"},
    );

    if (response.statusCode == 200) {
      String responseBody = response.body;
      var responseJSON = json.decode(responseBody);
      result = await jb.parseList(responseJSON);
    } else {
      print('Something went wrong. \nResponse Code : ${response.statusCode}');
    }

    // print('result $result');

    return result;
  }
}
