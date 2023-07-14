import 'package:flutter/material.dart';
import '../../ui/listview/list1.dart';
import '../../ui/listview/list2.dart';
import '../../ui/listview/list3.dart';
import '../../ui/listview/list_demo.dart';

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

Widget? screenOf(String screenName) {
  switch (screenName) {
    // case "login":
    //   return Login();
    // case "dashboard":
    //   return Dashboard();
    // case "json":
    //   return JsonPage();
    // case "json1":
    //   return jsonlocal1();
    // case "profile":
    //   return Profile1();
    case "list":
      return ListDataDemo();
    case "list1":
      return List1();
    case "list2":
      return List2();
    case "list3":
      return List3();
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
