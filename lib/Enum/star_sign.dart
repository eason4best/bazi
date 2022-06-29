enum StarSign {
  aries,
  taurus,
  gemini,
  cancer,
  leo,
  virgo,
  lebra,
  scorpio,
  sagittarius,
  capricorn,
  aquarius,
  pisces;

  @override
  String toString() {
    switch (this) {
      case StarSign.aries:
        return '牡羊座';
      case StarSign.taurus:
        return '金牛座';
      case StarSign.gemini:
        return '雙子座';
      case StarSign.cancer:
        return '巨蟹座';
      case StarSign.leo:
        return '獅子座';
      case StarSign.virgo:
        return '處女座';
      case StarSign.lebra:
        return '天秤座';
      case StarSign.scorpio:
        return '天蠍座';
      case StarSign.sagittarius:
        return '射手座';
      case StarSign.capricorn:
        return '摩羯座';
      case StarSign.aquarius:
        return '水瓶座';
      case StarSign.pisces:
        return '雙魚座';
    }
  }

  factory StarSign.toStarSign(String value) {
    switch (value) {
      case '白羊':
        return StarSign.aries;
      case '金牛':
        return StarSign.taurus;
      case '双子':
        return StarSign.gemini;
      case '巨蟹':
        return StarSign.cancer;
      case '狮子':
        return StarSign.leo;
      case '处女':
        return StarSign.virgo;
      case '天秤':
        return StarSign.lebra;
      case '天蝎':
        return StarSign.scorpio;
      case '射手':
        return StarSign.sagittarius;
      case '摩羯':
        return StarSign.capricorn;
      case '水瓶':
        return StarSign.aquarius;
      case '双鱼':
        return StarSign.pisces;
      default:
        return StarSign.aries;
    }
  }
}
