import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_practice/screens/counter/counter_screen.dart';
import 'package:mobx_practice/theme_store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final ThemeStore themeStore = ThemeStore();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter MobX Demo',
        theme: themeStore.currentThemeData,
        home: const CounterScreen(),
      );
    });
  }
}
