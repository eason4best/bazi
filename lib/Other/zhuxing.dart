enum ZhuXing {
  zhengcai,
  piancai,
  zhengguan,
  pianguan,
  zhengyin,
  pianyin,
  bijian,
  jiecai,
  shishen,
  shangguan;

  @override
  String toString() => this == ZhuXing.zhengcai
      ? '正財'
      : this == ZhuXing.piancai
          ? '偏財'
          : this == ZhuXing.zhengguan
              ? '正官'
              : this == ZhuXing.pianguan
                  ? '偏官'
                  : this == ZhuXing.zhengyin
                      ? '正印'
                      : this == ZhuXing.pianyin
                          ? '偏印'
                          : this == ZhuXing.bijian
                              ? '比肩'
                              : this == ZhuXing.jiecai
                                  ? '劫財'
                                  : this == ZhuXing.shishen
                                      ? '食神'
                                      : '傷官';
}
