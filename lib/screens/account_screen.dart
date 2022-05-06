import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import '../navbar.dart';

class AccountScreen extends StatelessWidget {


  static const String id = 'account_screen';

  const AccountScreen({Key? key}) : super(key: key);

//Revisit account_screen.dart
// add package provider for this screen 
// add Provider.of<Map>(context)['somedata'].toString() for each line
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Navbar(),
      appBar: AppBar(
        title: const Text('Account Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget> [
           // Поскольку мы изменили наш Provider тип, нам нужно обновить наши вызовы к нему. Пересмотрите account_screen.dart:
           //Since we changed our Provider type, we need to update our calls to it. Revisit account_screen.dart:
            Text('Name: ' + Provider.of<Data>(context).data['name'].toString()),
            Text('Email: ' + Provider.of<Data>(context).data['email']),
            Text('Age: ' + Provider.of<Data>(context).data['age'].toString()),
          ],
        ),
      ),
    );
  }
}
