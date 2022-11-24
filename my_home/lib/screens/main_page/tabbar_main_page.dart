import 'package:flutter/material.dart';
import 'package:my_home/screens/screens.dart';

class TabBarMainPage extends StatefulWidget {
  const TabBarMainPage({Key? key}) : super(key: key);

  @override
  State<TabBarMainPage> createState() => _TabBarMainPageState();
}

class _TabBarMainPageState extends State<TabBarMainPage> {

  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  late TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBarView(
        controller: _tabController,
        children: [

        ],
      ),
    );
  }
}

