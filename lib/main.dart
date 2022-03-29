import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_practice/screens/counter/counter_screen.dart';
import 'package:mobx_practice/theme_store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(
          create: (_) => ThemeStore(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeStore = Provider.of<ThemeStore>(context);

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
