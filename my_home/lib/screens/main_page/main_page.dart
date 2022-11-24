import 'package:my_home/utils.dart';
import 'package:my_home/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flip_card/flip_card.dart';

double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

double userExpense = 6267.51;

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
          padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Column(
            children: [
              TopBar(),
              SizedBox(height: 10),
              TopNavigationBar(),
              // Expanded(child: ItemList())
              // MainPageWidgets[current],
            ],
          ),
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/profile');
          },
          child: CircleAvatar(
            radius: 25,
            child: Icon(Icons.man_rounded),
          ),
        ),
        Row(
          children: [Icon(Icons.location_on_outlined), Text("example")],
        ),
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Icon(Icons.notifications),
            ),
            SizedBox(
              width: 15,
            ),
            InkWell(
              onTap: () {},
              child: Icon(Icons.menu),
            ),
          ],
        ),
      ],
    );
  }
}

class ItemList extends StatelessWidget {
  List<Notifications> notifications = Utils.getListNotifications();

  // List<>
  final _widthContainer = 330.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (BuildContext ctx, int index) {
                return FlipCard(
                  fill: Fill.fillBack,
                  // Fill the back side of the card to make in the same size as the front.
                  direction: FlipDirection.HORIZONTAL,
                  // default
                  front: Padding(
                    padding: const EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child: Container(
                      width: _widthContainer,
                      height: 200,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                  'assets/img/${notifications[index].imgName}.png',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            width: _widthContainer + 61,
                            height: 60,
                            color: Colors.white.withOpacity(0.8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(),
                                    Text(
                                      notifications[index].name,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.favorite),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      notifications[index]
                                          .like_count
                                          .toString(),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  back: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: _widthContainer,
                      height: 200,
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(width: 1, color: Color(0xFF456786))),
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              notifications[index].name,
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                notifications[index].description,
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Expanded(child: Container()),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  size: 40,
                                  color: Color(0xFF456786),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TopNavigationBar extends StatefulWidget {
  const TopNavigationBar({Key? key}) : super(key: key);

  @override
  State<TopNavigationBar> createState() => _TopNavigationBarState();
}

class _TopNavigationBarState extends State<TopNavigationBar> {
  int current = 0;
  static const double _iconsSize = 40;
  List<String> _names_tabs = [
    'Дом',
    'Счета',
    'Тех.\nСпец',
    'Рядом',
  ];

  static const _iconTypes = <IconData>[
    Icons.home,
    Icons.payment_rounded,
    Icons.construction,
    Icons.radar,
  ];

  List<Widget> MainPageWidgets = [
    Expanded(child: ItemList()),
    UserExpense(),
    Container(
      width: 100,
      height: 100,
      color: Colors.green,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double _widthContainer = (deviceWidth(context) - 70) / 4;
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 100,
            child: Center(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext ctx, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        current = index;
                        print(current);
                        print(_widthContainer);
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(1),
                      width: _widthContainer,
                      height: 100,
                      //_widthContainer,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                          color: current == index
                              ? Color(0xFF456786)
                              : Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(_iconTypes[index],
                              size: _iconsSize,
                              color: current == index
                                  ? Color(0xFFFFFFFF)
                                  : Color(0xFF456786)),
                          SizedBox(height: 5),
                          Text(
                            _names_tabs[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: current == index
                                  ? Color(0xFFFFFFFF)
                                  : Color(0xFF456786),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 10),
          MainPageWidgets[current],
        ],
      ),
    );
  }
}

class UserExpense extends StatelessWidget {
  const UserExpense({Key? key}) : super(key: key);

  static double _textPeriodSizeMainContainer = 16;
  static double _textBalanceSizeMainContainer = 33;

  static double _textButtonSizeMainButton = 18;
  static double _textButtonSizeSubButton = 14;

  static double _iconsSize = 35;
  static Color _iconColor = Color(0xFF456786);
  static Color _textColor = Color(0xFF456786);
  static Color _containerColor = Color(0xFFFFFFFF);
  static Color _buttonColor = Color(0xFF456786);

  static TextStyle _textMainButtonStyle = TextStyle(
    fontSize: _textButtonSizeMainButton,
    color: Colors.white,
  );

  static TextStyle _textSubButtonStyle = TextStyle(
    fontSize: _textButtonSizeSubButton,
    color: _textColor,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: deviceWidth(context) - 30,
          height: 130,
          decoration: BoxDecoration(
              color: _containerColor, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Всего к оплате за период 20.02-20.03',
                  style: TextStyle(
                      fontSize: _textPeriodSizeMainContainer,
                      color: _textColor),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '$userExpense ₽',
                  style: TextStyle(
                      fontSize: _textBalanceSizeMainContainer,
                      color: _textColor),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            InkWell(
              onTap: () {

              },
              child: Container(
                width: 85,
                height: 65,
                decoration: BoxDecoration(
                    color: _containerColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.description,
                      size: _iconsSize,
                      color: _iconColor,
                    ),
                    Text(
                      'Квитанция',
                      style: _textSubButtonStyle,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: Container()),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: 120,
                height: 65,
                decoration: BoxDecoration(
                  color: _buttonColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Оплатить',
                  style: _textMainButtonStyle,
                ),
              ),
            ),
            Expanded(child: Container()),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: 85,
                height: 65,
                decoration: BoxDecoration(
                  color: _containerColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.monetization_on_outlined,
                      size: _iconsSize,
                      color: _iconColor,
                    ),
                    Text(
                      'Квитанция',
                      style: _textSubButtonStyle,
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
