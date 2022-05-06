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
  @override
  Widget build(BuildContext context) {
    //Нам нужно изменить Provider на a ChangeNotifierProvider и вместо этого передать экземпляр нашего Data класса
    //we need to change Providere to a ChangeNotifierProvider and pass in an instance of our Data class instead.

    return ChangeNotifierProvider<Data>(
      create: ((context) => Data()),
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
//Теперь мы передаем целый класс, а не одну переменную, это означает, что мы можем начать создавать методы, которые могут манипулировать нашими данными, которые также будут доступны всем, кто обращается к Provider.
//Now we’re passing down a whole class and not just a single variable, this means that we can start creating methods that can manipulate our data, which will also be available to everything that accesses Provider.
class Data extends ChangeNotifier {
  Map data = {
    'name': 'Igor K',
    'email': 'example@mail.com',
    'age': 35,
  };

  void updateAccount(input) {
    data = input;
    notifyListeners();
  }
}
