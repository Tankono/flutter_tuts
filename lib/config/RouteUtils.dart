import 'package:flutter/material.dart';
import 'package:flutter_tuts/ui/home/home_screen.dart';
import '../../ui/listview/list1.dart';
import '../../ui/listview/list2.dart';
import '../../ui/listview/list3.dart';
import '../../ui/listview/list_demo.dart';
import 'package:login_flutter/ui/login.dart';
import 'package:login_flutter/ui/signup.dart';
import 'package:flutter_finance_app/pages/transection_page.dart';
import 'package:u_shop/main.dart';

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
    case "login":
      return const Login();
    case "signUp":
      return const Signup();
    case "home":
      return const HomeScreen();
    // case "json1":
    //   return jsonlocal1();
    case "profile":
      return const TransectionPage();
    case "list":
      return ListDataDemo();
    case "list1":
      return const List1();
    case "list2":
      return List2();
    case "list3":
      return const List3();
    case "shop":
      return MyHomePage(
        title: "aaaa",
      );
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
