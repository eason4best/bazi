enum XingYun {
  zhangsheng,
  muyu,
  guandai,
  linguan,
  diwang,
  shuai,
  bing,
  si,
  mu,
  jue,
  tai,
  yang;

  @override
  String toString() {
    switch (this) {
      case XingYun.zhangsheng:
        return '長生';
      case XingYun.muyu:
        return '沐浴';
      case XingYun.guandai:
        return '冠帶';
      case XingYun.linguan:
        return '臨官';
      case XingYun.diwang:
        return '帝旺';
      case XingYun.shuai:
        return '衰';
      case XingYun.bing:
        return '病';
      case XingYun.si:
        return '死';
      case XingYun.mu:
        return '墓';
      case XingYun.jue:
        return '絕';
      case XingYun.tai:
        return '胎';
      case XingYun.yang:
        return '養';
    }
  }
}
