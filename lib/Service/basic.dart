import 'package:bazi/Enum/jieqi.dart' as jq;
import 'package:bazi/Enum/star_sign.dart';
import 'package:bazi/Enum/zodiac.dart';
import 'package:lunar/lunar.dart';

class Basic {
  Basic({required this.birthday}) {
    lunarBirthday = Lunar.fromDate(birthday);
  }
  //西曆生日
  final DateTime birthday;
  //農曆生日
  late Lunar lunarBirthday;
  //生肖
  late Zodiac zodiac;
  //節氣
  late List<jq.JieQi> jieQis;
  //星座
  late StarSign starSign;
}
