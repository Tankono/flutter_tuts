import 'package:flutter/material.dart';
import 'package:flutter_tuts/data/demo_item.dart';
import 'package:flutter_tuts/ui/todos/todos_page.dart';

nav(BuildContext context, Widget widget) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ),
  );
}

List<DemoItem> getList() {
  List<DemoItem> data = List.empty(growable: true);
  DemoItem item = DemoItem();

  item.title = "Todo List";
  item.desc = "A Basic todos";
  item.screenName = "todo";
  data.add(item);

  item = DemoItem();
  item.title = "Todo Sqlite";
  item.desc = "A Basic todos";
  item.screenName = "todo1";
  data.add(item);

  // item = DemoItem();
  // item.title = "Valid Input";
  // item.desc = "A screen for login app";
  // item.screenName = "input2";
  // data.add(item);

  return data;
}

Widget? screenOf(String screenName) {
  switch (screenName) {
    case "todo":
      return TodoList(title: "demo");
    // case "input1":
    //   return InputPage1();
    // case "input2":
    //   return InputPage2();
    // case "login":
    //   return Login();
    // case "login1":
    //   return LoginPage1();
    // case "login2":
    //   return LoginPage2();
    // case "login3":
    //   return Login3();
    default:
      return null;
  }
}

delay() async {
  String str = "trung";
  print("hehe...$str");

  await Future.delayed(const Duration(milliseconds: 5000), () {
    // Do something
    str = "trungtt";
  });
  print("hehe...$str");
}
