enum ZhangSheng {
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
      case ZhangSheng.zhangsheng:
        return '長生';
      case ZhangSheng.muyu:
        return '沐浴';
      case ZhangSheng.guandai:
        return '冠帶';
      case ZhangSheng.linguan:
        return '臨官';
      case ZhangSheng.diwang:
        return '帝旺';
      case ZhangSheng.shuai:
        return '衰';
      case ZhangSheng.bing:
        return '病';
      case ZhangSheng.si:
        return '死';
      case ZhangSheng.mu:
        return '墓';
      case ZhangSheng.jue:
        return '絕';
      case ZhangSheng.tai:
        return '胎';
      case ZhangSheng.yang:
        return '養';
    }
  }

  factory ZhangSheng.toZhangSheng(String value) {
    switch (value) {
      case '长生':
        return ZhangSheng.zhangsheng;
      case '沐浴':
        return ZhangSheng.muyu;
      case '冠带':
        return ZhangSheng.guandai;
      case '临官':
        return ZhangSheng.linguan;
      case '帝旺':
        return ZhangSheng.diwang;
      case '衰':
        return ZhangSheng.shuai;
      case '病':
        return ZhangSheng.bing;
      case '死':
        return ZhangSheng.si;
      case '墓':
        return ZhangSheng.mu;
      case '绝':
        return ZhangSheng.jue;
      case '胎':
        return ZhangSheng.tai;
      case '养':
        return ZhangSheng.yang;
      default:
        return ZhangSheng.zhangsheng;
    }
  }
}
