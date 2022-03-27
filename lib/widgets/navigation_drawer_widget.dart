import 'package:flutter/material.dart';
import 'package:mobx_practice/screens/counter/counter_screen.dart';
import 'package:mobx_practice/screens/dice_counter/dice_counter_screen.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  final padding = const EdgeInsets.symmetric(horizontal: 20.0);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: const Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 48,
            ),
            buildMenuItem(
                title: "Counter",
                icon: Icons.add_box,
                onTap: () => selectedItem(context, 0)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                title: "Dice Counter",
                icon: Icons.medication,
                onTap: () => selectedItem(context, 1))
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String title,
    required IconData icon,
    VoidCallback? onTap,
  }) {
    const color = Colors.white;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        title,
        style: const TextStyle(color: color),
      ),
      onTap: onTap,
    );
  }

  selectedItem(BuildContext context, int i) {
    Navigator.of(context).pop();

    switch (i) {
      case 0:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const CounterScreen()));
        break;
      case 1:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const DiceCounterScreen()));
        break;
    }
  }
}
