enum Results {
  basic,
  minpan,
  xipan,
  dayun,
  liunian;

  @override
  String toString() {
    switch (this) {
      case Results.basic:
        return '基本';
      case Results.minpan:
        return '命盤';
      case Results.xipan:
        return '細盤';
      case Results.dayun:
        return '大運';
      case Results.liunian:
        return '流年';
    }
  }
}
