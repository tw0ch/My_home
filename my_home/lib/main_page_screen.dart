import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'main.dart';
import 'icons/my_home_icons.dart';
import 'splash_screen/splash.dart';
import 'entry.dart';
import 'main.dart';
import 'chat_pg1.dart';
import 'camera.dart';
import 'my_account.dart';
import 'first_page.dart';

class Main_page extends StatefulWidget {
  const Main_page({Key? key}) : super(key: key);

  @override
  State<Main_page> createState() => _Main_page();
}

class _Main_page extends State<Main_page> {
  int selectedPage = 0;
  static const List<Widget> widgetOptions = <Widget>[
    First_page(),
    Chat(),
    Camera_page(),
    My_account(),
  ];

  void onSelectTab(int index) {
    if (selectedPage == index) return;
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFC8D9E2),
        bottomNavigationBar: Container(
            color: const Color(0xFFC8D9E2),
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: GNav(
                  backgroundColor: const Color(0xFFC8D9E2),
                  color: const Color(0xFF8F939E),
                  activeColor: const Color(0xFF122426),
                  tabBackgroundColor: Color(0xFFAEE3FF),
                  tabBorderRadius: 100,
                  iconSize: 30,
                  gap: 8,
                  padding: EdgeInsets.all(16),
                  duration: Duration(milliseconds: 350),
                  tabs: const [
                    GButton(
                      icon: Icons.home,
                      text: "Дом",
                    ),
                    GButton(
                      icon: Icons.chat,
                      text: "Чат",
                    ),
                    GButton(
                      icon: Icons.camera,
                      text: "Камера",
                    ),
                    GButton(
                      icon: Icons.person,
                      text: "Аккаунт",
                    ),
                  ],
                  selectedIndex: selectedPage,
                  onTabChange: onSelectTab,
                ))),
        body: Center(child: widgetOptions[selectedPage])
//     );
        //
        //     Padding(
        //       padding: const EdgeInsets.all(20),
        //       child:
        //       SafeArea(
        //         child:
        //           Column(
        //             children:
        //             [
        //               Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     Image.asset(
        //                       "assets/splash_screen_img/logo_splash.png",
        //                       height: 58.0,
        //                       width: 100.0),
        //                     Container(
        //                         alignment: Alignment(-3, 1),
        //                         width: 50,
        //                         height: 50,
        //                         decoration: BoxDecoration(
        //                           color: Color(0xFFFFFFFF),
        //                           borderRadius: BorderRadius.circular(16),
        //                         ),
        //                         child:
        //                         Transform.scale(
        //                             scale: 0.9,
        //                               child:
        //                               IconButton(
        //                                 icon: Icon(My_home_icon.three_lines_icon),
        //                                 onPressed: () {},
        //                             )
        //                         )
        //                       )
        //                     ]
        //                   ),
        //               SizedBox(height: 60),
        //
        //               Container(
        //                 // alignment: Alignment.center,
        //                 width: 359,
        //                 height: 73,
        //                 decoration: BoxDecoration(
        //                   color: Color(0xFFFFFFFF),
        //                   borderRadius: BorderRadius.circular(32)
        //                 ),
        //                 child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.start,
        //                   children: [
        //                     Container(
        //                       width: 73,
        //                       height:73,
        //                       decoration: BoxDecoration(
        //                       color: Color(0xFF79D1FF),
        //                       borderRadius: BorderRadius.circular(32)
        //                       ),
        //                       child: Icon(Icons.water),
        //                     ),
        //                     SizedBox(width: 15),
        //                     Text("Отключение воды.")
        //                   ],
        //                 ),
        //               ),
        //
        //               SizedBox(height:20),
        //
        //               Container(
        //                 // alignment: Alignment.center,
        //                 width: 359,
        //                 height: 106,
        //                 decoration: BoxDecoration(
        //                     color: Color(0xFFFFFFFF),
        //                     borderRadius: BorderRadius.circular(32)
        //                 ),
        //                 child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.start,
        //                   children: [
        //                     Container(
        //                       width: 78,
        //                       height: 106,
        //                       decoration: BoxDecoration(
        //                           color: Color(0xFFB64DF6),
        //                           borderRadius: BorderRadius.circular(32)
        //                       ),
        //                       child: Icon(Icons.people),
        //                     ),
        //                     SizedBox(width: 15),
        //                     Text("Собрание жильцов\n24.07 в 18:00.", textAlign: TextAlign.start)
        //                   ],
        //                 ),
        //               ),
        //
        //               SizedBox(height:20),
        //
        //               Container(
        //                 // alignment: Alignment.center,
        //                 width: 359,
        //                 height: 73,
        //                 decoration: BoxDecoration(
        //                     color: Color(0xFFFFFFFF),
        //                     borderRadius: BorderRadius.circular(32)
        //                 ),
        //                 child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.start,
        //                   children: [
        //                     Container(
        //                       width: 77,
        //                       height: 73,
        //                       decoration: BoxDecoration(
        //                           color: Color(0xFFFFEE52),
        //                           borderRadius: BorderRadius.circular(32)
        //                       ),
        //                       child: Icon(Icons.light),
        //                     ),
        //                     SizedBox(width: 15),
        //                     Text("Отключение света.", textAlign: TextAlign.start)
        //                   ],
        //                 ),
        //               ),
        //
        //               SizedBox(height:20),
        //
        //               Container(
        //                 // alignment: Alignment.center,
        //                 width: 359,
        //                 height: 73,
        //                 decoration: BoxDecoration(
        //                     color: Color(0xFFFFFFFF),
        //                     borderRadius: BorderRadius.circular(32)
        //                 ),
        //                 child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.start,
        //                   children: [
        //                     Container(
        //                       width: 77,
        //                       height: 73,
        //                       decoration: BoxDecoration(
        //                           color: Color(0xFF5BDE68),
        //                           borderRadius: BorderRadius.circular(32)
        //                       ),
        //                       child: Icon(Icons.grass),
        //                     ),
        //                     SizedBox(width: 15),
        //                     Text("21.07 субботник.")
        //                   ],
        //                 ),
        //               ),
        //               SizedBox(height:40),
        //               Row(
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //
        //                   Container(
        //                     width: 172,
        //                     height: 79,
        //                     child: IconButton(
        //                         onPressed: () {
        //                           Navigator.pushNamed(context, "/event_add");
        //                         },
        //                         icon: Icon(Icons.plus_one_rounded)),
        //                     decoration: BoxDecoration(
        //                         color: Color(0xFFFFFFFF),
        //                         borderRadius: BorderRadius.circular(32),
        //                           boxShadow: [
        //                             BoxShadow(
        //                               color: Color(0xFF000000).withOpacity(0.25),
        //                               spreadRadius: 0,
        //                               blurRadius: 4,
        //                               offset: Offset(0, 4)
        //                               )
        //                           ],
        //                        ),
        //
        //                   )
        //                 ]
        //               ),
        //
        //       ],
        //     ),
        //   )
        // )
        );
  }
}
