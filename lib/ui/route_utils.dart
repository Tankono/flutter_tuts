import 'package:flutter/material.dart';

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
    // case "shop":
    //   return MyHomePage(
    //     title: "aaaa",
    //   );
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
