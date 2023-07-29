import 'package:flutter/material.dart';

class AppIcons {
  AppIcons._();
  static const String _assetsPath = "assets/images";
  static Image assets(String name) {
    return Image.asset("$_assetsPath/logo.png");
  }

  static get logo => assets("logo.png");
}
