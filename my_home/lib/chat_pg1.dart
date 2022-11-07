import 'package:flutter/material.dart';
import 'main.dart';
import 'icons/my_home_icons.dart';
import 'splash_screen/splash.dart';
import 'entry.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC8D9E2),
      body: Column(children: [
        Stack(alignment: Alignment(-0.8, -0.6), children: [
          Transform.scale(
              scale: 1.1,
              child: Image.asset("assets/img/image1.png", width: 900.0)),
          Transform.scale(
              scale: 1.1,
              child: Image.asset("assets/splash_screen_img/logo_splash.png",
                  height: 150.0, width: 100.0)),
        ]),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 20),
            Container(
              alignment: Alignment.center,
              width: 50,
              height: 50,
              child: Text("Ж",
                  style: TextStyle(fontSize: 15, fontFamily: "Inter")),
              decoration: BoxDecoration(
                color: Color(0xFFCBCBCB),
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
            SizedBox(width: 20),
            Container(
              alignment: Alignment.center,
              width: 50,
              height: 50,
              child: Text(
                "Ук",
                style: TextStyle(fontSize: 15, fontFamily: "Inter"),
              ),
              decoration: BoxDecoration(
                color: Color(0xFFC8D9E2),
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 100),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 20),
            Container(
              alignment: Alignment.center,
              width: 270,
              height: 93,
              child: Text(
                  "Здравствуйте, поздравляем\nВас с заселением в наш\nжилой комплекс!",
                  style: TextStyle(fontSize: 16, fontFamily: "Inter")),
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(width: 20),
            Container(
              alignment: Alignment.center,
              width: 180,
              height: 60,
              child: Text("Спасибо!",
                  style: TextStyle(fontSize: 16, fontFamily: "Inter")),
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Align(
          alignment: Alignment(0, 0),
          child: Container(
            alignment: Alignment(0.9, 0),
            width: 350,
            height: 60,
            child: Icon(
              Icons.send_outlined,
              size: 30,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        )
      ]),
    );
  }
}
