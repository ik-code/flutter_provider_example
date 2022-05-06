import 'package:flutter/material.dart';

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
                  onPressed: () => _formKey.currentState?.save(),
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
