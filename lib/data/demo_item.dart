import 'package:flutter/material.dart';
import '../ui/app_routes.dart';

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
}
