import 'package:bazi/Enum/gender.dart';
import 'package:flutter/material.dart';

class AddRecordModel {
  //姓名
  final String? name;
  //性別
  final Gender? gender;
  //出生日期
  final DateTime? birthDay;

  AddRecordModel({
    this.name,
    this.gender,
    this.birthDay,
  });

  AddRecordModel copyWith({
    String? name,
    Gender? gender,
    DateTime? birthDay,
    TimeOfDay? birthTime,
  }) {
    return AddRecordModel(
      name: name ?? this.name,
      gender: gender ?? this.gender,
      birthDay: birthDay ?? this.birthDay,
    );
  }
}
