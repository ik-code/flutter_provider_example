import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/account_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

//Настройка provider потребует обернуть наш MaterialApp в Provider с типом наших данных.
//Setting up a provider will require wrapping our MaterialApp in a Provider with the type of our data.
class _MyAppState extends State<MyApp> {
  Map data = {
    'name': 'Igor K',
    'email': 'example@mail.com',
    'age': 35,
  };
//Карта data теперь доступна на всех остальных экранах и виджетах, которые main.dart вызывают и импортируют provider пакет.

// Все, что мы передали нашему Provider создателю, теперь доступно на Provider.of<Map>(context). Обратите внимание, что тип, который вы передаете, должен соответствовать типу данных, которые мы Provider ожидаем.
//The data map is now available in every other screen and widget that main.dart calls and imports the provider package.

// Everything we passed to our Provider creator is now available on Provider.of<Map>(context). Note that the type you pass in must match the type of data our Provider is expecting.

  @override
  Widget build(BuildContext context) {
    //Настройка provider потребует обернуть наш MaterialApp в Provider с типом наших данных.
    return Provider<Map>(
      create: ((context) => data),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const AccountScreen(),
        routes: {
          'account_screen': (context) => const AccountScreen(),
          'settings_screen': (context) => SettingsScreen(),
        },
      ),
    );
  }
}
