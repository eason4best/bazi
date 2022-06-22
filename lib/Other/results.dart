enum Results {
  basic,
  minpan,
  xipan,
  dayun,
  liunian;

  @override
  String toString() => this == Results.basic
      ? '基本'
      : this == Results.minpan
          ? '命盤'
          : this == Results.xipan
              ? '細盤'
              : this == Results.dayun
                  ? '大運'
                  : '流年';
}
