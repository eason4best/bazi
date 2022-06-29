enum Zodiac {
  mouse,
  bull,
  tiger,
  rabbit,
  dragon,
  snake,
  horse,
  goat,
  monkey,
  chicken,
  dog,
  pig;

  @override
  String toString() {
    switch (this) {
      case Zodiac.mouse:
        return '鼠';
      case Zodiac.bull:
        return '牛';
      case Zodiac.tiger:
        return '虎';
      case Zodiac.rabbit:
        return '兔';
      case Zodiac.dragon:
        return '龍';
      case Zodiac.snake:
        return '蛇';
      case Zodiac.horse:
        return '馬';
      case Zodiac.goat:
        return '羊';
      case Zodiac.monkey:
        return '猴';
      case Zodiac.chicken:
        return '雞';
      case Zodiac.dog:
        return '狗';
      case Zodiac.pig:
        return '豬';
    }
  }

  factory Zodiac.toZodiac(String value) {
    switch (value) {
      case '鼠':
        return Zodiac.mouse;
      case '牛':
        return Zodiac.bull;
      case '虎':
        return Zodiac.tiger;
      case '兔':
        return Zodiac.rabbit;
      case '龙':
        return Zodiac.dragon;
      case '蛇':
        return Zodiac.snake;
      case '马':
        return Zodiac.horse;
      case '羊':
        return Zodiac.goat;
      case '猴':
        return Zodiac.monkey;
      case '鸡':
        return Zodiac.chicken;
      case '狗':
        return Zodiac.dog;
      case '猪':
        return Zodiac.pig;
      default:
        return Zodiac.mouse;
    }
  }
}
