import 'package:my_home/screens/screens.dart';

class Notifications {
  String name;
  String description;
  String imgName;
  int like_count;

  Notifications({
    required this.name,
    required this.description,
    required this.imgName,
    required this.like_count,
  });
}

class UserInfo {
  int id;
  String username;
  String first_name;
  String last_name;
  String description;
  String adress;
  String inHouseAdress;
  String imgName;
  int age;

  UserInfo({
    required this.id,
    required this.username,
    required this.first_name,
    required this.last_name,
    required this.description,
    required this.adress,
    required this.inHouseAdress,
    required this.imgName,
    required this.age,
  });
}

class Utils {
  static List<Notifications> getListNotifications() {
    return [
      Notifications(
        name: 'Отключение воды ',
        description:
            '31.12 по адресу Тургенева 19 будет отключена вода в связи с ремонтом труб  на период с 9:00 по 14:00',
        like_count: 39,
        imgName: 'water',
      ),
      Notifications(
        name: 'Необходим ремонт',
        description: '827104981274092187409281470129',
        like_count: 39,
        imgName: 'instruments',
      ),
      Notifications(
        name: 'Замена оборудования',
        description: '49124-902184-0129841-2094812-',
        like_count: 39,
        imgName: 'camera',
      ),
      Notifications(
        name: 'Отключение воды ',
        description:
            '31.12 по адресу Тургенева 19 будет отключена вода в связи с ремонтом труб  на период с 9:00 по 14:00',
        like_count: 39,
        imgName: 'water',
      ),
      Notifications(
        name: 'Необходим ремонт',
        description: 'Привет яз из второй катрточки',
        like_count: 39,
        imgName: 'instruments',
      ),
      Notifications(
        name: 'Замена оборудования',
        description: '',
        like_count: 39,
        imgName: 'camera',
      ),
    ];
  }

  static List<UserInfo> getUserInfo() {
    return [
      UserInfo(
        id: 0,
        username: 'arkasha',
        first_name: 'Аркадий',
        last_name: 'Паровозов',
        description: 'Люблю кемпинг и мотокросс. По вечерам смотрю фантастику в приятной компании, обожаю играть в настольный покер',
        adress: '',
        inHouseAdress: '4 подъезд 76 кв',
        imgName: 'arkadiy0',
        age: 36,
      ),
      UserInfo(
        id: 0,
        username: 'miha',
        first_name: 'Михаил',
        last_name: 'Смирнов',
        description: '',
        adress: '',
        inHouseAdress: '8 этаж 92 кв',
        imgName: 'micke0',
        age: 25,

      ),
      UserInfo(
        id: 0,
        username: 'janna',
        first_name: 'Жанна',
        last_name: 'Сергеевна',
        description: '',
        adress: '',
        inHouseAdress: '7 этаж 78 кв',
        imgName: 'janna0',
        age: 18,
      ),
      UserInfo(
        id: 0,
        username: 'annka',
        first_name: 'Анна',
        last_name: 'Георгиевна',
        description: '',
        adress: '',
        inHouseAdress: '7 этаж 55 кв',
        imgName: 'anna0',
        age: 18,
      ),
    ];
  }
}
