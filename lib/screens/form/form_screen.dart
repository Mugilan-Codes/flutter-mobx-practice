import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_practice/screens/form/form_store.dart';
import 'package:mobx_practice/widgets/app_bar_widget.dart';
import 'package:mobx_practice/widgets/navigation_drawer_widget.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final FormStore store = FormStore();

  @override
  void initState() {
    super.initState();
    store.setupValidations();
  }

  @override
  void dispose() {
    store.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Form"),
      drawer: const NavigationDrawerWidget(),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Observer(
                builder: (_) => TextFormField(
                  onChanged: (value) => store.name = value,
                  decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Pick a username",
                      errorText: store.error.username),
                ),
              ),
              Observer(
                builder: (_) => AnimatedOpacity(
                  opacity: store.isUserCheckPending ? 1 : 0,
                  duration: const Duration(microseconds: 300),
                  child: const LinearProgressIndicator(),
                ),
              ),
              Observer(
                builder: (_) => TextFormField(
                  onChanged: (value) => store.email = value,
                  decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter your email",
                      errorText: store.error.email),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Observer(
                builder: (_) => TextFormField(
                  obscureText: true,
                  onChanged: (value) => store.password = value,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Set your password",
                      errorText: store.error.password),
                ),
              ),
              ElevatedButton(
                child: const Text("Sign Up"),
                onPressed: store.validateAll,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
