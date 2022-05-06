import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../navbar.dart';

class SettingsScreen extends StatelessWidget {
  static const String id = 'settings_screen';

  final _formKey = GlobalKey<FormState>();

  final Map data = {
    'name': String,
    'email': String,
    'age': int,
  };

  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _ageFocusNode = FocusNode();

  SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Navbar(),
      appBar: AppBar(
        title: const Text('Change Account Detatils'),
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 30.0,
        ),
        child: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(label: Text('Name')),
                  onSaved: (input) => data['name'] = input,
                  keyboardType: TextInputType.text,
                  focusNode: _nameFocusNode,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Email'),
                  onSaved: (input) => data['email'] = input,
                  keyboardType: TextInputType.emailAddress,
                  focusNode: _emailFocusNode,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Age'),
                  onSaved: (input) => data['age'] = input,
                  keyboardType: TextInputType.number,
                  focusNode: _ageFocusNode,
                ),
                TextButton(
                  //Чтобы передать данные, нам нужно будет получить доступ к Provider нашему методу, который был передан в Data классе. Пересмотрите settings_screen.dart

                  //To pass data up, we will need to access the Provider use our method that was passed down in the Data class. Revisit settings_screen.dart:
                  onPressed: () {
                    _formKey.currentState?.save();
                    Provider.of<Data>(context, listen: false).updateAccount(data);
                    _formKey.currentState?.reset();
                  },
                  child: const Text('Submit'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                  ),
                ),
              ],
            )),
      )),
    );
  }
}
