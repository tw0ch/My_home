import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_home/screens/screens.dart';
import 'package:lottie/lottie.dart';
import 'package:delayed_display/delayed_display.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({Key? key}) : super(key: key);

  @override
  State<EntryPage> createState() => _EntryPage();
}

class _EntryPage extends State<EntryPage> {
  // late AnimationController lottieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(Duration(seconds: 5), () {
    //   Navigator.push(context, MaterialPageRoute(builder: (_) => Login_form()));
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // height: double.infinity,
          width: double.infinity,
          child: Lottie.asset(
            'assets/lottie/my_house.json',
            fit: BoxFit.cover,
            repeat: false,
          ),
        ),
        DelayedDisplay(
          delay: Duration(seconds: 1),
          child: Login_page(),
        ),
      ],
    );
  }
}

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {

  static const int _width_of_form = 10;
  static const double _high_of_form = 5.5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(height: 20),
                Icon(
                  My_home_logo.my_home_logo_icon,
                  size: 75,
                  color: Colors.white,
                ),
                SizedBox(height: 9),
                Text(
                  "МойДом",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "MontserratAlternates",
                    fontSize: 35,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Добро\nпожаловать",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 34,
                    fontFamily: "Manrope",
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF284A68),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          MediaQuery.of(context).size.width / _width_of_form),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 12),
                          Text(
                            "Логин",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF284A68),
                            ),
                          ),
                        ],
                      ),
                      _FormLoginWidget(),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          MediaQuery.of(context).size.width / _width_of_form),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Пароль",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF284A68),
                            ),
                          ),
                        ],
                      ),
                      _FormPasswordWidget(),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF456786),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(
                        MediaQuery.of(context).size.width -
                            (MediaQuery.of(context).size.width /
                                _width_of_form *
                                2),
                        60), //////// HERE
                  ),
                  child: const Text(
                    'Войти',
                    style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          MediaQuery.of(context).size.width / _width_of_form),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Забыли пароль?",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF284A68),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Timer(
                          //   Duration(milliseconds: 25),
                          //   () {
                          //     Navigator.push(
                          //       context,
                          //       PageRouteBuilder(
                          //         pageBuilder:
                          //             (context, animation1, animation2) =>
                          //                 Registration_page(),
                          //         transitionDuration: Duration.zero,
                          //         reverseTransitionDuration: Duration.zero,
                          //       ),
                          //     );

                          //   },
                          // );
                          Navigator.pushNamed(context, "/registration");
                        },
                        child: Text(
                          "Создать акааунт",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF284A68),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / _high_of_form,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _FormLoginWidget extends StatefulWidget {
  const _FormLoginWidget({Key? key}) : super(key: key);

  @override
  State<_FormLoginWidget> createState() => __FormLoginWidgetState();
}

class __FormLoginWidgetState extends State<_FormLoginWidget> {
  final _loginTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _loginTextController,
      obscureText: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
      ),
    );
  }
}

class _FormPasswordWidget extends StatefulWidget {
  const _FormPasswordWidget({Key? key}) : super(key: key);

  @override
  State<_FormPasswordWidget> createState() => __FormPasswordWidget();
}

class __FormPasswordWidget extends State<_FormPasswordWidget> {
  final _passowordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _passowordTextController,
      obscureText: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
