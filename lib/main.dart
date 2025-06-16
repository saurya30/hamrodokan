import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

//created our class named App
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // material app is starting point of our app
      themeMode: ThemeMode.system,
      theme: ThemeData(),
      darkTheme: ThemeData(),
    );
  }
}
