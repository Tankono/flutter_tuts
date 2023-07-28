import 'package:flutter/material.dart';
import 'package:flutter_tuts/ui/route_utils.dart';

class DemoItem {
  String? title;
  String? desc;
  String? screenName;
  String? widgetName;

  Widget? screen;

  DemoItem();
  DemoItem.from(this.title, this.screenName);

  showScreen(BuildContext context) {
    Widget src = screenOf(screenName!)!;
    nav(context, src);
  }

  static List<DemoItem> getList() {
    List<DemoItem> data = List.empty(growable: true);
    DemoItem item = DemoItem();

    item.title = "Login";
    item.desc = "A screen for login app";
    item.screenName = "login";
    data.add(item);

    item = DemoItem();
    item.title = "Sign Up";
    item.desc = "A screen for login app";
    item.screenName = "signUp";
    data.add(item);

    item = DemoItem();
    item.title = "Forgot password";
    item.desc = "A screen for login app";
    item.screenName = "forgotpass";
    data.add(item);

    item = DemoItem();
    item.title = "Profile";
    item.desc = "A screen for login app";
    item.screenName = "profile";
    data.add(item);

    item = DemoItem();
    item.title = "Change password";
    item.desc = "A screen for login app";
    item.screenName = "forgotpass";
    data.add(item);

    item = DemoItem();
    item.title = "DashBoard";
    item.desc = "A screen for login app";
    item.screenName = "home";
    data.add(item);

    item = DemoItem();
    item.title = "JSon Local";
    item.desc = "A screen for login app";
    item.screenName = "json";
    data.add(item);

    item = DemoItem();
    item.title = "Shop";
    item.desc = "A screen for login app";
    item.screenName = "shop";
    data.add(item);

    item = DemoItem();
    item.title = "API request";
    item.desc = "A screen for login app";
    item.screenName = "json1";
    item.widgetName = "jsonlocal1";
    data.add(item);

    item = DemoItem();
    item.title = "Grid Data";
    item.desc = "A screen for login app";
    item.screenName = "grid";
    item.widgetName = "jsonlocal1";
    data.add(item);

    item = DemoItem();
    item.title = "List Data";
    item.desc = "A screen for login app";
    item.screenName = "list";
    data.add(item);

    return data;
  }
}
