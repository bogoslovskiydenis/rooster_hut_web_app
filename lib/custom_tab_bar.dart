import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  CustomTabBar({required this.controller, required this.tabs});

  final TabController controller;
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    double screeeWidth = MediaQuery.of(context).size.width;
    double tabBarScaling = screeeWidth > 1400
        ? 0.21
        : screeeWidth > 1100
            ? 0.3
            : 0.4;
    return Container(
      width: screeeWidth * tabBarScaling,
      child: Theme(
        data: ThemeData(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent),
        child: TabBar(controller: controller, tabs: tabs, indicatorColor: Colors.amber,),
      ),
    );
  }
}
