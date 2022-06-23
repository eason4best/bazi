enum Dizhi {
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
      case Dizhi.zi:
        return '子';
      case Dizhi.chou:
        return '丑';
      case Dizhi.yin:
        return '寅';
      case Dizhi.mao:
        return '卯';
      case Dizhi.chen:
        return '辰';
      case Dizhi.si:
        return '巳';
      case Dizhi.wu:
        return '午';
      case Dizhi.wei:
        return '未';
      case Dizhi.shen:
        return '申';
      case Dizhi.you:
        return '酉';
      case Dizhi.xu:
        return '戌';
      case Dizhi.hai:
        return '亥';
    }
  }
}
