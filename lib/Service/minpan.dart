import 'package:bazi/Other/dizhi.dart';
import 'package:bazi/Other/nayin.dart';
import 'package:bazi/Other/tiangan.dart';
import 'package:bazi/Other/xingyun.dart';
import 'package:bazi/Other/zhuxing.dart';
import 'package:lunar/lunar.dart';

import '../Model/tiangandizhi.dart';

class MinPan {
  MinPan({required this.birthday}) {
    lunarBirthday = Lunar.fromDate(birthday);
    zhuXing = YMDHZhuXing(birthday: birthday);
    ganZhi = YMDHGanZhi(lunarBirthday: lunarBirthday);
    cangGan = YMHDCangGan(birthday: birthday);
    fuXing = YMHDFuXing(birthday: birthday);
    naYin = YMDHNaYin(birthday: birthday);
    xingYun = YMHDXingYun(birthday: birthday);
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
  YMDHZhuXing({
    required this.birthday,
  }) {
    yearZhuXing = _birthdayToYearZhuXing();
    monthZhuXing = _birthdayToMonthZhuXing();
    dayZhuXing = _birthdayToDayZhuXing();
    hourZhuXing = _birthdayToHourZhuXing();
  }
  final DateTime birthday;
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
    return ShiShen.bijian;
  }

  //生日轉年主星
  ShiShen _birthdayToMonthZhuXing() {
    return ShiShen.bijian;
  }

  //生日轉年主星
  ShiShen _birthdayToDayZhuXing() {
    return ShiShen.bijian;
  }

  //生日轉年主星
  ShiShen _birthdayToHourZhuXing() {
    return ShiShen.bijian;
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
    Dizhi dizhi = Dizhi.values[lunarBirthday.getYearZhiIndex()];
    return TianGanDiZhi(tianGan: tianGan, dizhi: dizhi);
  }

  //生日轉月干支
  TianGanDiZhi _birthdayToMonthGanZhi() {
    TianGan tianGan = TianGan.values[lunarBirthday.getMonthGanIndex()];
    Dizhi dizhi = Dizhi.values[lunarBirthday.getMonthZhiIndex()];
    return TianGanDiZhi(tianGan: tianGan, dizhi: dizhi);
  }

  //生日轉日干支
  TianGanDiZhi _birthdayToDayGanZhi() {
    TianGan tianGan = TianGan.values[lunarBirthday.getDayGanIndex()];
    Dizhi dizhi = Dizhi.values[lunarBirthday.getDayZhiIndex()];
    return TianGanDiZhi(tianGan: tianGan, dizhi: dizhi);
  }

  //生日轉時干支
  TianGanDiZhi _birthdayToHourGanZhi() {
    TianGan tianGan = TianGan.values[lunarBirthday.getTimeGanIndex()];
    Dizhi dizhi = Dizhi.values[lunarBirthday.getTimeZhiIndex()];
    return TianGanDiZhi(tianGan: tianGan, dizhi: dizhi);
  }
}

class YMHDCangGan {
  YMHDCangGan({required this.birthday}) {
    yearCangGan = [TianGan.bing];
    monthCangGan = [TianGan.bing];
    dayCangGan = [TianGan.bing];
    hourCangGan = [TianGan.bing];
  }
  final DateTime birthday;
  //年藏干
  late List<TianGan> yearCangGan;
  //月藏干
  late List<TianGan> monthCangGan;
  //日藏干
  late List<TianGan> dayCangGan;
  //時藏干
  late List<TianGan> hourCangGan;
}

class YMHDFuXing {
  YMHDFuXing({required this.birthday}) {
    yearFuXing = [ShiShen.bijian];
    monthFuXing = [ShiShen.bijian];
    dayFuXing = [ShiShen.bijian];
    hourFuXing = [ShiShen.bijian];
  }
  final DateTime birthday;
  //年副星
  late List<ShiShen> yearFuXing;
  //月副星
  late List<ShiShen> monthFuXing;
  //日副星
  late List<ShiShen> dayFuXing;
  //時副星
  late List<ShiShen> hourFuXing;
}

class YMDHNaYin {
  YMDHNaYin({required this.birthday}) {
    yearNaYin = NaYin.bailajin;
    monthNaYin = NaYin.bailajin;
    dayNaYin = NaYin.bailajin;
    hourNaYin = NaYin.bailajin;
  }
  final DateTime birthday;
  //年納音
  late NaYin yearNaYin;
  //月納音
  late NaYin monthNaYin;
  //日納音
  late NaYin dayNaYin;
  //時納音
  late NaYin hourNaYin;
}

class YMHDXingYun {
  YMHDXingYun({required this.birthday}) {
    yearXingYun = XingYun.bing;
    monthXingYun = XingYun.bing;
    dayXingYun = XingYun.bing;
    hourXingYun = XingYun.bing;
  }
  final DateTime birthday;
  //年星運
  late XingYun yearXingYun;
  //月星運
  late XingYun monthXingYun;
  //日星運
  late XingYun dayXingYun;
  //時星運
  late XingYun hourXingYun;
}
