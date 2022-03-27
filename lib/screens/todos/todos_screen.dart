import 'package:flutter/material.dart';
import 'package:mobx_practice/widgets/app_bar_widget.dart';
import 'package:mobx_practice/widgets/navigation_drawer_widget.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(
        title: "Todos",
      ),
      drawer: NavigationDrawerWidget(),
      body: Center(
        child: Text("Todos"),
      ),
    );
  }
}
