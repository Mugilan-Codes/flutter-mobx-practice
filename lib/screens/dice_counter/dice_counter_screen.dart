import 'package:flutter/material.dart';
import 'package:mobx_practice/widgets/navigation_drawer_widget.dart';

class DiceCounterScreen extends StatelessWidget {
  const DiceCounterScreen({Key? key}) : super(key: key);

  final String title = "Dice Counter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: const NavigationDrawerWidget(),
      body: Center(
        child: Text('Dice Counter'),
      ),
    );
  }
}
