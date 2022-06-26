enum JieQi {
  lichun,
  jingzhe,
  qingming,
  lixia,
  mangzhong,
  xiaoshu,
  liqiu,
  bailu,
  hanlu,
  lidong,
  daxue,
  xiaohan,
  yushui,
  chunfen,
  guyu,
  xiaoman,
  xiazhi,
  dashu,
  chushu,
  qiufen,
  shuangjiang,
  xiaoxue,
  dongzhi,
  dahan;

  @override
  String toString() {
    switch (this) {
      case JieQi.lichun:
        return '立春';
      case JieQi.jingzhe:
        return '驚蟄';
      case JieQi.qingming:
        return '清明';
      case JieQi.lixia:
        return '立夏';
      case JieQi.mangzhong:
        return '芒種';
      case JieQi.xiaoshu:
        return '小暑';
      case JieQi.liqiu:
        return '立秋';
      case JieQi.bailu:
        return '白露';
      case JieQi.hanlu:
        return '寒露';
      case JieQi.lidong:
        return '立冬';
      case JieQi.daxue:
        return '大雪';
      case JieQi.xiaohan:
        return '小寒';
      case JieQi.yushui:
        return '雨水';
      case JieQi.chunfen:
        return '春分';
      case JieQi.guyu:
        return '穀雨';
      case JieQi.xiaoman:
        return '小滿';
      case JieQi.xiazhi:
        return '夏至';
      case JieQi.dashu:
        return '大暑';
      case JieQi.chushu:
        return '處暑';
      case JieQi.qiufen:
        return '秋分';
      case JieQi.shuangjiang:
        return '霜降';
      case JieQi.xiaoxue:
        return '小雪';
      case JieQi.dongzhi:
        return '冬至';
      case JieQi.dahan:
        return '大寒';
    }
  }
}
