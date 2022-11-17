import 'package:my_home/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/entry",
      routes: {
        "/": (context) => const Navigation_bar(),
        "/entry": (context) => const EntryPage(),
        "/registration": (context) => const RegistrationPage(),
        "/registration/registration_end": (context) => const RegistrationPage2(),
      },
    ),
  );
}
