import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_practice/theme_store.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  AppBarWidget(
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

  final ThemeStore themeStore = ThemeStore();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: color),
      title: Text(title, style: TextStyle(color: color)),
      backgroundColor: backgroundColor,
      centerTitle: true,
      actions: [
        Observer(
          builder: (_) => IconButton(
            icon: themeStore.isDark
                ? const Icon(Icons.brightness_5)
                : const Icon(Icons.brightness_3),
            onPressed: () {
              themeStore.toggleTheme();
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
