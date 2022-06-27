import 'package:bazi/Enum/table_card_type.dart';
import 'package:bazi/Other/helper_function.dart';
import 'package:bazi/Service/minpan.dart';
import 'package:bazi/Widget/table_card.dart';
import 'package:flutter/material.dart';

class MinPanTab extends StatelessWidget {
  const MinPanTab({
    Key? key,
    required this.minPan,
  }) : super(key: key);
  final MinPan minPan;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                TableCard(
                  title: '日期',
                  type: TableCardType.largeTitle,
                  width: 48,
                ),
                Expanded(
                  child: TableCard(
                    title: const ['時', '日', '月', '年'],
                    type: TableCardType.largeTitle,
                    margin: const EdgeInsets.only(left: 8.0),
                  ),
                )
              ],
            ),
            Row(
              children: [
                TableCard(
                  title: '主星',
                  type: TableCardType.largeTitle,
                  width: 48,
                  margin: const EdgeInsets.only(top: 8.0),
                ),
                Expanded(
                  child: TableCard(
                    data: [
                      minPan.zhuXing.hourZhuXing.toString(),
                      minPan.zhuXing.dayZhuXing.toString(),
                      minPan.zhuXing.monthZhuXing.toString(),
                      minPan.zhuXing.yearZhuXing.toString(),
                    ],
                    type: TableCardType.largeData,
                    margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                  ),
                )
              ],
            ),
            Row(
              children: [
                TableCard(
                  title: const [
                    ['天干'],
                    ['地支'],
                  ],
                  type: TableCardType.largeTitle,
                  width: 48,
                  margin: const EdgeInsets.only(top: 8.0),
                ),
                Expanded(
                  child: TableCard(
                    data: [
                      [
                        minPan.ganZhi.hourGanZhi.tianGan.toString(),
                        minPan.ganZhi.dayGanZhi.tianGan.toString(),
                        minPan.ganZhi.monthGanZhi.tianGan.toString(),
                        minPan.ganZhi.yearGanZhi.tianGan.toString(),
                      ],
                      [
                        minPan.ganZhi.hourGanZhi.diZhi.toString(),
                        minPan.ganZhi.dayGanZhi.diZhi.toString(),
                        minPan.ganZhi.monthGanZhi.diZhi.toString(),
                        minPan.ganZhi.yearGanZhi.diZhi.toString(),
                      ],
                    ],
                    type: TableCardType.largeData,
                    isTianGanDiZhi: true,
                    margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                  ),
                )
              ],
            ),
            Row(
              children: [
                TableCard(
                  title: '藏干',
                  type: TableCardType.largeTitle,
                  width: 48,
                  height: TableCardType.miniData.getHeight() * 3 + 8,
                  margin: const EdgeInsets.only(top: 8.0),
                ),
                Expanded(
                  child: TableCard(
                    data: HelperFunction.transformColumnsToRows([
                      minPan.cangGan.hourCangGan
                          .map((cg) => cg.toString())
                          .toList(),
                      minPan.cangGan.dayCangGan
                          .map((cg) => cg.toString())
                          .toList(),
                      minPan.cangGan.monthCangGan
                          .map((cg) => cg.toString())
                          .toList(),
                      minPan.cangGan.yearCangGan
                          .map((cg) => cg.toString())
                          .toList()
                    ]),
                    type: TableCardType.miniData,
                    isTianGanDiZhi: true,
                    height: TableCardType.miniData.getHeight() * 3 + 8,
                    margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                    padding: const EdgeInsets.symmetric(vertical: 4),
                  ),
                )
              ],
            ),
            Row(
              children: [
                TableCard(
                  title: '副星',
                  type: TableCardType.largeTitle,
                  width: 48,
                  height: TableCardType.miniData.getHeight() * 3 + 8,
                  margin: const EdgeInsets.only(top: 8.0),
                ),
                Expanded(
                  child: TableCard(
                    data: HelperFunction.transformColumnsToRows([
                      minPan.fuXing.hourFuXing
                          .map((fx) => fx.toString())
                          .toList(),
                      minPan.fuXing.dayFuXing
                          .map((fx) => fx.toString())
                          .toList(),
                      minPan.fuXing.monthFuXing
                          .map((fx) => fx.toString())
                          .toList(),
                      minPan.fuXing.yearFuXing
                          .map((fx) => fx.toString())
                          .toList(),
                    ]),
                    type: TableCardType.miniData,
                    height: TableCardType.miniData.getHeight() * 3 + 8,
                    margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                    padding: const EdgeInsets.symmetric(vertical: 4),
                  ),
                )
              ],
            ),
            Row(
              children: [
                TableCard(
                  title: '納音',
                  type: TableCardType.largeTitle,
                  width: 48,
                  margin: const EdgeInsets.only(top: 8.0),
                ),
                Expanded(
                  child: TableCard(
                    data: [
                      minPan.naYin.hourNaYin.toString(),
                      minPan.naYin.dayNaYin.toString(),
                      minPan.naYin.monthNaYin.toString(),
                      minPan.naYin.yearNaYin.toString(),
                    ],
                    type: TableCardType.largeData,
                    margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                  ),
                )
              ],
            ),
            Row(
              children: [
                TableCard(
                  title: '星運',
                  type: TableCardType.largeTitle,
                  width: 48,
                  margin: const EdgeInsets.only(top: 8.0),
                ),
                Expanded(
                  child: TableCard(
                    data: [
                      minPan.xingYun.hourXingYun.toString(),
                      minPan.xingYun.dayXingYun.toString(),
                      minPan.xingYun.monthXingYun.toString(),
                      minPan.xingYun.yearXingYun.toString(),
                    ],
                    type: TableCardType.largeData,
                    margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                  ),
                )
              ],
            ),
            Row(
              children: [
                TableCard(
                  title: '神煞',
                  type: TableCardType.largeTitle,
                  width: 48,
                  height: TableCardType.miniData.getHeight() * 4 + 8,
                  margin: const EdgeInsets.only(top: 8.0),
                ),
                Expanded(
                  child: TableCard(
                    data: const [
                      ['', '', '', ''],
                      ['', '', '', ''],
                      ['', '', '', ''],
                      ['', '', '', ''],
                    ],
                    type: TableCardType.miniData,
                    height: TableCardType.miniData.getHeight() * 4 + 8,
                    margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                    padding: const EdgeInsets.symmetric(vertical: 4),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
