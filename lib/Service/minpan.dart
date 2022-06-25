import 'package:bazi/Other/nayin.dart';
import 'package:bazi/Other/tiangan.dart';
import 'package:bazi/Other/zhangsheng.dart';
import 'package:bazi/Other/shishen.dart';
import 'package:lunar/lunar.dart';

import '../Model/tiangandizhi.dart';
import '../Other/dizhi.dart';

class MinPan {
  MinPan({required this.birthday}) {
    lunarBirthday = Lunar.fromDate(birthday);
    zhuXing = YMDHZhuXing(lunarBirthday: lunarBirthday);
    ganZhi = YMDHGanZhi(lunarBirthday: lunarBirthday);
    cangGan = YMHDCangGan(lunarBirthday: lunarBirthday);
    fuXing = YMHDFuXing(lunarBirthday: lunarBirthday);
    naYin = YMDHNaYin(lunarBirthday: lunarBirthday);
    xingYun = YMHDXingYun(lunarBirthday: lunarBirthday);
  }
  final DateTime birthday;
  //農曆生日
  late Lunar lunarBirthday;
  //主星
  late YMDHZhuXing zhuXing;
  //天干地支
  late YMDHGanZhi ganZhi;
  //藏干
  late YMHDCangGan cangGan;
  //副星
  late YMHDFuXing fuXing;
  //納音
  late YMDHNaYin naYin;
  //星運
  late YMHDXingYun xingYun;
  //神煞

}

class YMDHZhuXing {
  YMDHZhuXing({required this.lunarBirthday}) {
    eightChar = lunarBirthday.getEightChar();
    yearZhuXing = _birthdayToYearZhuXing();
    monthZhuXing = _birthdayToMonthZhuXing();
    dayZhuXing = _birthdayToDayZhuXing();
    hourZhuXing = _birthdayToHourZhuXing();
  }
  final Lunar lunarBirthday;
  late EightChar eightChar;
  //年主星
  late ShiShen yearZhuXing;
  //月主星
  late ShiShen monthZhuXing;
  //日主星
  late ShiShen dayZhuXing;
  //時主星
  late ShiShen hourZhuXing;

  //生日轉年主星
  ShiShen _birthdayToYearZhuXing() {
    return ShiShen.toShiShen(eightChar.getYearShiShenGan());
  }

  //生日轉年主星
  ShiShen _birthdayToMonthZhuXing() {
    return ShiShen.toShiShen(eightChar.getMonthShiShenGan());
  }

  //生日轉年主星
  ShiShen _birthdayToDayZhuXing() {
    return ShiShen.toShiShen(eightChar.getDayShiShenGan());
  }

  //生日轉年主星
  ShiShen _birthdayToHourZhuXing() {
    return ShiShen.toShiShen(eightChar.getTimeShiShenGan());
  }
}

class YMDHGanZhi {
  YMDHGanZhi({required this.lunarBirthday}) {
    yearGanZhi = _birthdayToYearGanZhi();
    monthGanZhi = _birthdayToMonthGanZhi();
    dayGanZhi = _birthdayToDayGanZhi();
    hourGanZhi = _birthdayToHourGanZhi();
  }
  final Lunar lunarBirthday;
  //年干支
  late TianGanDiZhi yearGanZhi;
  //月干支
  late TianGanDiZhi monthGanZhi;
  //日干支
  late TianGanDiZhi dayGanZhi;
  //時干支
  late TianGanDiZhi hourGanZhi;

  //生日轉年干支
  TianGanDiZhi _birthdayToYearGanZhi() {
    TianGan tianGan = TianGan.values[lunarBirthday.getYearGanIndex()];
    DiZhi diZhi = DiZhi.values[lunarBirthday.getYearZhiIndex()];
    return TianGanDiZhi(tianGan: tianGan, diZhi: diZhi);
  }

  //生日轉月干支
  TianGanDiZhi _birthdayToMonthGanZhi() {
    TianGan tianGan = TianGan.values[lunarBirthday.getMonthGanIndex()];
    DiZhi diZhi = DiZhi.values[lunarBirthday.getMonthZhiIndex()];
    return TianGanDiZhi(tianGan: tianGan, diZhi: diZhi);
  }

  //生日轉日干支
  TianGanDiZhi _birthdayToDayGanZhi() {
    TianGan tianGan = TianGan.values[lunarBirthday.getDayGanIndex()];
    DiZhi diZhi = DiZhi.values[lunarBirthday.getDayZhiIndex()];
    return TianGanDiZhi(tianGan: tianGan, diZhi: diZhi);
  }

  //生日轉時干支
  TianGanDiZhi _birthdayToHourGanZhi() {
    TianGan tianGan = TianGan.values[lunarBirthday.getTimeGanIndex()];
    DiZhi diZhi = DiZhi.values[lunarBirthday.getTimeZhiIndex()];
    return TianGanDiZhi(tianGan: tianGan, diZhi: diZhi);
  }
}

class YMHDCangGan {
  YMHDCangGan({required this.lunarBirthday}) {
    eightChar = lunarBirthday.getEightChar();
    yearCangGan = _birthdayToYearCangGan();
    monthCangGan = _birthdayToMonthCangGan();
    dayCangGan = _birthdayToDayCangGan();
    hourCangGan = _birthdayToHourCangGan();
  }
  final Lunar lunarBirthday;
  late EightChar eightChar;
  //年藏干
  late List<TianGan> yearCangGan;
  //月藏干
  late List<TianGan> monthCangGan;
  //日藏干
  late List<TianGan> dayCangGan;
  //時藏干
  late List<TianGan> hourCangGan;

  //生日轉年藏干
  List<TianGan> _birthdayToYearCangGan() {
    return eightChar.getYearHideGan().map((e) => TianGan.toTianGan(e)).toList();
  }

  //生日轉月藏干
  List<TianGan> _birthdayToMonthCangGan() {
    return eightChar
        .getMonthHideGan()
        .map((e) => TianGan.toTianGan(e))
        .toList();
  }

  //生日轉日藏干
  List<TianGan> _birthdayToDayCangGan() {
    return eightChar.getDayHideGan().map((e) => TianGan.toTianGan(e)).toList();
  }

  //生日轉時藏干
  List<TianGan> _birthdayToHourCangGan() {
    return eightChar.getTimeHideGan().map((e) => TianGan.toTianGan(e)).toList();
  }
}

class YMHDFuXing {
  YMHDFuXing({required this.lunarBirthday}) {
    eightChar = lunarBirthday.getEightChar();
    yearFuXing = _birthdayToYearFuXing();
    monthFuXing = _birthdayToMonthFuXing();
    dayFuXing = _birthdayToDayFuXing();
    hourFuXing = _birthdayToHourFuXing();
  }
  final Lunar lunarBirthday;
  late EightChar eightChar;
  //年副星
  late List<ShiShen> yearFuXing;
  //月副星
  late List<ShiShen> monthFuXing;
  //日副星
  late List<ShiShen> dayFuXing;
  //時副星
  late List<ShiShen> hourFuXing;

  //生日轉年主星
  List<ShiShen> _birthdayToYearFuXing() {
    return eightChar
        .getYearShiShenZhi()
        .map((e) => ShiShen.toShiShen(e))
        .toList();
  }

  //生日轉月主星
  List<ShiShen> _birthdayToMonthFuXing() {
    return eightChar
        .getMonthShiShenZhi()
        .map((e) => ShiShen.toShiShen(e))
        .toList();
  }

  //生日轉日主星
  List<ShiShen> _birthdayToDayFuXing() {
    return eightChar
        .getDayShiShenZhi()
        .map((e) => ShiShen.toShiShen(e))
        .toList();
  }

  //生日轉時主星
  List<ShiShen> _birthdayToHourFuXing() {
    return eightChar
        .getTimeShiShenZhi()
        .map((e) => ShiShen.toShiShen(e))
        .toList();
  }
}

class YMDHNaYin {
  YMDHNaYin({required this.lunarBirthday}) {
    eightChar = lunarBirthday.getEightChar();
    yearNaYin = _birthdayToYearNaYin();
    monthNaYin = _birthdayToMonthNaYin();
    dayNaYin = _birthdayToDayNaYin();
    hourNaYin = _birthdayToHourNaYin();
  }
  final Lunar lunarBirthday;
  late EightChar eightChar;
  //年納音
  late NaYin yearNaYin;
  //月納音
  late NaYin monthNaYin;
  //日納音
  late NaYin dayNaYin;
  //時納音
  late NaYin hourNaYin;

  //生日轉年納音
  NaYin _birthdayToYearNaYin() {
    return NaYin.toNaYin(eightChar.getYearNaYin());
  }

  //生日轉月納音
  NaYin _birthdayToMonthNaYin() {
    return NaYin.toNaYin(eightChar.getMonthNaYin());
  }

  //生日轉日納音
  NaYin _birthdayToDayNaYin() {
    return NaYin.toNaYin(eightChar.getDayNaYin());
  }

  //生日轉時納音
  NaYin _birthdayToHourNaYin() {
    return NaYin.toNaYin(eightChar.getTimeNaYin());
  }
}

class YMHDXingYun {
  YMHDXingYun({required this.lunarBirthday}) {
    eightChar = lunarBirthday.getEightChar();
    yearXingYun = _birthdayToYearXingYun();
    monthXingYun = _birthdayToMonthXingYun();
    dayXingYun = _birthdayToDayXingYun();
    hourXingYun = _birthdayToHourXingYun();
  }
  final Lunar lunarBirthday;
  late EightChar eightChar;
  //年星運
  late ZhangSheng yearXingYun;
  //月星運
  late ZhangSheng monthXingYun;
  //日星運
  late ZhangSheng dayXingYun;
  //時星運
  late ZhangSheng hourXingYun;

  //生日轉年星運
  ZhangSheng _birthdayToYearXingYun() {
    return ZhangSheng.toZhangSheng(eightChar.getYearDiShi());
  }

  //生日轉月星運
  ZhangSheng _birthdayToMonthXingYun() {
    return ZhangSheng.toZhangSheng(eightChar.getMonthDiShi());
  }

  //生日轉日星運
  ZhangSheng _birthdayToDayXingYun() {
    return ZhangSheng.toZhangSheng(eightChar.getDayDiShi());
  }

  //生日轉時星運
  ZhangSheng _birthdayToHourXingYun() {
    return ZhangSheng.toZhangSheng(eightChar.getTimeDiShi());
  }
}
