import 'package:flutter/material.dart';
import 'package:flutter_login/login_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        // login
        LoginScreen.routeName: (context) => LoginScreen(),
        // home
        HomeScreen.routeName: (context) => HomeScreen(title: "Home"),
      },
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
