enum ShiShen {
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
  String toString() {
    switch (this) {
      case ShiShen.zhengcai:
        return '正財';
      case ShiShen.piancai:
        return '偏財';
      case ShiShen.zhengguan:
        return '正官';
      case ShiShen.pianguan:
        return '偏官';
      case ShiShen.zhengyin:
        return '正印';
      case ShiShen.pianyin:
        return '偏印';
      case ShiShen.bijian:
        return '比肩';
      case ShiShen.jiecai:
        return '劫財';
      case ShiShen.shishen:
        return '食神';
      case ShiShen.shangguan:
        return '傷官';
    }
  }

  factory ShiShen.toShiShen(String value) {
    switch (value) {
      case '正财':
        return ShiShen.zhengcai;
      case '偏财':
        return ShiShen.piancai;
      case '正官':
        return ShiShen.zhengguan;
      case '七杀':
        return ShiShen.pianguan;
      case '正印':
        return ShiShen.zhengyin;
      case '偏印':
        return ShiShen.pianyin;
      case '比肩':
        return ShiShen.bijian;
      case '劫财':
        return ShiShen.jiecai;
      case '食神':
        return ShiShen.shishen;
      case '伤官':
        return ShiShen.shangguan;
      default:
        return ShiShen.zhengcai;
    }
  }
}
