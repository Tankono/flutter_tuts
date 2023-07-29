import 'package:flutter/material.dart';
import 'package:flutter_tuts/data/demo_item.dart';
import 'package:flutter_tuts/ui/inputs/input_page.dart';
import 'package:flutter_tuts/ui/inputs/input_page1.dart';
import 'package:flutter_tuts/ui/inputs/input_page2.dart';
import 'package:flutter_tuts/ui/login/login.dart';
import 'package:flutter_tuts/ui/login/login3.dart';
import 'package:flutter_tuts/ui/login/login_page1.dart';
import 'package:flutter_tuts/ui/login/login_page2.dart';

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

  item.title = "Input Demo";
  item.desc = "A screen for login app";
  item.screenName = "input";
  data.add(item);

  item = DemoItem();
  item.title = "Input 1";
  item.desc = "A screen for login app";
  item.screenName = "input1";
  data.add(item);

  item = DemoItem();
  item.title = "Valid Input";
  item.desc = "A screen for login app";
  item.screenName = "input2";
  data.add(item);

  item = DemoItem();
  item.title = "Login";
  item.desc = "A screen for login app";
  item.screenName = "login";
  data.add(item);

  item = DemoItem();
  item.title = "Login1";
  item.desc = "A screen for login app";
  item.screenName = "login1";
  data.add(item);

  item = DemoItem();
  item.title = "Login2";
  item.desc = "A screen for login app";
  item.screenName = "login2";
  data.add(item);

  item = DemoItem();
  item.title = "Login 2";
  item.desc = "A screen for login app";
  item.screenName = "login2";
  data.add(item);

  return data;
}

Widget? screenOf(String screenName) {
  switch (screenName) {
    case "input":
      return InputPage();
    case "input1":
      return InputPage1();
    case "input2":
      return InputPage2();
    case "login":
      return Login();
    case "login1":
      return LoginPage1();
    case "login2":
      return LoginPage2();
    case "login3":
      return Login3();
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
