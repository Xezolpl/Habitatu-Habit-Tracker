import 'package:flutter/material.dart';

/* Scaffold with safe area */
class AppScaffold extends StatelessWidget {
  final Widget body;
  final Widget? drawer;
  final AppBar? appBar;
  final BottomNavigationBar? bottomNavBar;

  const AppScaffold({
    required this.body,
    this.appBar,
    this.bottomNavBar,
    Key? key,
    this.drawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: SafeArea(
        //For iPhone11,12 bottoms
        bottom: false,
        child: body,
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }
}
