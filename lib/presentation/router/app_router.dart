import 'package:flutter/material.dart';
import 'package:flutter_navigator/presentation/screens/home_screen.dart';
import 'package:flutter_navigator/presentation/screens/second_screen.dart';

class AppRouter {
  Route? onGenerateRout(RouteSettings settings) {
    // final GlobalKey<ScaffoldState> key = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => HomeScreen(
                  // key: key,
                  title: "Home Screen",
                  color: Colors.blueAccent,
                ));
      case '/second':
        return MaterialPageRoute(
            builder: (_) => SecondScreen(
                  // key: key,
                  title: "Second Screen",
                  color: Colors.redAccent,
                ));
      default:
        return null;
    }
  }
}
