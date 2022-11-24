import 'package:flutter/material.dart';
import 'package:my_home/screens/screens.dart';

List<UserInfo> userInfo = Utils.getUserInfo();
int userId = 0;

class ProgilePage extends StatelessWidget {
  const ProgilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ActionBar(),
              ProfileInfo(),
              SizedBox(height: 10),
              Text('Мои соседи', style: TextStyle(),),
              MyNeighbors(),
              Container(
                width: 330,
                height: 1,
                color: Color(0xFF456786).withOpacity(0.6),
              ),
              SizedBox(height: 20),
              OptionList(),
            ],
          ),
        ),
      ),
    );
  }
}

class ActionBar extends StatelessWidget {
  const ActionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
          child: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        InkWell(
          onTap: () {},
          child: Icon(Icons.settings),
        ),
      ],
    );
  }
}

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 65,
          backgroundColor: Colors.grey,
          child: Image.asset('assets/img/user/${userInfo[userId].imgName}.png'),
        ),
        SizedBox(height: 10),
        Text(
          '${userInfo[userId].first_name} ${userInfo[userId].last_name}',
          style: TextStyle(fontSize: 25),
        ),
        SizedBox(height: 5),
        Text('${userInfo[userId].adress}'),
        SizedBox(height: 20),
        InkWell(
          onTap: () {},
          child: Text(
            '${userInfo[userId].description}',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}

class MyNeighbors extends StatefulWidget {
  const MyNeighbors({Key? key}) : super(key: key);

  @override
  State<MyNeighbors> createState() => _MyNeighborsState();
}

class _MyNeighborsState extends State<MyNeighbors> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                    'assets/img/user/${userInfo[userId + 1].imgName}.png'),
                SizedBox(
                  width: 6,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${userInfo[userId + 1].first_name}'),
                    Text('${userInfo[userId + 1].inHouseAdress}'),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: 160.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                    'assets/img/user/${userInfo[userId + 2].imgName}.png'),
                SizedBox(
                  width: 6,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${userInfo[userId + 2].first_name}'),
                    Text('${userInfo[userId + 2].inHouseAdress}'),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: 160.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                    'assets/img/user/${userInfo[userId + 3].imgName}.png'),
                SizedBox(
                  width: 6,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${userInfo[userId + 3].first_name}'),
                    Text('${userInfo[userId + 3].inHouseAdress}'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OptionList extends StatelessWidget {
  const OptionList({Key? key}) : super(key: key);

  final double indent_from_left = 10.0;
  final double icon_size = 29;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Row(children: [
              SizedBox(width: indent_from_left),
              Icon(
                Icons.bookmark,
                size: icon_size,
                color: Color(0xFF284A68),
              ),
              SizedBox(width: 10),
              Text('Избранное', style: TextStyle(fontSize: 16, color: Color(0xFF284A68)))
            ]),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {},
            child: Row(children: [
              SizedBox(width: indent_from_left),
              Icon(
                Icons.account_circle_outlined,
                size: icon_size,
                color: Color(0xFF284A68),
              ),
              SizedBox(width: 10),
              Text('Аккаунты', style: TextStyle(fontSize: 16, color: Color(0xFF284A68)))
            ]),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {},
            child: Row(children: [
              SizedBox(width: indent_from_left),
              Icon(
                Icons.star_rounded,
                size: icon_size,
                color: Color(0xFF284A68),
              ),
              SizedBox(width: 10),
              Text('Подписка', style: TextStyle(fontSize: 16, color: Color(0xFF284A68)))
            ]),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {},
            child: Row(children: [
              SizedBox(width: indent_from_left),
              Icon(
                Icons.question_mark_rounded,
                size: icon_size,
                color: Color(0xFF284A68),
              ),
              SizedBox(width: 10),
              Text(
                'Помощь',
                style: TextStyle(fontSize: 16, color: Color(0xFF284A68)),
              ),
            ]),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                SizedBox(width: indent_from_left),
                Icon(
                  Icons.bolt,
                  size: icon_size,
                  color: Color(0xFF284A68),
                ),
                SizedBox(width: 10),
                Text(
                  'Возможности МойДом',
                  style: TextStyle(fontSize: 16, color: Color(0xFF284A68)),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
