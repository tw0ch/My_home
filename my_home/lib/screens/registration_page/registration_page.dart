import 'package:flutter/material.dart';
import 'package:my_home/screens/screens.dart';
import 'package:lottie/lottie.dart';
import 'package:delayed_display/delayed_display.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPage();
}

class _RegistrationPage extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // height: double.infinity,
          width: double.infinity,
          child: Lottie.asset(
            'assets/lottie/reg_form_in1.json',
            fit: BoxFit.cover,
            repeat: false,
          ),
        ),
        DelayedDisplay(
          delay: Duration(seconds: 1),
          child: Reg_form_1(),
        ),
      ],
    );
  }
}

class Reg_form_1 extends StatefulWidget {
  const Reg_form_1({Key? key}) : super(key: key);

  @override
  State<Reg_form_1> createState() => _Reg_form_1State();
}

class _Reg_form_1State extends State<Reg_form_1> {

  static const int _width_of_form = 10;
  static const double _high_of_form = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Column(
            //   children: [
            //     SizedBox(height: 10),
            //     Icon(
            //       My_home_logo.my_home_logo_icon,
            //       size: 75,
            //       color: Colors.white,
            //     ),
            //     SizedBox(height: 9),
            //     Text(
            //       "МойДом",
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontFamily: "MontserratAlternates",
            //         fontSize: 35,
            //       ),
            //     ),
            //   ],
            // ),
            Column(
              children: [
                Text(
                  "Регистрация",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: "Manrope",
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF284A68),
                  ),
                ),
                SizedBox(height: 20),
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
                            "Номер телефона",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF284A68),
                            ),
                          ),
                        ],
                      ),
                      _FormPhoneWidget(),
                    ],
                  ),
                ),
                SizedBox(height: 8),
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
                SizedBox(height: 8),
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
                            "Подтверждение пароля",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF284A68),
                            ),
                          ),
                        ],
                      ),
                      _FormPasswordConfirmWidget(),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Timer(
                    //   Duration(milliseconds: 25),
                    //       () {
                    //     Navigator.push(
                    //       context,
                    //       PageRouteBuilder(
                    //         pageBuilder:
                    //             (context, animation1, animation2) =>
                    //             Registration_page_2(),
                    //         transitionDuration: Duration.zero,
                    //         reverseTransitionDuration: Duration.zero,
                    //       ),
                    //     );
                    //     // Navigator.pushNamed(context, "/registration");
                    //   },
                    // );
                    Navigator.pushNamed(context, "/registration/registration_end");
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
                        60),
                  ),
                  child: const Text(
                    'Далее',
                    style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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

class _FormPhoneWidget extends StatefulWidget {
  const _FormPhoneWidget({Key? key}) : super(key: key);

  @override
  State<_FormPhoneWidget> createState() => __FormPhoneWidgetState();
}

class __FormPhoneWidgetState extends State<_FormPhoneWidget> {
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

class _FormPasswordConfirmWidget extends StatefulWidget {
  const _FormPasswordConfirmWidget({Key? key}) : super(key: key);

  @override
  State<_FormPasswordConfirmWidget> createState() =>
      __FormPasswordConfirmWidget();
}

class __FormPasswordConfirmWidget extends State<_FormPasswordConfirmWidget> {
  final _passowordConfTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _passowordConfTextController,
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
