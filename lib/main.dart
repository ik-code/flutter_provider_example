import 'package:flutter/material.dart';
import 'screens/account_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp( MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Provider Demo',
//       home: MyHomePage(),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AccountScreen(),
      routes: {
        'account_screen': (context) => const AccountScreen(),
        'settings_screen': (context) => SettingsScreen(),
      },
    );
  }
}
