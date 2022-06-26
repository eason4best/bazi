import 'package:bazi/Service/minpan.dart';

class Bazi {
  Bazi({required this.birthday});
  final DateTime birthday;

  //基本

  //命盤
  MinPan getMinPan() {
    return MinPan(birthDay: birthday);
  }
  //細盤

  //大運

  //流年
}
