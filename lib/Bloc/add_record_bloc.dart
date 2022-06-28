import 'dart:async';

import 'package:bazi/Enum/gender.dart';
import 'package:bazi/Model/add_record_model.dart';
import 'package:bazi/Screen/result_screen.dart';
import 'package:flutter/material.dart';

class AddRecordBloc {
  final StreamController<AddRecordModel> _streamController = StreamController();
  Stream<AddRecordModel> get stream => _streamController.stream;
  late AddRecordModel _model;
  AddRecordModel get model => _model;
  late TextEditingController nameController;

  final BuildContext context;
  AddRecordBloc({required this.context}) {
    nameController = TextEditingController();
    _model = AddRecordModel(
      name: '',
      gender: Gender.male,
      birthDay: DateTime.now(),
    );
  }

  void updateWith({
    String? name,
    Gender? gender,
    DateTime? birthDay,
    TimeOfDay? birthTime,
  }) {
    _model = _model.copyWith(
      name: name,
      gender: gender,
      birthDay: birthDay,
      birthTime: birthTime,
    );
    _streamController.add(_model);
  }

  String get birthDayString =>
      '${_model.birthDay?.year}年${_model.birthDay?.month}月${_model.birthDay?.day}日';

  String get birthTimeString => '${_model.birthDay?.hour}時';

  Future<void> selectBirthDay() async {
    DateTime? selectedBirthDay = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900, 1, 1),
      lastDate: DateTime(2100, 1, 1),
      confirmText: '確認',
      cancelText: '取消',
      helpText: '選擇出生日期',
    );
    DateTime birthDay = DateTime(selectedBirthDay!.year, selectedBirthDay.month,
        selectedBirthDay.day, _model.birthDay!.hour);
    updateWith(birthDay: birthDay);
  }

  Future<void> selectBirthTime() async {
    TimeOfDay? birthTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    DateTime birthday = DateTime(_model.birthDay!.year, _model.birthDay!.month,
        _model.birthDay!.day, birthTime!.hour);
    updateWith(birthDay: birthday);
  }

  void done() {
    if (nameController.text != '') {
      Navigator.of(context).push(MaterialPageRoute(
          builder: ((context) => ResultScreen(birthDay: _model.birthDay!))));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('請輸入姓名'),
        behavior: SnackBarBehavior.floating,
      ));
    }
  }

  void dispose() {
    nameController.dispose();
    _streamController.close();
  }
}
