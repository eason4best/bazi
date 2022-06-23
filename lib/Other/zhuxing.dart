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
}
