import 'package:bazi/Service/minpan.dart';

class Bazi {
  Bazi({required this.birthDay});
  final DateTime birthDay;

  //基本

  //命盤
  MinPan getMinPan() {
    return MinPan(birthDay: birthDay);
  }
  //細盤

  //大運

  //流年
}
