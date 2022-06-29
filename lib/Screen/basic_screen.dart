import 'package:bazi/Enum/table_card_type.dart';
import 'package:bazi/Service/basic.dart';
import 'package:bazi/Widget/table_card.dart';
import 'package:flutter/widgets.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key, required this.basic}) : super(key: key);
  final Basic basic;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TableCard(data: '張逸昇', type: TableCardType.smallData),
            Row(
              children: [
                TableCard(
                  title: const [
                    ['西曆'],
                    ['農曆'],
                    ['生肖'],
                    ['節氣'],
                  ],
                  type: TableCardType.mediumTitle,
                  width: 40,
                  margin: const EdgeInsets.only(top: 8.0),
                ),
                Expanded(
                  child: TableCard(
                    data: [
                      [
                        '${basic.birthDay.year}年${basic.birthDay.month}月${basic.birthDay.day}日 ${basic.birthDay.hour}時'
                      ],
                      [
                        '${basic.lunarBirthDay.getYear()}年${basic.lunarBirthDay.getMonth()}月${basic.lunarBirthDay.getDay()}日 ${basic.lunarBirthDay.getHour()}時'
                      ],
                      [basic.zodiac.toString()],
                      [
                        basic.jieQis.previousJieQi.toString(),
                        basic.jieQis.nextJieQi.toString()
                      ],
                    ],
                    type: TableCardType.mediumData,
                    margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                TableCard(
                  title: const [
                    ['星座'],
                    ['二十八\n星宿'],
                    ['空亡'],
                    ['命宮'],
                    ['胎元'],
                    ['胎息'],
                    ['身宮'],
                  ],
                  type: TableCardType.mediumTitle,
                  width: 40,
                  margin: const EdgeInsets.only(top: 8.0),
                ),
                Expanded(
                  child: TableCard(
                    data: const [
                      [],
                      [],
                      [],
                      [],
                      [],
                      [],
                      [],
                    ],
                    type: TableCardType.mediumData,
                    margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                  ),
                ),
              ],
            ),
            TableCard(
              data: '袁天罡稱骨',
              type: TableCardType.smallData,
              margin: const EdgeInsets.only(top: 8.0),
            ),
            Row(
              children: [
                TableCard(
                  title: const [
                    ['重量'],
                    ['評語'],
                  ],
                  type: TableCardType.largeTitle,
                  width: 40,
                  margin: const EdgeInsets.only(top: 8.0),
                ),
                Expanded(
                  child: TableCard(
                    data: const [
                      [''],
                      [''],
                    ],
                    type: TableCardType.largeData,
                    margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                  ),
                ),
              ],
            ),
            TableCard(
              data: '五行信息',
              type: TableCardType.smallData,
              margin: const EdgeInsets.only(top: 8.0),
            ),
            Row(
              children: [
                TableCard(
                  title: const [
                    ['命主\n屬性'],
                    ['參考\n用神'],
                    ['參考\n忌神'],
                  ],
                  type: TableCardType.smallTitle,
                  width: 40,
                  margin: const EdgeInsets.only(top: 8.0),
                ),
                Expanded(
                  child: TableCard(
                    data: const [
                      [''],
                      [''],
                      [''],
                    ],
                    type: TableCardType.smallData,
                    margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                  ),
                ),
              ],
            ),
            TableCard(
              data: '五行分數',
              type: TableCardType.smallData,
              margin: const EdgeInsets.only(top: 8.0),
            ),
            Row(
              children: [
                TableCard(
                  title: const [
                    ['天運\n五行'],
                    ['木'],
                    ['火'],
                    ['土'],
                    ['金'],
                    ['水'],
                  ],
                  type: TableCardType.smallTitle,
                  width: 40,
                  margin: const EdgeInsets.only(top: 8.0),
                ),
                Expanded(
                  child: TableCard(
                    data: const [
                      [''],
                      [''],
                      [''],
                      [''],
                      [''],
                      [''],
                    ],
                    type: TableCardType.smallData,
                    margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
