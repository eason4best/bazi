enum TableCardType {
  //高度為48
  largeTitle,
  largeData,
  //高度為40
  mediumTitle,
  mediumData,
  //高度為32
  smallTitle,
  smallData,
  //高度為24
  miniTitle,
  miniData;

  double getHeight() {
    switch (this) {
      case TableCardType.largeTitle:
        return 48.0;
      case TableCardType.largeData:
        return 48.0;
      case TableCardType.mediumTitle:
        return 40.0;
      case TableCardType.mediumData:
        return 40.0;
      case TableCardType.smallTitle:
        return 32.0;
      case TableCardType.smallData:
        return 32.0;
      case TableCardType.miniTitle:
        return 24.0;
      case TableCardType.miniData:
        return 24.0;
    }
  }
}
