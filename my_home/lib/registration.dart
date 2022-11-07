import 'package:flutter/material.dart';
import 'icons/registration_icons_icons.dart';
import 'main.dart';
import 'icons/my_home_icons.dart';
import 'splash_screen/splash.dart';
import 'entry.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                  "assets/registration_background/registration_background.png"),
              fit: BoxFit.cover,
            )),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 200),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: _FormRegistration(),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        child: Row(children: [_PrivatPolisCheck()])),
                    SizedBox(height: 20),
                    Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, "/");
                            },
                            child: _TextRegistrationWidget())),
                  ])),
        ]));
  }
}

class _TextRegistrationWidget extends StatelessWidget {
  const _TextRegistrationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 219,
      height: 61,
      decoration: BoxDecoration(
          color: Color(0xFF429EA5), borderRadius: BorderRadius.circular(15)),
      child: Text("Создать",
          style: TextStyle(
              fontSize: 30,
              fontFamily: "Inter",
              fontStyle: FontStyle.normal,
              color: Colors.white)),
    );
  }
}

class _PrivatPolisCheck extends StatelessWidget {
  const _PrivatPolisCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _CheckBox(),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Text(
            "Я согласен с условиями обработки\nперсональных данных",
            style: TextStyle(),
          ),
        )
      ],
    );
  }
}

class _FormRegistration extends StatefulWidget {
  _FormRegistration({Key? key}) : super(key: key);

  @override
  __FormRegistration createState() => __FormRegistration();
}

class __FormRegistration extends State<_FormRegistration> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
        obscureText: false,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Логин',
            icon: Icon(Registration_icons.reg_phone)),
      ),
      SizedBox(height: 20),
      TextField(
        obscureText: false,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Адрес',
            icon: Icon(Icons.location_on_outlined)),
      ),
      SizedBox(height: 20),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Пароль',
            icon: Icon(Registration_icons.reg_key_1)),
      ),
      SizedBox(height: 20),
      TextField(
        obscureText: false,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'e-mail',
            icon: Icon(Icons.email_outlined)),
      ),
      SizedBox(height: 20),
    ]);
  }
}

class _CheckBox extends StatefulWidget {
  _CheckBox({Key? key}) : super(key: key);

  @override
  __CheckBox createState() => __CheckBox();
}

class __CheckBox extends State<_CheckBox> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Checkbox(
        value: isChecked,
        activeColor: Color(0xFF429EA5),
        onChanged: (newBool) {
          setState(() {
            isChecked = newBool;
          });
        },
      ),
    );
  }
}
