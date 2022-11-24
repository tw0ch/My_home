import 'package:my_home/screens/entry_page/entry_page.dart';
import 'package:my_home/screens/navigation_bar.dart';
import 'package:my_home/screens/profile_page/profile_page.dart';
import 'package:my_home/screens/registration_page/registration_end_page.dart';
import 'package:my_home/screens/registration_page/registration_page.dart';
import 'package:my_home/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/entry",
      routes: {
        "/": (context) => const Navigation_bar(),
        "/entry": (context) => const  EntryPage(),
        "/registration": (context) => const RegistrationPage(),
        "/registration/registration_end": (context) => const RegistrationPage2(),
        '/profile': (context) => const ProgilePage(),
      },
    ),
  );
}
