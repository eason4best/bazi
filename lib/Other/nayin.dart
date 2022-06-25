enum NaYin {
  haizhongjin,
  luzhonghuo,
  dalinmu,
  lupangtu,
  jianfengjin,
  shantouhuo,
  jianxiashui,
  chengtoutu,
  bailajin,
  yangliumu,
  jingquanshui,
  wushangtu,
  pilihuo,
  songbaimu,
  zhangliushui,
  shazhongjin,
  shanxiahuo,
  pingdimu,
  bishangtu,
  jinbojin,
  fudenghuo,
  tianheshui,
  dayitu,
  chaichuanjin,
  sangzhemu,
  daxishui,
  shazhongtu,
  tianshanghuo,
  shiliumu,
  dahaishui;

  @override
  String toString() {
    switch (this) {
      case NaYin.haizhongjin:
        return '海中金';
      case NaYin.luzhonghuo:
        return '爐中火';
      case NaYin.dalinmu:
        return '大林木';
      case NaYin.lupangtu:
        return '路旁土';
      case NaYin.jianfengjin:
        return '劍鋒金';
      case NaYin.shantouhuo:
        return '山頭火';
      case NaYin.jianxiashui:
        return '澗下水';
      case NaYin.chengtoutu:
        return '城頭土';
      case NaYin.bailajin:
        return '白臘金';
      case NaYin.yangliumu:
        return '楊柳木';
      case NaYin.jingquanshui:
        return '井泉水';
      case NaYin.wushangtu:
        return '屋上土';
      case NaYin.pilihuo:
        return '霹靂火';
      case NaYin.songbaimu:
        return '松柏木';
      case NaYin.zhangliushui:
        return '長流水';
      case NaYin.shazhongjin:
        return '砂中金';
      case NaYin.shanxiahuo:
        return '山下火';
      case NaYin.pingdimu:
        return '平地木';
      case NaYin.bishangtu:
        return '壁上土';
      case NaYin.jinbojin:
        return '金箔金';
      case NaYin.fudenghuo:
        return '覆燈火';
      case NaYin.tianheshui:
        return '天河水';
      case NaYin.dayitu:
        return '大驛土';
      case NaYin.chaichuanjin:
        return '釵釧金';
      case NaYin.sangzhemu:
        return '桑柘木';
      case NaYin.daxishui:
        return '大溪水';
      case NaYin.shazhongtu:
        return '砂中土';
      case NaYin.tianshanghuo:
        return '天上火';
      case NaYin.shiliumu:
        return '石榴木';
      case NaYin.dahaishui:
        return '大海水';
    }
  }

  factory NaYin.toNaYin(String value) {
    switch (value) {
      case '海中金':
        return NaYin.haizhongjin;
      case '炉中火':
        return NaYin.luzhonghuo;
      case '大林木':
        return NaYin.dalinmu;
      case '路旁土':
        return NaYin.lupangtu;
      case '剑锋金':
        return NaYin.jianfengjin;
      case '山头火':
        return NaYin.shantouhuo;
      case '涧下水':
        return NaYin.jianxiashui;
      case '城头土':
        return NaYin.chengtoutu;
      case '白蜡金':
        return NaYin.bailajin;
      case '杨柳木':
        return NaYin.yangliumu;
      case '泉中水':
        return NaYin.jingquanshui;
      case '屋上土':
        return NaYin.wushangtu;
      case '霹雳火':
        return NaYin.pilihuo;
      case '松柏木':
        return NaYin.songbaimu;
      case '长流水':
        return NaYin.zhangliushui;
      case '沙中金':
        return NaYin.shazhongjin;
      case '山下火':
        return NaYin.shanxiahuo;
      case '平地木':
        return NaYin.pingdimu;
      case '壁上土':
        return NaYin.bishangtu;
      case '金箔金':
        return NaYin.jinbojin;
      case '覆灯火':
        return NaYin.fudenghuo;
      case '天河水':
        return NaYin.tianheshui;
      case '大驿土':
        return NaYin.dayitu;
      case '钗钏金':
        return NaYin.chaichuanjin;
      case '桑柘木':
        return NaYin.sangzhemu;
      case '大溪水':
        return NaYin.daxishui;
      case '沙中土':
        return NaYin.shazhongtu;
      case '天上火':
        return NaYin.tianshanghuo;
      case '石榴木':
        return NaYin.shiliumu;
      case '大海水':
        return NaYin.dahaishui;
      default:
        return NaYin.haizhongjin;
    }
  }
}
