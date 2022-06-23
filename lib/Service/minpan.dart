import 'package:bazi/Other/dizhi.dart';
import 'package:bazi/Other/nayin.dart';
import 'package:bazi/Other/tiangan.dart';
import 'package:bazi/Other/xingyun.dart';
import 'package:bazi/Other/zhuxing.dart';

import '../Model/tiangandizhi.dart';

class MinPan {
  MinPan({required this.birthDay}) {
    zhuXing = YMDHZhuXing(birthDay: birthDay);
    ganZhi = YMDHGanZhi(birthDay: birthDay);
    cangGan = YMHDCangGan(birthDay: birthDay);
    fuXing = YMHDFuXing(birthDay: birthDay);
    naYin = YMDHNaYin(birthDay: birthDay);
    xingYun = YMHDXingYun(birthDay: birthDay);
  }
  final DateTime birthDay;
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
  YMDHZhuXing({required this.birthDay}) {
    yearZhuXing = ShiShen.bijian;
    monthZhuXing = ShiShen.bijian;
    dayZhuXing = ShiShen.bijian;
    hourZhuXing = ShiShen.bijian;
  }
  final DateTime birthDay;
  //年主星
  late ShiShen yearZhuXing;
  //月主星
  late ShiShen monthZhuXing;
  //日主星
  late ShiShen dayZhuXing;
  //時主星
  late ShiShen hourZhuXing;
}

class YMDHGanZhi {
  YMDHGanZhi({required this.birthDay}) {
    yearGanZhi = TianGanDiZhi(tianGan: TianGan.jia, dizhi: Dizhi.zi);
    monthGanZhi = TianGanDiZhi(tianGan: TianGan.jia, dizhi: Dizhi.zi);
    dayGanZhi = TianGanDiZhi(tianGan: TianGan.jia, dizhi: Dizhi.zi);
    hourGanZhi = TianGanDiZhi(tianGan: TianGan.jia, dizhi: Dizhi.zi);
  }
  final DateTime birthDay;
  //年干支
  late TianGanDiZhi yearGanZhi;
  //月干支
  late TianGanDiZhi monthGanZhi;
  //日干支
  late TianGanDiZhi dayGanZhi;
  //時干支
  late TianGanDiZhi hourGanZhi;
}

class YMHDCangGan {
  YMHDCangGan({required this.birthDay}) {
    yearCangGan = [TianGan.bing];
    monthCangGan = [TianGan.bing];
    dayCangGan = [TianGan.bing];
    hourCangGan = [TianGan.bing];
  }
  final DateTime birthDay;
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
  YMHDFuXing({required this.birthDay}) {
    yearFuXing = [ShiShen.bijian];
    monthFuXing = [ShiShen.bijian];
    dayFuXing = [ShiShen.bijian];
    hourFuXing = [ShiShen.bijian];
  }
  final DateTime birthDay;
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
  YMDHNaYin({required this.birthDay}) {
    yearNaYin = NaYin.bailajin;
    monthNaYin = NaYin.bailajin;
    dayNaYin = NaYin.bailajin;
    hourNaYin = NaYin.bailajin;
  }
  final DateTime birthDay;
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
  YMHDXingYun({required this.birthDay}) {
    yearXingYun = XingYun.bing;
    monthXingYun = XingYun.bing;
    dayXingYun = XingYun.bing;
    hourXingYun = XingYun.bing;
  }
  final DateTime birthDay;
  //年星運
  late XingYun yearXingYun;
  //月星運
  late XingYun monthXingYun;
  //日星運
  late XingYun dayXingYun;
  //時星運
  late XingYun hourXingYun;
}
