import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_practice/screens/dice_counter/dice_counter.dart';
import 'package:mobx_practice/widgets/app_bar_widget.dart';
import 'package:mobx_practice/widgets/navigation_drawer_widget.dart';

final diceCounter = DiceCounter();

class DiceCounterScreen extends StatelessWidget {
  const DiceCounterScreen({Key? key}) : super(key: key);

  final String title = "Dice Counter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBarWidget(
        title: title,
        color: Colors.black,
        backgroundColor: Colors.amberAccent,
      ),
      drawer: const NavigationDrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: TextButton(
                        onPressed: diceCounter.roll,
                        child: Observer(
                          builder: (_) => Image.asset(
                              'assets/images/dice/dice${diceCounter.left}.png'),
                        ))),
                Expanded(
                    child: TextButton(
                        onPressed: diceCounter.roll,
                        child: Observer(
                          builder: (_) => Image.asset(
                              'assets/images/dice/dice${diceCounter.right}.png'),
                        )))
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(16),
                child: Observer(
                    builder: (_) => Text(
                          'Total ${diceCounter.total}',
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                              fontFamily: 'Verdana'),
                        )))
          ],
        ),
      ),
    );
  }
}
