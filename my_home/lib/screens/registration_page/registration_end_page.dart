import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:delayed_display/delayed_display.dart';

class RegistrationPage2 extends StatefulWidget {
  const RegistrationPage2({Key? key}) : super(key: key);

  @override
  State<RegistrationPage2> createState() => _RegistrationPage2();
}

class _RegistrationPage2 extends State<RegistrationPage2> {
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
          child: Reg_form_2(),
        ),
      ],
    );
  }
}

class Reg_form_2 extends StatefulWidget {
  const Reg_form_2({Key? key}) : super(key: key);

  @override
  State<Reg_form_2> createState() => _Reg_form_2State();
}

class _Reg_form_2State extends State<Reg_form_2> {

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
                            "Город",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF284A68),
                            ),
                          ),
                        ],
                      ),
                      _Town_Form_Widget(),
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
                            "Улица",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF284A68),
                            ),
                          ),
                        ],
                      ),
                      _Street_Form_Widget(),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            MediaQuery.of(context).size.width / _width_of_form),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "Номер дома",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF284A68),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 140,
                              child: _Num_house_Form_Widget(),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "Квартира",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF284A68),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 140,
                              child: _Num_house_Form_Widget(),
                            ),
                          ],
                        ),
                      ],
                    )),
                SizedBox(height: 20),
                ElevatedButton(
                  child: const Text(
                    'Зарегестрироваться',
                    style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 30,
                    ),
                  ),
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
                          60)),
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

class _Town_Form_Widget extends StatefulWidget {
  const _Town_Form_Widget({Key? key}) : super(key: key);

  @override
  State<_Town_Form_Widget> createState() => __Town_Form_Widget();
}

class __Town_Form_Widget extends State<_Town_Form_Widget> {
  final _town = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _town,
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

class _Street_Form_Widget extends StatefulWidget {
  const _Street_Form_Widget({Key? key}) : super(key: key);

  @override
  State<_Street_Form_Widget> createState() => __Street_Form_Widget();
}

class __Street_Form_Widget extends State<_Street_Form_Widget> {
  final _street = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _street,
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

class _Num_house_Form_Widget extends StatefulWidget {
  const _Num_house_Form_Widget({Key? key}) : super(key: key);

  @override
  State<_Num_house_Form_Widget> createState() => __Num_house_Form_Widget();
}

class __Num_house_Form_Widget extends State<_Num_house_Form_Widget> {
  final _num_house = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _num_house,
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

class _Num_flat_Form_Widget extends StatefulWidget {
  const _Num_flat_Form_Widget({Key? key}) : super(key: key);

  @override
  State<_Num_flat_Form_Widget> createState() => __Num_flat_Form_Widget();
}

class __Num_flat_Form_Widget extends State<_Num_flat_Form_Widget> {
  final _num_flat = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _num_flat,
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
