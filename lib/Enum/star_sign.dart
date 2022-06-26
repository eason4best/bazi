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
}
