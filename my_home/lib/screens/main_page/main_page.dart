import 'package:my_home/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: deviceWidth(context) * 0.076,
            vertical: deviceHeight(context) * 0.02,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {

                    },
                    child: CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.man_rounded),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset("assets/icons/location_icon.png"),
                      Text("example")
                    ],
                  ),
                  // Row(
                  //   children: [
                  //     InkWell(onTap: () {},child: Image.asset("assets/icons/notification_icon.png",),),
                  //     InkWell(onTap: () {},child: Image.asset("assets/icons/3line_icon.png"),),
                  //   ],
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
