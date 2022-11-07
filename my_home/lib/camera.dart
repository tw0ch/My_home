import 'package:flutter/material.dart';
import 'main.dart';
import 'icons/my_home_icons.dart';
import 'splash_screen/splash.dart';
import 'entry.dart';

class Camera_page extends StatefulWidget {
  const Camera_page({Key? key}) : super(key:key);

  @override
  State<Camera_page> createState() => _Camera_page();
}

class _Camera_page extends State<Camera_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const  Color(0xFFC8D9E2),
      body:
        Padding(
          padding: const EdgeInsets.all(20),
          child:
          SafeArea(
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Container(
                      child:
                        Image.asset(
                        "assets/splash_screen_img/logo_splash.png",
                        height: 58.0,
                        width: 100.0),
                    ),
                    SizedBox(height: 15),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 110,
                            height: 55,
                            child: Icon(Icons.door_back_door),
                              decoration: BoxDecoration(
                              color: const Color(0xFF53E261),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFF000000).withOpacity(0.25),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: Offset(0, 4)
                                  )
                                ],
                              ),
                          )
                        ]
                      ),

                  SizedBox(height: 15),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Stack(
                        children: [
                        Container(
                          width: 310.0,
                          height: 340.0,
                          child:
                          Image.asset("assets/123.jpg",
                          height: 340.0,
                          width: 310.0),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30))
                        ),
                      ],
                    ),
                    ]
                    ),

                    SizedBox(height: 15),

                    Container(
                      alignment: Alignment.center,
                      width: 360,
                      height: 44,
                      child: Text("Составить маршрут"),
                      decoration: BoxDecoration(
                        color: Color(0xFFFAEE3FF),
                        borderRadius: BorderRadius.circular(30),
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

                    SizedBox(height: 15),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 5),
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 68,
                          child: Icon(Icons.child_care, size: 50,),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFF000000).withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: Offset(0, 4)
                              )
                            ]
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 68,
                          child: Icon(Icons.directions_car, size: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFF000000).withOpacity(0.25),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: Offset(0, 4)
                                )
                              ]
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 68,
                          child: Icon(Icons.door_back_door, size: 50,),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFF000000).withOpacity(0.25),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: Offset(0, 4)
                                )
                              ]
                          ),
                        ),

                      ],
                    )
                ]
                )
          )
      )
    );
  }
}

