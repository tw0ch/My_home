import 'package:flutter/material.dart';
import 'icons/registration_icons_icons.dart';
import 'main.dart';
import 'icons/my_home_icons.dart';
import 'splash_screen/splash.dart';
import 'entry.dart';
import 'registration.dart';
import 'main.dart';

class Event_add extends StatefulWidget {
  const Event_add({Key? key}) : super(key: key);

  @override
  State<Event_add> createState() => _Event_add();
}

class _Event_add extends State<Event_add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFC8D9E2),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: SafeArea(
                child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Image.asset("assets/splash_screen_img/logo_splash.png",
                    height: 58.0, width: 100.0),
                Container(
                    alignment: Alignment(0, 0),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Transform.scale(
                        scale: 1.2,
                        child: IconButton(
                          icon: Icon(My_home_icon.home_icon),
                          onPressed: () {
                            Navigator.pushNamed(context, "/");
                          },
                        )))
              ]),
              SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 77,
                          height: 73,
                          child: Icon(Icons.light, size: 50),
                          decoration: BoxDecoration(
                              color: Color(0xFFFFEE52),
                              borderRadius: BorderRadius.circular(32)),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 77,
                          height: 73,
                          child: Icon(Icons.people, size: 50),
                          decoration: BoxDecoration(
                              color: Color(0xFFB64DF6),
                              borderRadius: BorderRadius.circular(32)),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 77,
                          height: 73,
                          child: Icon(Icons.water_drop_outlined, size: 50),
                          decoration: BoxDecoration(
                              color: Color(0xFF79D1FF),
                              borderRadius: BorderRadius.circular(32)),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 77,
                          height: 73,
                          child: Icon(Icons.grass, size: 50),
                          decoration: BoxDecoration(
                              color: Color(0xFF5BDE68),
                              borderRadius: BorderRadius.circular(32)),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 77,
                          height: 73,
                          child: Icon(Icons.plus_one_rounded, size: 50),
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(32)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 260,
                          height: 248,
                          alignment: Alignment(-0.5, -0.8),
                          child: Text("Введите текст объявления..."),
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(32)),
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: 226,
                          height: 58,
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Отправить"),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(32)),
                        ),
                      ],
                    )
                  ]),
            ]))));
  }
}
