import 'package:flutter/material.dart';
import 'package:mobx_practice/widgets/navigation_drawer_widget.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
      ),
      drawer: NavigationDrawerWidget(),
      body: Center(
        child: Text("Todos"),
      ),
    );
  }
}
