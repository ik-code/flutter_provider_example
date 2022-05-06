import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
            Text('Name: ' + Provider.of<Map>(context)['name'].toString()),
            Text('Email: ' + Provider.of<Map>(context)['email']),
            Text('Age: ' + Provider.of<Map>(context)['age'].toString()),
          ],
        ),
      ),
    );
  }
}
