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
  String toString() => this == Dizhi.zi
      ? '子'
      : this == Dizhi.chou
          ? '丑'
          : this == Dizhi.yin
              ? '寅'
              : this == Dizhi.mao
                  ? '卯'
                  : this == Dizhi.chen
                      ? '辰'
                      : this == Dizhi.si
                          ? '巳'
                          : this == Dizhi.wu
                              ? '午'
                              : this == Dizhi.wei
                                  ? '未'
                                  : this == Dizhi.shen
                                      ? '申'
                                      : this == Dizhi.you
                                          ? '酉'
                                          : this == Dizhi.xu
                                              ? '戌'
                                              : '亥';
}
