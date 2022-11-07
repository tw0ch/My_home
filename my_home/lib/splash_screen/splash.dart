import 'package:flutter/src/widgets/media_query.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../main.dart';
import '../entry.dart';


class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1), () => {
          Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder:(context) => Entry()))
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFC8D9E2),
      body:
      Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        color: Color(0xFF77CFD9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                child:
                  Column(
                    children: [
                      Image.asset(
                        "assets/splash_screen_img/logo_splash.png",
                        height: 310.0,
                        width: 310.0,
                        ),
                      ],
                    ),
            )

          ],
      )
      ),
    );
  }
}






