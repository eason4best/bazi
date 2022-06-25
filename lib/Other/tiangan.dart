enum TianGan {
  jia,
  yi,
  bing,
  ding,
  wu,
  ji,
  geng,
  xin,
  ren,
  gui;

  @override
  String toString() {
    switch (this) {
      case TianGan.jia:
        return '甲';
      case TianGan.yi:
        return '乙';
      case TianGan.bing:
        return '丙';
      case TianGan.ding:
        return '丁';
      case TianGan.wu:
        return '戊';
      case TianGan.ji:
        return '己';
      case TianGan.geng:
        return '庚';
      case TianGan.xin:
        return '辛';
      case TianGan.ren:
        return '壬';
      case TianGan.gui:
        return '癸';
    }
  }

  factory TianGan.toTianGan(String value) {
    switch (value) {
      case '甲':
        return TianGan.jia;
      case '乙':
        return TianGan.yi;
      case '丙':
        return TianGan.bing;
      case '丁':
        return TianGan.ding;
      case '戊':
        return TianGan.wu;
      case '己':
        return TianGan.ji;
      case '庚':
        return TianGan.geng;
      case '辛':
        return TianGan.xin;
      case '壬':
        return TianGan.ren;
      case '癸':
        return TianGan.gui;
      default:
        return TianGan.jia;
    }
  }
}
