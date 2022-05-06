import 'package:flutter/material.dart';
import '../navbar.dart';

class AccountScreen extends StatelessWidget {


  static const String id = 'account_screen';

  const AccountScreen({Key? key}) : super(key: key);

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
          children: const <Widget> [
            Text('Name: '),
            Text('Email: '),
            Text('Age: '),
          ],
        ),
      ),
    );
  }
}
