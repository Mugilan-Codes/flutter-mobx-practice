import 'package:flutter/material.dart';
import 'package:mobx_practice/widgets/app_bar_widget.dart';
import 'package:mobx_practice/widgets/navigation_drawer_widget.dart';

// TODO: implement Todos MobX Example - https://mobx.netlify.app/examples/todos

class TodosScreen extends StatelessWidget {
  const TodosScreen({Key? key}) : super(key: key);

  final String routeName = '/todos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "Todos",
      ),
      drawer: const NavigationDrawerWidget(),
      body: const Center(
        child: Text("Todos"),
      ),
    );
  }
}
