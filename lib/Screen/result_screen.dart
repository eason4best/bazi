import 'package:bazi/Enum/results.dart';
import 'package:bazi/Screen/minpan_tab.dart';
import 'package:bazi/Service/minpan.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({
    Key? key,
    required this.birthDay,
  }) : super(key: key);
  final DateTime birthDay;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late MinPan minPan;

  @override
  void initState() {
    _tabController = TabController(
        length: Results.values.length, initialIndex: 1, vsync: this);
    minPan = MinPan(birthDay: widget.birthDay);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('排盤結果'),
        bottom: TabBar(
            controller: _tabController,
            indicator: const UnderlineTabIndicator(),
            tabs: Results.values
                .map((result) => Text(result.toString()))
                .toList()),
      ),
      body: TabBarView(controller: _tabController, children: [
        Container(),
        MinPanTab(minPan: minPan),
        Container(),
        Container(),
        Container(),
      ]),
    );
  }
}
