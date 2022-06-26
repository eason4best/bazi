import 'package:flutter/material.dart';

import '../Other/dizhi.dart';
import '../Other/tiangan.dart';

class TianGanDiZhi {
  TianGanDiZhi({required this.tianGan, required this.diZhi});
  final TianGan tianGan;
  final DiZhi diZhi;

  static Color? getColorFromString(String value) {
    switch (value) {
      case '甲':
        return Colors.green;
      case '乙':
        return Colors.green;
      case '丙':
        return Colors.red;
      case '丁':
        return Colors.red;
      case '戊':
        return Colors.brown;
      case '己':
        return Colors.brown;
      case '庚':
        return Colors.amber;
      case '辛':
        return Colors.amber;
      case '壬':
        return Colors.indigo;
      case '癸':
        return Colors.indigo;
      case '子':
        return Colors.indigo;
      case '丑':
        return Colors.brown;
      case '寅':
        return Colors.green;
      case '卯':
        return Colors.green;
      case '辰':
        return Colors.brown;
      case '巳':
        return Colors.red;
      case '午':
        return Colors.red;
      case '未':
        return Colors.brown;
      case '申':
        return Colors.amber;
      case '酉':
        return Colors.amber;
      case '戌':
        return Colors.brown;
      case '亥':
        return Colors.indigo;
      default:
        return null;
    }
  }
}
