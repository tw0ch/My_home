import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'main.dart';
import 'icons/my_home_icons.dart';
import 'splash_screen/splash.dart';
import 'entry.dart';
import 'main.dart';
import 'chat_pg1.dart';
import 'camera.dart';
import 'my_account.dart';

class First_page extends StatefulWidget {
  const First_page({Key? key}) : super(key: key);

  @override
  State<First_page> createState() => _First_page();
}

class _First_page extends State<First_page> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/splash_screen_img/logo_splash.png",
                    height: 58.0, width: 100.0),
                Container(
                  alignment: Alignment(-3, 1),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Transform.scale(
                    scale: 0.9,
                    child: IconButton(
                      icon: Icon(My_home_icon.three_lines_icon),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 60),
            Container(
              // alignment: Alignment.center,
              width: 359,
              height: 73,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(32),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 73,
                    height: 73,
                    decoration: BoxDecoration(
                      color: Color(0xFF79D1FF),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Icon(Icons.water_drop_outlined, size: 50),
                  ),
                  SizedBox(width: 15),
                  Text("Отключение воды.",
                      style: TextStyle(fontSize: 24, fontFamily: "Inter"),
                      textAlign: TextAlign.start),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              // alignment: Alignment.center,
              width: 359,
              height: 106,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(32),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 78,
                    height: 106,
                    decoration: BoxDecoration(
                      color: Color(0xFFB64DF6),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Icon(Icons.people, size: 50),
                  ),
                  SizedBox(width: 15),
                  Text("Собрание жильцов\n24.07 в 18:00.",
                      style: TextStyle(fontSize: 24, fontFamily: "Inter"),
                      textAlign: TextAlign.start)
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              // alignment: Alignment.center,
              width: 359,
              height: 73,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(32),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 77,
                    height: 73,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFEE52),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Icon(Icons.light, size: 50),
                  ),
                  SizedBox(width: 15),
                  Text("Отключение света.",
                      style: TextStyle(fontSize: 24, fontFamily: "Inter"),
                      textAlign: TextAlign.start)
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              // alignment: Alignment.center,
              width: 359,
              height: 73,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(32),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 77,
                    height: 73,
                    decoration: BoxDecoration(
                      color: Color(0xFF5BDE68),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Icon(Icons.grass, size: 50),
                  ),
                  SizedBox(width: 15),
                  Text("21/07 Субботник.",
                      style: TextStyle(fontSize: 24, fontFamily: "Inter"),
                      textAlign: TextAlign.start)
                ],
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 172,
                  height: 79,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/event_add");
                    },
                    icon: Icon(
                      Icons.add,
                      size: 50,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF000000).withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
