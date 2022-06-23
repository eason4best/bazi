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
}
