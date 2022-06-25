import 'package:bazi/Other/results.dart';
import 'package:bazi/Service/minpan.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: Results.values.length, vsync: this);
    MinPan minPan = MinPan(birthday: DateTime(1998, 10, 19, 21));
    print(
        '主星\n年柱:${minPan.zhuXing.yearZhuXing.toString()}, 月柱:${minPan.zhuXing.monthZhuXing.toString()}, 日柱:${minPan.zhuXing.dayZhuXing.toString()}, 時柱:${minPan.zhuXing.hourZhuXing.toString()}');
    print(
        '天干\n年柱:${minPan.ganZhi.yearGanZhi.tianGan.toString()}, 月柱:${minPan.ganZhi.monthGanZhi.tianGan.toString()}, 日柱:${minPan.ganZhi.dayGanZhi.tianGan.toString()}, 時柱:${minPan.ganZhi.hourGanZhi.tianGan.toString()}');
    print(
        '地支\n年柱:${minPan.ganZhi.yearGanZhi.diZhi.toString()}, 月柱:${minPan.ganZhi.monthGanZhi.diZhi.toString()}, 日柱:${minPan.ganZhi.dayGanZhi.diZhi.toString()}, 時柱:${minPan.ganZhi.hourGanZhi.diZhi.toString()}');
    print(
        '藏干\n年柱:${minPan.cangGan.yearCangGan.map((e) => e.toString()).toList()}, 月柱:${minPan.cangGan.monthCangGan.map((e) => e.toString()).toList()}, 日柱:${minPan.cangGan.dayCangGan.map((e) => e.toString()).toList()}, 時柱:${minPan.cangGan.hourCangGan.map((e) => e.toString()).toList()}');
    print(
        '副星\n年柱:${minPan.fuXing.yearFuXing.map((e) => e.toString()).toList()}, 月柱:${minPan.fuXing.monthFuXing.map((e) => e.toString()).toList()}, 日柱:${minPan.fuXing.dayFuXing.map((e) => e.toString()).toList()}, 時柱:${minPan.fuXing.hourFuXing.map((e) => e.toString()).toList()}');
    print(
        '納音\n年柱:${minPan.naYin.yearNaYin.toString()}, 月柱:${minPan.naYin.monthNaYin.toString()}, 日柱:${minPan.naYin.dayNaYin.toString()}, 時柱:${minPan.naYin.hourNaYin.toString()}');
    print(
        '星運\n年柱:${minPan.xingYun.yearXingYun.toString()}, 月柱:${minPan.xingYun.monthXingYun.toString()}, 日柱:${minPan.xingYun.dayXingYun.toString()}, 時柱:${minPan.xingYun.hourXingYun.toString()}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('排盤結果'),
        bottom: TabBar(
            controller: _tabController,
            tabs: Results.values
                .map((result) => Text(result.toString()))
                .toList()),
      ),
    );
  }
}
