import 'package:flutter/material.dart';

enum DiZhi {
  zi,
  chou,
  yin,
  mao,
  chen,
  si,
  wu,
  wei,
  shen,
  you,
  xu,
  hai;

  @override
  String toString() {
    switch (this) {
      case DiZhi.zi:
        return '子';
      case DiZhi.chou:
        return '丑';
      case DiZhi.yin:
        return '寅';
      case DiZhi.mao:
        return '卯';
      case DiZhi.chen:
        return '辰';
      case DiZhi.si:
        return '巳';
      case DiZhi.wu:
        return '午';
      case DiZhi.wei:
        return '未';
      case DiZhi.shen:
        return '申';
      case DiZhi.you:
        return '酉';
      case DiZhi.xu:
        return '戌';
      case DiZhi.hai:
        return '亥';
    }
  }

  factory DiZhi.toDiZhi(String value) {
    switch (value) {
      case '子':
        return DiZhi.zi;
      case '丑':
        return DiZhi.chou;
      case '寅':
        return DiZhi.yin;
      case '卯':
        return DiZhi.mao;
      case '辰':
        return DiZhi.chen;
      case '巳':
        return DiZhi.si;
      case '午':
        return DiZhi.wu;
      case '未':
        return DiZhi.wei;
      case '申':
        return DiZhi.shen;
      case '酉':
        return DiZhi.you;
      case '戌':
        return DiZhi.xu;
      case '亥':
        return DiZhi.hai;
      default:
        return DiZhi.zi;
    }
  }
}
