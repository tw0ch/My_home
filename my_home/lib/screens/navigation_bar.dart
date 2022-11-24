import 'package:flutter/material.dart';
import 'package:my_home/screens/screens.dart';

class Navigation_bar extends StatefulWidget {
  const Navigation_bar({Key? key}) : super(key: key);

  @override
  State<Navigation_bar> createState() => _Navigation_barState();
}

class _Navigation_barState extends State<Navigation_bar> {
  int selectedPage = 1;
  static const List<Widget> widgetOptions = <Widget>[
    MyHome(),
    MainPage(),
    TSJconnect(),
  ];
  void onSelectTab(int index) {
    if (selectedPage == index) return;
    setState(
          () {
        selectedPage = index;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF8FBFF),
        bottomNavigationBar: Container(
          color: const Color(0xFFF8FBFF),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: GNav(
              backgroundColor: const Color(0xFFF8FBFF),
              color: const Color(0xFF8F939E),
              activeColor: const Color(0xFFFFFFFF),
              tabBackgroundColor: Color(0xFF456786),
              tabBorderRadius: 100,
              iconSize: 30,
              gap: 8,
              padding: EdgeInsets.all(16),
              duration: Duration(milliseconds: 350),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: "МойДом",
                ),
                GButton(
                  icon: Icons.home,
                  text: "Главная",
                ),
                GButton(
                  icon:  Icons.chat,
                  text: "Связь с ТСЖ",
                ),
              ],
              selectedIndex: selectedPage,
              onTabChange: onSelectTab,
            ),
          ),
        ),
        body: Center(child: widgetOptions[selectedPage])
    );
  }
}