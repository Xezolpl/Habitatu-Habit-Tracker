import 'package:flutter/material.dart';

abstract class AppBarBuilder {
  static AppBar buildAppBar(
    String title, {
    List<Widget> actions = const [],
    Widget? leading,
    Widget? customTitle,
    bool defaultLeading = true,
    bool centerTitle = false,
  }) {
    return AppBar(
      centerTitle: centerTitle,
      title: customTitle ?? Text(title),
      actions: actions,
      leading: leading,
      automaticallyImplyLeading: defaultLeading,
    );
  }
}
