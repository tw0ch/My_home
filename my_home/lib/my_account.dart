import 'package:flutter/material.dart';
import 'icons/registration_icons_icons.dart';
import 'icons/my_home_icons.dart';
import 'entry.dart';
import 'registration.dart';
import 'main.dart';
import 'chat_pg1.dart';

class My_account extends StatefulWidget {
  const My_account({Key? key}) : super(key: key);

  @override
  State<My_account> createState() => _My_account();
}

class _My_account extends State<My_account> {
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
              ]),
              SizedBox(height: 18),
              Container(
                width: 355,
                height: 280,
                decoration: BoxDecoration(
                  color: Color(0xFFAEE3FF),
                  borderRadius: BorderRadius.circular(29),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.center,
                      width: 259,
                      height: 30,
                      child: Text(
                        "test",
                        style: TextStyle(fontSize: 15, fontFamily: "Inter"),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(29),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.center,
                      width: 145,
                      height: 145,
                      child: Icon(Icons.photo),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.center,
                      width: 259,
                      height: 64,
                      child: Text(
                        '"о себе"',
                        style: TextStyle(fontSize: 15, fontFamily: "Inter"),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(29),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Container(
                      width: 362,
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.person_outline_outlined, size: 30),
                          SizedBox(width: 10),
                          Text("Изменить профиль",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Inter",
                              )),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(29),
                      )),
                  SizedBox(height: 10),
                  Container(
                      alignment: Alignment.center,
                      width: 362,
                      height: 45,
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.notifications, size: 30),
                          SizedBox(width: 10),
                          Text("Уведомления",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Inter",
                              )),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(29),
                      )),
                  SizedBox(height: 10),
                  Container(
                      alignment: Alignment.center,
                      width: 362,
                      height: 45,
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.person_add_sharp, size: 30),
                          SizedBox(width: 10),
                          Text("Сосед рядом",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Inter",
                              )),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(29),
                      )),
                  SizedBox(height: 10),
                  Container(
                      alignment: Alignment.center,
                      width: 362,
                      height: 45,
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.home_outlined, size: 30),
                          SizedBox(width: 10),
                          Text("Изменить адрес",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Inter",
                              )),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(29),
                      )),
                  SizedBox(height: 10),
                  Container(
                      alignment: Alignment.center,
                      width: 362,
                      height: 45,
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.touch_app_outlined, size: 30),
                          SizedBox(width: 10),
                          Text("Вызвать тех. специалиста",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Inter",
                              )),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFAEE3FF),
                        borderRadius: BorderRadius.circular(29),
                      )),
                ],
              )
            ]))));
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Color(0xFFAAECB1),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
