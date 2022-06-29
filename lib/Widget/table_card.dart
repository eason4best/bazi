import 'package:bazi/Model/tiangandizhi.dart';
import 'package:bazi/Enum/table_card_type.dart';
import 'package:flutter/material.dart';

class TableCard extends StatelessWidget {
  TableCard({
    Key? key,
    this.title,
    this.data,
    required this.type,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.isTianGanDiZhi = false,
  }) : super(key: key) {
    nRow = title != null
        ? (title is List<List> ? title.length : 1)
        : (data is List<List> ? data.length : 1);
    int maxNCol = 0;
    if (title != null) {
      if (title is String) {
        nCol = 1;
      } else if (title is! List<List>) {
        nCol = title.length;
      } else {
        title.forEach((t) {
          if (t.length > maxNCol) maxNCol = t.length;
        });
        nCol = maxNCol;
      }
    } else {
      if (data is String) {
        nCol = 1;
      } else if (data is! List<List>) {
        nCol = data.length;
      } else {
        data.forEach((d) {
          if (d.length > maxNCol) maxNCol = d.length;
        });
        nCol = maxNCol;
      }
    }
  }
  final dynamic title;
  final dynamic data;
  final TableCardType type;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final bool isTianGanDiZhi;
  late final int nRow;
  late final int nCol;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Card(
        margin: margin ?? const EdgeInsets.all(0),
        color: (type == TableCardType.largeData ||
                type == TableCardType.mediumData ||
                type == TableCardType.smallData ||
                type == TableCardType.miniData)
            ? Colors.white
            : const Color(0xfffafafa),
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: (type == TableCardType.largeData ||
                  type == TableCardType.mediumData ||
                  type == TableCardType.smallData ||
                  type == TableCardType.miniData)
              ? BorderSide(color: Theme.of(context).dividerColor)
              : BorderSide.none,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Container(
          width: width ?? constraints.maxWidth,
          height: height ?? type.getHeight() * nRow,
          padding: padding,
          child: (nRow == 1 && nCol == 1)
              ? Center(
                  child: Text(
                  title ?? data,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: Colors.black54),
                ))
              : (nRow == 1 && nCol > 1)
                  ? Row(
                      children: (type == TableCardType.largeData ||
                              type == TableCardType.mediumData ||
                              type == TableCardType.smallData ||
                              type == TableCardType.miniData)
                          ? (data as List)
                              .map((d) => Expanded(
                                      child: Center(
                                          child: Text(
                                    d,
                                    style: isTianGanDiZhi
                                        ? Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                                color: TianGanDiZhi
                                                    .getColorFromString(d))
                                        : Theme.of(context).textTheme.subtitle2,
                                  ))))
                              .toList()
                          : (title as List)
                              .map((t) => Expanded(
                                      child: Center(
                                          child: Text(
                                    t,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(color: Colors.black54),
                                  ))))
                              .toList(),
                    )
                  : (nRow > 1 && nCol == 1)
                      ? Column(
                          children: title != null
                              ? (title as List<List>)
                                  .map(
                                    (t) => Expanded(
                                      child: Center(
                                        child: FittedBox(
                                          child: Text(
                                            t[0],
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2!
                                                .copyWith(
                                                    color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList()
                              : (data as List<List>)
                                  .map(
                                    (d) => Expanded(
                                      child: Center(
                                        child: Text(
                                          d[0],
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                        )
                      : Column(
                          children: (data as List<List>)
                              .map((d) => Expanded(
                                    child: Row(
                                      children: d
                                          .map((e) => Expanded(
                                                  child: Center(
                                                      child: Text(
                                                e,
                                                style: isTianGanDiZhi
                                                    ? Theme.of(context)
                                                        .textTheme
                                                        .subtitle2!
                                                        .copyWith(
                                                            color: TianGanDiZhi
                                                                .getColorFromString(
                                                                    e))
                                                    : Theme.of(context)
                                                        .textTheme
                                                        .subtitle2,
                                              ))))
                                          .toList(),
                                    ),
                                  ))
                              .toList(),
                        ),
        ),
      );
    });
  }
}
