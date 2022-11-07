import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_home/main_page_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'dart:ui';
import 'icons/my_home_icons.dart';
import 'splash_screen/splash.dart';
import 'entry.dart';
import 'chat_pg1.dart';
import 'camera.dart';
import 'three_line.dart';
import 'registration.dart';
import 'event_add.dart';
import 'my_account.dart';
import 'main_page_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      initialRoute: "/splash_screen",
      routes: {
        "/": (context) => const Main_page(),
        "/splash_screen": (context) => SplashScreen(),
        "/event_add": (context) => const Event_add(),
        "/my_account": (context) => const My_account(),
        "/entry": (context) => Entry(),
        "/registration": (context) => const Registration(),
        "/chat": (context) => const Chat(),
        "/camera": (context) => const Camera_page(),
        "/three_line": (context) => const Account(),
        //
      },
    ),
  );
}

// class Navigate_page extends StatefulWidget {
//   const Navigate_page({Key? key}) : super(key:key);
//
//   @override
//   State<Navigate_page> createState() => _Navigate_page();
// }
//
// class _Navigate_page extends State<Navigate_page> {
//
//   int selectedPage = 0;
//   static const List<Widget> widgetOptions = <Widget>[
//     Main_page(),
//     Chat(),
//     Camera_page(),
//     My_account(),
//   ];
//
//   void onSelectTab(int index) {
//     if (selectedPage == index) return;
//     setState(() {
//       selectedPage = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: const Color(0xFFC8D9E2),
//         bottomNavigationBar:
//         Container(
//             color: const Color(0xFFC8D9E2),
//             child:
//             Padding(
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 10.0, vertical: 10),
//                 child: GNav(
//
//                   backgroundColor: const Color(0xFFC8D9E2),
//                   color: const Color(0xFF8F939E),
//                   activeColor: const Color(0xFF122426),
//                   tabBackgroundColor: Color(0xFFAEE3FF),
//                   tabBorderRadius: 100,
//                   iconSize: 30,
//                   gap: 8,
//                   padding: EdgeInsets.all(16),
//                   duration: Duration(milliseconds: 350),
//                   tabs: const [
//                     GButton(
//                       icon: Icons.home,
//                       text: "Home",
//                     ),
//                     GButton(
//                       icon: Icons.chat,
//                       text: "Chat",
//                     ),
//                     GButton(
//                       icon: Icons.camera,
//                       text: "Camera",
//                     ),
//                     GButton(
//                       icon: Icons.person,
//                       text: "Account",
//                     ),
//                   ],
//                   selectedIndex: selectedPage,
//                   onTabChange: onSelectTab,
//                 )
//             )
//         ),
//         body: Center(child: widgetOptions[selectedPage])
//     );
//   }
// }
//

// class Main extends StatelessWidget {
//   const Main({Key? key}) : super(key:key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//           backgroundColor: const  Color(0xFFF2F4F8),
//           body: SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 children: [],
//               )
//             )
//           ),
//           floatingActionButton:
//             Padding(
//             padding: const EdgeInsets.fromLTRB(36, 0, 5, 30),
//             child:
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Transform.scale(
//                       scale: 1.1,
//                       child:
//                       FloatingActionButton(
//                           heroTag: null,
//                           onPressed: () {
//                             Navigator.push(context,
//                                 MaterialPageRoute(
//                                     builder: (context) {
//                                       return My_account();
//                                     }
//                                     )
//                             );
//                           },
//                           backgroundColor: const Color(0xFFC4C4C4),
//                           child:
//                           Padding(
//                               padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
//                               child: Icon(My_home_icon.home_icon,
//                                   color: Color(0xFF8B909C),
//                                   size: 25
//                               )
//                           )
//                       )
//                   ),
//                   const Spacer(flex: 30),
//                   Transform.scale(
//                       scale: 1.1,
//                       child:
//                       FloatingActionButton(
//                           heroTag: null,
//                           onPressed: () {
//                             Navigator.push(context,
//                                 MaterialPageRoute(
//                                     builder: (context) {
//                                       return Chat();
//                                     }
//                                 )
//                             );
//                           },
//                           backgroundColor: const Color(0xFFC4C4C4),
//                           child:
//                           Padding(
//                               padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
//                               child: Icon(My_home_icon.chat_icon,
//                                   color: Color(0xFF8B909C),
//                                   size: 25
//                               )
//                           )
//                       )
//                   ),
//                   const Spacer(flex: 30),
//                   Transform.scale(
//                     scale: 1.1,
//                     child:
//                       FloatingActionButton(
//                           heroTag: null,
//                       onPressed: () {
//                         Navigator.push(context,
//                           MaterialPageRoute(
//                             builder: (context) {return Camera_page();}
//                           )
//                         );
//                       },
//                       backgroundColor: const Color(0xFFC4C4C4),
//                       child:
//                         Padding(
//                           padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
//                           child: Icon(
//                               My_home_icon.camaras_icon,
//                               color: Color(0xFF8B909C),
//                               size: 25
//                           )
//                         )
//                       )
//                   ),
//                   const Spacer(flex: 30),
//                   Transform.scale(
//                       scale: 1.1,
//                       child:
//                       FloatingActionButton(
//                           heroTag: null,
//                           onPressed: () {
//                             Navigator.pushNamed(context, "/three_line");
//                           },
//                           backgroundColor: const Color(0xFFC4C4C4),
//                           child:
//                           Padding(
//                               padding: const EdgeInsets.fromLTRB(0, 2, 3, 0),
//                               child: Icon(
//                                   My_home_icon.three_lines_icon,
//                                   color: Color(0xFF8B909C),
//                                   size: 15
//                               )
//                           )
//                       )
//                   ),
//                 ],
//               ),
//           ),
//           );
//           // bottomNavigationBar:
//           //   CustomNavigationBar(
//           //     iconSize: 25,
//           //       selectedColor: Color(0xFF122426),
//           //     items: [
//           //       CustomNavigationBarItem(icon: const Icon(Icons.home)),
//           //       CustomNavigationBarItem(icon: const Icon(Icons.home)),
//           //       CustomNavigationBarItem(icon: const Icon(Icons.home)),
//           //       CustomNavigationBarItem(icon: const Icon(Icons.home)),
//           //     ],
//           //    ),
//           // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
//
//   }
// }
