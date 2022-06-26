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
}
