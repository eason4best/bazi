import 'package:bazi/Enum/jieqi.dart' as jq;
import 'package:bazi/Enum/star_sign.dart';
import 'package:bazi/Enum/zodiac.dart';
import 'package:lunar/lunar.dart';

class Basic {
  Basic({required this.birthDay}) {
    lunarBirthDay = Lunar.fromDate(birthDay);
    zodiac = _getZodiac();
    jieQis = _getJieQis();
    starSign = _getStarSign();
  }
  //西曆生日
  final DateTime birthDay;
  //農曆生日
  late Lunar lunarBirthDay;
  //生肖
  late Zodiac zodiac;
  //節氣
  late NearJieQi jieQis;
  //星座
  late StarSign starSign;

  //獲得生肖
  Zodiac _getZodiac() {
    return Zodiac.toZodiac(lunarBirthDay.getYearShengXiao());
  }

  //獲得節氣
  NearJieQi _getJieQis() =>
      NearJieQi(birthDay: birthDay, lunarBirthDay: lunarBirthDay);
  //獲得星座
  StarSign _getStarSign() {
    return StarSign.toStarSign(Solar.fromDate(birthDay).getXingZuo());
  }
}

class NearJieQi {
  NearJieQi({required this.birthDay, required this.lunarBirthDay}) {
    previousJieQi = _getPreviousJieQi();
    nextJieQi = _getNextJieQi();
    daysToPreviousJieQi = _getDaysToPreviousJieQi();
    daysToNextJieQi = _getDaysToNextJieQi();
  }
  final DateTime birthDay;
  final Lunar lunarBirthDay;
  late jq.JieQi previousJieQi;
  late jq.JieQi nextJieQi;
  late int daysToPreviousJieQi;
  late int daysToNextJieQi;

  jq.JieQi _getPreviousJieQi() {
    return jq.JieQi.toJieQi(lunarBirthDay.getPrevJieQi().getName());
  }

  jq.JieQi _getNextJieQi() {
    return jq.JieQi.toJieQi(lunarBirthDay.getNextJieQi().getName());
  }

  int _getDaysToPreviousJieQi() {
    Solar solar = lunarBirthDay.getPrevJieQi().getSolar();
    DateTime previousJieQi = DateTime(solar.getYear(), solar.getMonth(),
        solar.getDay(), solar.getHour(), solar.getMinute(), solar.getSecond());
    return birthDay.difference(previousJieQi).inDays;
  }

  int _getDaysToNextJieQi() {
    Solar solar = lunarBirthDay.getNextJieQi().getSolar();
    DateTime nextJieQi = DateTime(solar.getYear(), solar.getMonth(),
        solar.getDay(), solar.getHour(), solar.getMinute(), solar.getSecond());
    return nextJieQi.difference(birthDay).inDays;
  }
}
