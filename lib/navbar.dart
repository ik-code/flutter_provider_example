import 'package:flutter/material.dart';
import './screens/account_screen.dart';
import './screens/settings_screen.dart';

class Navbar extends StatelessWidget {
const Navbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(onPressed: (() => Navigator.pushReplacementNamed(context, AccountScreen.id)), 
          child: const Icon(Icons.account_circle, color: Colors.white)
          ),
          TextButton(onPressed: (() => Navigator.pushReplacementNamed(context, SettingsScreen.id)), 
          child: const Icon(Icons.settings, color: Colors.white),
          ),
        ],
      ),
    );
  }
}