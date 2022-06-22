import 'package:bazi/Other/dizhi.dart';
import 'package:bazi/Other/tiangan.dart';
import 'package:bazi/Other/zhuxing.dart';

import '../Model/tiangandizhi.dart';

class MinPan {
  MinPan({required this.birthDay}) {
    ganZhi = YMDHGanZhi(birthDay: birthDay);
    zhuXing = YMDHZhuXing(birthDay: birthDay);
  }
  final DateTime birthDay;
  //主星
  late YMDHZhuXing zhuXing;
  //天干地支
  late YMDHGanZhi ganZhi;
  //藏干

  //副星

  //納音

  //星運

  //神煞

}

class YMDHZhuXing {
  YMDHZhuXing({required this.birthDay}) {
    yearZhuXing = ZhuXing.bijian;
    monthZhuXing = ZhuXing.bijian;
    dayZhuXing = ZhuXing.bijian;
    hourZhuXing = ZhuXing.bijian;
  }
  final DateTime birthDay;
  //年主星
  late ZhuXing yearZhuXing;
  //月主星
  late ZhuXing monthZhuXing;
  //日主星
  late ZhuXing dayZhuXing;
  //時主星
  late ZhuXing hourZhuXing;
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
