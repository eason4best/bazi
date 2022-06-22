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
  String toString() => this == TianGan.jia
      ? '甲'
      : this == TianGan.yi
          ? '乙'
          : this == TianGan.bing
              ? '丙'
              : this == TianGan.ding
                  ? '丁'
                  : this == TianGan.wu
                      ? '戊'
                      : this == TianGan.ji
                          ? '己'
                          : this == TianGan.geng
                              ? '庚'
                              : this == TianGan.xin
                                  ? '辛'
                                  : this == TianGan.ren
                                      ? '壬'
                                      : '癸';
}
