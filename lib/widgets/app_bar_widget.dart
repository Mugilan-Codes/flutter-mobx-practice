import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarWidget(
      {Key? key,
      required this.title,
      this.height = kToolbarHeight,
      this.color = Colors.white,
      this.backgroundColor = Colors.blue})
      : super(key: key);

  final String title;
  final double height;
  final Color? color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: color),
      title: Text(title, style: TextStyle(color: color)),
      backgroundColor: backgroundColor,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
