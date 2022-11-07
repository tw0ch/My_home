import 'package:flutter/material.dart';
import 'icons/registration_icons_icons.dart';
import 'main.dart';
import 'icons/my_home_icons.dart';
import 'splash_screen/splash.dart';
import 'entry.dart';
import 'registration.dart';
import 'main.dart';

class Entry extends StatelessWidget {
  const Entry({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 100),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: _FormLoginWidget(),
                    ),
                    // SizedBox(height: 20),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                    //     child:
                    //         Row(
                    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //             children: [
                    //               _TextLoginWidget(),
                    //               _TextRegistrationWidget()
                  ]))
        ])
        // ),
        // ]
        // )
        );
  }
}

//
// class _TextLoginWidget extends StatelessWidget {
//   const _TextLoginWidget({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//       width: 131,
//       height: 53,
//       color: Color(0xFF429EA5),
//       child: Align(
//         alignment: Alignment.center,
//         child:
//           TextButton(
//             onPressed: () {
//
//               //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//             },
//             child: Text(
//             "Войти",
//             style: TextStyle(
//                 fontSize: 22,
//                 fontFamily: "Inter",
//                 fontStyle: FontStyle.normal,
//                 color: Colors.white
//               )
//             )
//           )
//       )
//     );
//   }
// }

//
// class _TextRegistrationWidget extends StatelessWidget{
//   const _TextRegistrationWidget({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return
//     Row(
//       children: [
//       TextButton(
//         onPressed: () {},
//         child:
//           Text(
//             "Регистрация",
//             style: TextStyle(
//                 fontSize: 22,
//                 fontFamily: "Inter",
//                 fontStyle: FontStyle.normal,
//                 color: Colors.white
//             )
//           )
//         )
//       ]
//     );
//   }
// }
//

class _FormLoginWidget extends StatefulWidget {
  _FormLoginWidget({Key? key}) : super(key: key);

  @override
  __FormLoginWidget createState() => __FormLoginWidget();
}

class __FormLoginWidget extends State<_FormLoginWidget> {
  final _loginTextController = TextEditingController();
  final _passowordTextController = TextEditingController();
  String? errorText = null;

  void _Entry() {
    final login = _loginTextController.text.toString();
    final password = _passowordTextController.text.toString();

    if (login == 'test' && password == 'test') {
      errorText = null;
      Navigator.pushReplacementNamed(context, "/");
    } else {
      errorText = "Неверный логин или пароль";
      print("$login $password");
    }
    setState(() {});
  }

  void _Registration() {
    Navigator.pushNamed(context, "/registration");
  }

  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;
    return Column(children: [
      if (errorText != null)
        Text(
          errorText,
          style: TextStyle(color: Colors.redAccent),
        ),
      SizedBox(height: 20),
      TextField(
        controller: _loginTextController,
        obscureText: false,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0))),
            labelText: 'Логин',
            icon: Icon(Registration_icons.reg_phone)),
      ),
      SizedBox(height: 20),
      TextField(
        controller: _passowordTextController,
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0))),
            labelText: 'Пароль',
            icon: Icon(Registration_icons.reg_key_1)),
      ),
      SizedBox(height: 20),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        TextButton(
            onPressed: _Entry,
            child: Container(
              alignment: Alignment.center,
              width: 131,
              height: 53,
              decoration: BoxDecoration(
                  color: Color(0xFF429EA5),
                  borderRadius: BorderRadius.circular(15)),
              child: Text("Войти",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: "Inter",
                      fontStyle: FontStyle.normal,
                      color: Colors.white)),
            )),
        TextButton(
            onPressed: _Registration,
            child: Text("Регистрация",
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: "Inter",
                    fontStyle: FontStyle.normal,
                    color: Colors.white)))
      ])
    ]);
  }
}
